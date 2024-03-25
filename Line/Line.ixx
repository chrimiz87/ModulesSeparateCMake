export module Line;

export import Point;

export class Line{
public:
  Line();
  Line(Point a, Point b);
  void print();

private:
  Point m_a;
  Point m_b;
};