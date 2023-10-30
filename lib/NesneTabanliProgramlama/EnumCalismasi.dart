void main()
{
  UcretAl(KonserveBoyut.Buyuk);
}

void UcretAl(KonserveBoyut boyut)
{
  switch(boyut)
  {
    case KonserveBoyut.Kucuk : {print(20 * 30);}
      break;
    case KonserveBoyut.Orta : {print(30 * 30);}
          break;
    case KonserveBoyut.Buyuk : {print(40 * 30);}
      break;
    default: {print("Yanlis boyut");}
      break;
  }
}

enum KonserveBoyut
{
  Kucuk,
  Orta,
  Buyuk
}