class Point
{
  public:
//  Point();
//  ~Point();
  void SetX(int x) {_x = x; }
  void SetY(int y) {_y = y; }
  int GetX() const {return _x;}
  int GetY() const {return _y;}

  private:
  int _x;
  int _y;
};

