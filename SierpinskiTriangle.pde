public void setup()
{
  size(600, 605);
  background(200);
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
    stroke(255);
    fill((int)(Math.random()*10)+100, (int)(Math.random()*50)+190, (int)(Math.random()*60)+190);
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else 
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
