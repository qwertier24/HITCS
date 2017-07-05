class Time {
  int hrs, mins, secs;
  
  Time() {
    hrs = 0;
    mins = 0;
    secs = 0;
  }
  
  Time(int hh, int mm, int ss) { 
    hrs = constrain(hh, 0, 23); 
    // validation; Constrains a value
    // not to exceed a maximum and minimum value.
    // if out of bound, assign the min or the max
    mins = constrain(mm, 0, 59);
    secs = constrain(ss, 0, 59);
  }
  
  Time(int hh, int mm) {
    hrs = constrain(hh, 0, 23); //validation
    mins = constrain(mm, 0, 59);
    secs = 0;
  }

  
  Time(int hh) {
    hrs = constrain(hh, 0, 23); //validation
    mins = 0;
    secs = 0;
  }
  
  void display() {
    if (hrs < 10) 
      print("0" + hrs + ":");
    else 
      print(hrs + ":");
    
    if (mins < 10) 
      print("0" + mins + ":");
    else 
      print(mins + ":");
    
    if (secs < 10) 
      print("0" + secs);
    else 
      print(secs);  
    
    println();
  }

  boolean check_time(int hh, int mm, int ss) {
    return hh == hrs && mins == mm && secs == ss;
  }

}


