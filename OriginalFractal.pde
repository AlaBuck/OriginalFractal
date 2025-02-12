public void setup()
{
  size(750, 750);
  background(0);
}
public void draw()
{
  rose(width/2,width/2,width);
}
public void mouseDragged()//optional
{

}
public void rose(int x, int y, int len) 
{
  if(len<(0.0000000000000000000000001)){
    ellipse(x, y, 20, 20);
    //triangle(x, y, x+len, y, x+(len/2), y+len);
  } else {
       fill(250,50,50); 
   //    rose(x,y,4*len/5);
       ellipse(x, y, len, len);
   //    ellipse(x/4,y/4,len,len);
   //    ellipse(3*x/4,3*x/4,len,len);
      rose(x,y,4*len/5); 
       //sierpinski(x+len/2, y, len/2);
       //sierpinski(x+len/4,y+len/2,len/2);
  }
}
