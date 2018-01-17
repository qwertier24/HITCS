// implement fork from user space

#include <inc/string.h>
#include <inc/lib.h>

// PTE_COW marks copy-on-write page table entries.
// It is one of the bits explicitly allocated to user processes (PTE_AVAIL).
#define PTE_COW		0x800

//
// Custom page fault handler - if faulting page is copy-on-write,
// map in our own private writable copy.
//
static void
pgfault(struct UTrapframe *utf)
{
	void *addr = (void *) utf->utf_fault_va;
	uint32_t err = utf->utf_err;
	int r;

	// Check that the faulting access was (1) a write, and (2) to a
	// copy-on-write page.  If not, panic.
	// Hint:
	//   Use the read-only page table mappings at vpt
	//   (see <inc/memlayout.h>).

	// LAB 4: Your code here.
	if ((err & FEC_WR) && (vpt[VPN(addr)] & PTE_COW)) {

	// Allocate a new page, map it at a temporary location (PFTEMP),
	// copy the data from the old page to the new page, then move the new
	// page to the old page's address.
	// Hint:
	//   You should make three system calls.
	//   No need to explicitly delete the old page's mapping.

	// LAB 4: Your code here.
		// Allocate a new page, map it at a temporary location (PFTEMP),
		if ((r = sys_page_alloc(0, PFTEMP, PTE_P | PTE_U | PTE_W)) < 0) 
			panic ("sys_page_alloc: %e\n", r) ;
		// copy the data from the old page to the new page,
		uintptr_t rounded = ROUNDDOWN((uintptr_t)addr, PGSIZE) ;
		memmove(PFTEMP, (void *)rounded, PGSIZE) ;
		if ((r = sys_page_map(0, PFTEMP, 0, (void *)rounded, 
			PTE_P | PTE_U | PTE_W)))
			panic("sys_page_map: %e\n", r) ;
		if ((r = sys_page_unmap(0, PFTEMP))) 
			panic("sys_page_unmap: %e\n", r) ;
		return ;		
	}

	panic("pgfault err\n");
}

//
// Map our virtual page pn (address pn*PGSIZE) into the target envid
// at the same virtual address.  If the page is writable or copy-on-write,
// the new mapping must be created copy-on-write, and then our mapping must be
// marked copy-on-write as well.  (Exercise: Why we need to mark ours
// copy-on-write again if it was already copy-on-write at the beginning of
// this function?)
//
// Returns: 0 on success, < 0 on error.
// It is also OK to panic on error.
// 
static int
duppage(envid_t envid, unsigned pn)
{
	int r;

	// LAB 4: Your code here.
	int ptx = vpt[pn] ;
	void * addr = (void *)(pn << PGSHIFT) ;
	int perm = ptx & PTE_USER ;
	// If the page is writable or copy-on-write,
	// the new mapping must be created copy-on-write, and then our mapping must be
	// marked copy-on-write as well.
	if ((perm & PTE_W) || (perm & PTE_COW)) {
		perm &= ~PTE_W ;
		perm |= PTE_COW ;
		if ((r = sys_page_map(0, addr, envid, addr, perm)))
			return r ;
		return sys_page_map(0, addr, 0, addr, perm) ;
	}
	// readonly
	return sys_page_map(0, addr, envid, addr, perm) ;
}

//
// User-level fork with copy-on-write.
// Set up our page fault handler appropriately.
// Create a child.
// Copy our address space and page fault handler setup to the child.
// Then mark the child as runnable and return.
//
// Returns: child's envid to the parent, 0 to the child, < 0 on error.
// It is also OK to panic on error.
//
// Hint:
//   Use vpd, vpt, and duppage.
//   Remember to fix "env" in the child process.
//   Neither user exception stack should ever be marked copy-on-write,
//   so you must allocate a new page for the child's user exception stack.
//
envid_t
fork(void)
{
	// LAB 4: Your code here.
	// Set up our page fault handler appropriately.
	set_pgfault_handler(pgfault) ;
	// Create a child.
	envid_t envid ;
	if ((envid = sys_exofork()) < 0) 
		panic("sys_exofork: %e", envid) ;
		
	// child
	if (0 == envid) {
		// fix "env" in the child process.
		env = envs + ENVX(sys_getenvid()) ;
		return 0 ;
	}
	
	// parent
	int ret ;
	int pdx, ptx ;
	uint32_t pn = 0 ;
	// Copy our address space
	for (pdx = 0 ; pdx < VPD(UTOP); ++pdx) {
		// skip blank PDEs
		if (0 == vpd[pdx]) {
			pn += NPTENTRIES ;
			continue ;
		}
		for (ptx = 0 ; ptx < NPTENTRIES; ++ptx, ++pn) {
			// skip blank PTEs
			if (0 == vpt[pn]) continue ;
			// Neither user exception stack should ever be marked copy-on-write,
			if (pn == VPN(UXSTACKTOP) - 1) continue ;
			if((ret = duppage(envid, pn))) 
				panic("duppage: %e\n", ret) ;
		}
		
	}
	// so you must allocate a new page for the child's user exception stack.
	if ((ret = sys_page_alloc(envid, (void *)(UXSTACKTOP - PGSIZE),
						 PTE_P | PTE_U | PTE_W)))
		panic("sys_page_alloc: %e\n", ret);
	//page fault handler setup to the child.
	sys_env_set_pgfault_upcall(envid, env->env_pgfault_upcall);	
	// Mark the child as runnable and return.
	if ((ret = sys_env_set_status(envid, ENV_RUNNABLE)))
		panic("sys_env_set_status: %e\n", ret);
	
	return envid ;
}

// Challenge!
int
sfork(void)
{
	panic("sfork not implemented");
	return -E_INVAL;
}
