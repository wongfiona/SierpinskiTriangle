int n = 500;
public void setup()
{
  size(600, 601);
  background(200);
  stroke(255);
  //strokeWeight(0.1);
}
public void draw()
{
  sierpinski(0, 600, 600);
}
public void mousePressed()//optional
{
  background(200);
  if (mouseButton == LEFT)
    n = n / 2;
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= n)
  {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else 
  {
    fill(110, 250, 255); //blue
    sierpinski(x, y, len/2);
    fill(130, 250, 200); //green
    sierpinski(x+len/2, y, len/2);
    fill(200, 200, 255); //purple
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
