void display(int[] a) {
  for ( int i = 0; i < a.length; i++ ) {
    print(a[i] + ",");
  }
  print('\n');
}

boolean inAscending(int[] a) {
  for ( int i = 1; i < a.length; i++ ) {
    if ( a[i] <= a[i - 1] )
      return false;
  }
  return true;
}

void setup() {
  int[] a = {1,2,3,4,4};
  display(a);
  print(inAscending(a) + "\n");
  a = new int[]{1,2,3,4,5};
  display(a);
  print(inAscending(a) + "\n");
}
