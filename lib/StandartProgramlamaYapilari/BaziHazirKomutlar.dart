import 'dart:math';

void main()
{
  int min = 5;
  int max = 10;
  var r = Random();
  int rastgeleSayi = min + r.nextInt((max-min) +1); // 5 - 10
  print(rastgeleSayi);

  double x = 6.5;
  int c = x.ceil();
  print("c: $c");

  int f = x.floor();
  print("f : $f");

  double s = sqrt(x);
  print("s : $s");
  
  int a = -19;
  int m = a.abs();
  print("m: $m");
  
  var p = pow(2, 3);
  print("p : $p");
}


