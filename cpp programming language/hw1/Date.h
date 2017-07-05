#ifndef DATE_H
#define DATE_H

class Date{
 protected:
  int year, month, day;
 public:
  Date(int _year = 1970, int _month = 1, int _day = 1);
  bool validateDate(int _year, int _month, int _day);  // Validate the date
  void setDate(int _year, int _month, int _day);
  void showDate();
  int getYear();
  int getMonth();
  int getDay();
};

#endif
