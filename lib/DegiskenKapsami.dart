void main()
{
  Deneme deneme = new Deneme();
  print(deneme.Topla());
}

class Deneme
{
 int x = 1; //Global degisken
 int y = 23; //Global degisken

 int Topla()
 {
   int z = 3; // Local degisken
   return x+y;
 }
}