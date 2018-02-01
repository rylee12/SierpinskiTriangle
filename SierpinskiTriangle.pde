public void setup()
{
  //fill((int)((Math.random()*255) + 1), (int)((Math.random()*255) + 1), (int)((Math.random()*255) + 1));
  size(500, 500);
  sierpinski(50, 400, 400);
}
public void draw()
{
  
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len < 30)
  {
    fill((int)((Math.random()*255) + 1), (int)((Math.random()*255) + 1), (int)((Math.random()*255) + 1));
    triangle(x, y, x + len/2, y - len, x + len, y);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
    fill((int)((Math.random()*255) + 1), (int)((Math.random()*255) + 1), (int)((Math.random()*255) + 1));
    ellipse(x + len/2, y - len/3, len/4, len/9);
    fill(0, 0, 0);
    ellipse(x + len/2, y - len/3, len/10, len/10);
  }
}