void setup()
{
  noStroke();
  size(500,500);
  noLoop();
  rectMode(CENTER);
}
  int sum;
void draw()
{
  sum = 0;
    background(0);
  for(int y = 50; y < 500; y+=50){
     for(int x = 50; x < 500;x+=50){
      Die sis = new Die(x,y);
      sis.roll();
      sis.show();
      sum += sis.num;
     }
  }
  fill(255);
  text("BRO LOOK IT'S YO TOTAL:  " + sum + " !", 155,17);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX , myY, num;

  Die(int x, int y)
  {

    myX = x;
    myY = y;
  }
  void roll()
  {

    num = (int)(Math.random()*6)+1;
  }
  void show()
  {

  fill(237);
    rect(myX,myY,50,50,20);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    if (num == 1){
      ellipse(myX,myY, 10,10);
    }else if(num == 2){
      ellipse(myX-10,myY+10, 10,10);
      ellipse(myX+10,myY-10, 10,10);
    }else if(num == 3){
      ellipse(myX,myY, 10,10);
      ellipse(myX-10,myY+10, 10,10);
      ellipse(myX+10,myY-10, 10,10);
    }else if(num == 4){
      ellipse(myX-10,myY+10, 10,10);
      ellipse(myX+10,myY-10, 10,10);
      ellipse(myX-10,myY-10, 10,10);
      ellipse(myX+10,myY+10, 10,10);
    }else if(num == 5){
      ellipse(myX,myY, 10,10);
      ellipse(myX-10,myY+10, 10,10);
      ellipse(myX+10,myY-10, 10,10);
      ellipse(myX-10,myY-10, 10,10);
      ellipse(myX+10,myY+10, 10,10);
    }else{
      ellipse(myX-10,myY+15, 10,10);
      ellipse(myX+10,myY-15, 10,10);
      ellipse(myX-10,myY-15, 10,10);
      ellipse(myX+10,myY+15, 10,10);
      ellipse(myX-10,myY, 10,10);
      ellipse(myX+10,myY, 10,10);
    }
  }
}