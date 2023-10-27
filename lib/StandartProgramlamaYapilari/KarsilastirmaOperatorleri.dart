void main()
{
  int s1 = 60;
  int s2 = 50;

  int y1 = 70;
  int y2 = 80;
  print("s1: $s1 s2: $s2 y1: $y1 y2: $y2");
  print("s1 == s2 : ${s1 == s2}");
  print("s1 != s2 : ${s1 != s2}");
  print("s1 > s2 : ${s1 > s2}");
  print("s1 >= s2 : ${s1 >= s2}");
  print("s1 < s2 : ${s1 < s2}");
  print("s1 <= s2 : ${s1 <= s2}");

  print("s1 > s2 || y1 > y2 : ${s1 > s2 || y1 > y2}");
  print("s1 > s2 && y1 > y2 : ${s1 > s2 && y1 > y2}");
}