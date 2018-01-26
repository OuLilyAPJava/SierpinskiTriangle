public void setup()
{

}
public void draw()
{
  sierpinski(0, 100, 100);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20)
  {
    triangle(x, y, x + len, y, x + len/2, y + len);
  }else
  {
    triangle(x, y, x + len/2, y, x + len/4, y + len/2);
    sierpinski(x + len/2, y, len);
    sierpinski(x + len/4, y - len/4, len);
  }
}