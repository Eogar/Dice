void setup()
{
  noLoop();
  size(396,450);
}
void draw()
{
  //your code here
  background(220,125,175);
  int total = 0;
  for(int y=0; y<=400; y+=25){
    for(int x=0;x<=400; x+=25){
      Die z = new Die(x,y);
      z.show();
      total+=z.n;
    }
  }
  fill(30,15,15);
  text("Total of all rolls: " + total, 125, 440);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int n;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    //your code here
    n = (int)(Math.random()*6)+1;
  }
  void show()
  {
    //your code here
    stroke(30,15,15);
    fill((int)(Math.random()*245)+100,(int)(Math.random()*245)+100,(int)(Math.random()*245)+100);
    rect(myX,myY,20,20);
    fill(30,15,15);
    if (n==1){
      ellipse(myX+10,myY+10,2,2);
    }
    if (n==2){
      ellipse(myX+5,myY+5,2,2);
      ellipse(myX+15,myY+15,2,2);
    }
    if (n==3){
      ellipse(myX+5,myY+5,2,2);
      ellipse(myX+15,myY+15,2,2);
      ellipse(myX+10,myY+10,2,2);
    }
    if (n==4){
      ellipse(myX+5,myY+5,2,2);
      ellipse(myX+5,myY+15,2,2);
      ellipse(myX+15,myY+5,2,2);
      ellipse(myX+15,myY+15,2,2);  
    }
    if (n==5){
      ellipse(myX+5,myY+5,2,2);
      ellipse(myX+5,myY+15,2,2);
      ellipse(myX+15,myY+5,2,2);
      ellipse(myX+15,myY+15,2,2);  
      ellipse(myX+10,myY+10,2,2);
    }
    if (n==6){
      ellipse(myX+5,myY+5,2,2);
      ellipse(myX+5,myY+10,2,2);
      ellipse(myX+5,myY+15,2,2);
      ellipse(myX+15,myY+5,2,2);
      ellipse(myX+15,myY+10,2,2);
      ellipse(myX+15,myY+15,2,2);
    }
  }
}
