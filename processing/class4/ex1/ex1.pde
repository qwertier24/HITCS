// void draw() {
// }
void display(char[] a) {
  for ( int i = 0; i < a.length; i++ ) {
    print(a[i]);
  }
  print('\n');
}
void displayReverse(char[] a) {
  for ( int i = a.length - 1; i >= 0; i-- ) {
    print(a[i]);
  }
  print('\n');
}
void setup() {
  char[] a = {'a','b','c','d','e'};
  display(a);
  displayReverse(a);
}
