int minLen = 20;
public void setup()
{
  background(0);
  size(500, 500);
}
public void draw()
{
  sierpinski(0, 500 + minLen/4 - minLen, 500);
  if(mouseX <= 250 && minLen <= 20)
  {
    minLen += 20;
  }
  if (mouseX > 250 && minLen > 20)
  {
    minLen -= 20;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= minLen)
  {
    fill((int)(Math.random()* 255), 175, 255);
    triangle(x, y + len, x + len, y + len, x + len/2, y);
  } else
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}