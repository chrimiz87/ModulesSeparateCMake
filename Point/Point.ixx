export module Point;

export class Point{

public:
  Point();
  Point(double x, double y);
  double getx();
  double gety();

private:
  double m_x;
  double m_y;
};

