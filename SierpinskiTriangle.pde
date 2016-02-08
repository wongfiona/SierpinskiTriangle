public void setup()
{
  size(600, 605);
  background(200);
  stroke(255);
}
public void draw()
{
  sierpinski(0, 600, 600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 70)
  {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else 
  {
    fill(0, 200, 255, 3);
    sierpinski(x, y, len/2);
    fill(0, 255, 200, 3);
    sierpinski(x+len/2, y, len/2);
    fill(100, 200, 255, 3);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
