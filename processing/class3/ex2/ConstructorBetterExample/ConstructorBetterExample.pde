Time t;

boolean equal(Time t1, Time t2) {
  return t1.hrs == t2.hrs && t1.mins == t2.mins && t1.secs == t2.secs;
}
void setup() {
  t = new Time();
  t.display();
  
  t = new Time(23, 59, -90);
  t.display(); 
 
  t = new Time(8, 45);
  t.display(); 
 
  t = new Time(6);
  t.display();

  Time t2;
  t2 = new Time(6);
  println(equal(t2, t));
  println(t.check_time(6,0,0));
}
