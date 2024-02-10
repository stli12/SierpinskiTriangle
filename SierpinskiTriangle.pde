public int bigger;
public void setup(){
   size(700,700);
   bigger = 1;
}
public void draw(){
  background(0);
  sierpinski(50,650, 600, bigger);
}
public void keyPressed(){
  if(key == 'w')
  {
    bigger = bigger+1;
      if(bigger > 8)
        bigger=1;
  }
  if (key == 's')
  {
    bigger = bigger-1;
    if(bigger<1)
      bigger = 8;
  }

}
public void sierpinski(int x, int y, int len, int size) {
  if(size < 2){
    triangle(x, y, x + (len/2), y - len, x +len, y );
  }
  else{
    fill(255);
    sierpinski(x, y, len/2, size-1);
    sierpinski(x + len/2, y , len/2, size-1);
    sierpinski(x + len/4, y - len/2, len/2, size-1);
  }
}
