    int r = (int)(Math.random()*256);
    int g = (int)(Math.random()*256);
    int b = (int)(Math.random()*56)+200;
public void setup()
{
  size(800, 800);
  background(0);
}
public void draw()
{
  SkullFractalPattern(width/2+100, width/2+200, (float)600);
}

public void SkullFractalPattern(int x, int y, float len) 
{
    fill(r,g,b);
    triangle(x, y-len/2, x+2*len/2, y-len/2, x+len/2,y+len/2);
    if(len>20){
      for (int i = 2; i <= 64; i *= 2) {
        SkullFractalPattern(x - (int)len/i, y, len/i);
        SkullFractalPattern(x, y-(int)len/i, len/i);
        SkullFractalPattern(x, y, len/i);
    }
}
}
