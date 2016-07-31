#include "Date.h"

bool Date::validateDate(int _year, int _month, int _day){
  if (1 <= _month && _month <= 12) {
    if (_month == 2) {
      if (_year % 4 == 0 && (_year % 100 != 0 || _year % 400 == 0))
        return 1 <= _day && _day <= 29;
      else
        return 1 <= _day && _day <= 28;
    } else {
      switch (_month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
          return 1 <= _day && _day <= 31;
          break;
        case 4:
        case 6:
        case 9:
        case 11:
          return 1 <= _day && _day <= 30;
          break;
      }
    }
  } else {
    return false;
  }
}

Date::Date(int _year, int _month, int _day) {
  if (!validateDate(_year, _month, _day)) {
    year = 1970;
    month = 1;
    day = 1;
    throw "Invalid Dates";
  } else {
    year = _year;
    month = _month;
    day = _day;
  }
}

void Date::setDate(int _year, int _month, int _day){
  if (!validateDate(_year, _month, _day)) {
    throw "Invalid Dates";
  } else {
    year = _year;
    month = _month;
    day = _day;
  }
}

void Date::showDate() {
  printf("%04d-%02d-%02d\n", year, month, day);
}

int Date::getYear() {
  return year;
}

int Date::getMonth() {
  return month;
}

int Date::getDay() {
  return day;
}
