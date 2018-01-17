#include <inc/assert.h>

#include <kern/env.h>
#include <kern/pmap.h>
#include <kern/monitor.h>


// Choose a user environment to run and run it.
void
sched_yield(void)
{
	// Implement simple round-robin scheduling.
	// Search through 'envs' for a runnable environment,
	// in circular fashion starting after the previously running env,
	// and switch to the first such environment found.
	// It's OK to choose the previously running env if no other env
	// is runnable.
	// But never choose envs[0], the idle environment,
	// unless NOTHING else is runnable.

	// LAB 4: Your code here.
	uint32_t env_idx , n ;
	// if curenv's time slice has used up
	if (curenv) {
		env_idx = curenv - envs + 1 ;
	} else {
		// there's no env running
		env_idx = 1 ;
	}
	
	for (n = 0; n < NENV - 1 ; ++n) {
		if (envs[env_idx].env_status == ENV_RUNNABLE) {
			env_run(&envs[env_idx]) ;
			return ;
		}
		++env_idx ;
		if (env_idx == NENV) {
			env_idx = 1 ;
		}
	}


	// Run the special idle environment when nothing else is runnable.
	if (envs[0].env_status == ENV_RUNNABLE)
		env_run(&envs[0]);
	else {
		cprintf("Destroyed all environments - nothing more to do!\n");
		while (1)
			monitor(NULL);
	}
}
