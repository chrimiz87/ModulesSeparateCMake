module Point;

import <iostream>;

Point::Point() : m_x(0), m_y(0) {
  std::cout << " creating a default point " << std::endl;
}

Point::Point(double x, double y) : m_x(x), m_y(y) {
  std::cout << " creating a specific point " << std::endl;
}

double Point::getx(){
  return m_x;
}

double Point::gety(){
  return m_y;
}

