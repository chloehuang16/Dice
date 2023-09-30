void setup(){
  size(500,500);
  noLoop();
}
  void draw(){
   background(0);
   Die bob = new Die(200,200);
   bob.roll();
   bob.show();
   }
  void mousePressed(){
    redraw();
  }
class Die {
  int rolled;
  int myX, myY;
  Die(int x, int y){
    rolled = 1;
    myX= x;
    myY = y;
  }  
  void roll(){
    rolled = (int)(Math.random()*6)+1;
  }
  void show() {
    fill(255);
    rect(myX, myY, 100, 100);
    fill(255,0,0);
    if (rolled == 1){
      ellipse(250,250,20,20);
    }
    else if (rolled == 2){
      ellipse(225, 275, 20,20);
      ellipse(275,225,20,20);
    }
    else if (rolled == 3){
      ellipse(225, 275,20,20);
      ellipse(250,250,20,20);
      ellipse(275,225,20,20);
    }
    else if (rolled == 4){
     ellipse(225,275,20,20);
     ellipse(225,225,20,20);
     ellipse(275,275,20,20);
     ellipse(275,225,20,20);
    }
    else if(rolled == 5){
     ellipse(225,275,20,20);
     ellipse(225,225,20,20);
     ellipse(275,275,20,20);
     ellipse(275,225,20,20);
     ellipse(250,250,20,20);
    }
    else {
     ellipse(225,275,20,20);
     ellipse(225,225,20,20);
     ellipse(275,275,20,20);
     ellipse(275,225,20,20);
     ellipse(225,250,20,20);
     ellipse(275,250,20,20);
    }
  }
}

