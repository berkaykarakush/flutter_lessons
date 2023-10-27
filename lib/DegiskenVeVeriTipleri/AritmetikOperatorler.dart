void main()
{
  //Dairenin alani
  final pi = 3.14;
  var r = 2.0;
  var alan = pi * r * r;
  print("Daire alani: $alan");

  // f = m * a
  double m = 12.5;
  var a = 10.0;
  var f = m * a;
  print("F : $f");

  // ornek  x = ((v + v0) / 2) * t
  double v = 12.7;
  double v0 = 23.56;
  double t = 3.5;
  double x1 = ((v + v0)/2)*t;
  print("x1 : $x1");

  // ornek x = vo * t + (a * t * t) / 2
  double a1 = 3.2;
  double x2 = (v0 * t) + (a1 * t * t) /2;
  print("x2: $x2");

  //Kisaltma
  double y = 10;
  y = y + 2;
  print(y);
  y += 2;
  print(y);

  y -= 2;
  print(y);

  y *= 2;
  print(y);

  y /= 2;
  print(y);

  y %= 2;
  print(y);

  y++;
  print(y);

  y--;
  print(y);
  
}