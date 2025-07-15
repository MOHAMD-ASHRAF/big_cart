mixin A{
  void a() => print('a');
}

mixin B{
  void b() => print('b');
}

class Total with A , B{
}
void main(){

  Total total = Total();
  total.a();
  total.b();
}