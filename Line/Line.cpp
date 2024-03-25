module Line;

import <iostream>;

Line::Line() {
  std::cout << " creating default line " << std::endl;
}

Line::Line(Point a, Point b) : m_a(a), m_b(b) {
  std::cout << " creating specific line " << std::endl;
}

void Line::print(){
  std::cout << " point a " << m_a.getx() << " " << m_a.gety()
	    << std::endl
	    << " point b " << m_b.getx() << " " << m_b.gety()
	    << std::endl;
}
