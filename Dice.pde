void setup(){
  size(500,500);
  noLoop();
}
void draw(){
  background(0);
  for (int y = 0; y<5; y++){
    for(int x = 0; x<5; x++){
      Die bob = new Die(x*100,y*100);
      bob.show();
      bob.roll();
    }
  }
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
      ellipse(myX + 100,myY + 100,20,20);
    }
    else if (rolled == 2){
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX +100, myY = 100, 20,20);
    }
    else if (rolled == 3){
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX + 100, myY =100, 20,20);
    }
    else if (rolled == 4){
       ellipse(myX + 100, myY =100, 20,20);
       ellipse(myX + 100, myY =100, 20,20);
       ellipse(myX + 100, myY =100, 20,20);
       ellipse(myX + 100, myY =100, 20,20);
    }
    else if(rolled == 5){
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX + 100, myY =100, 20,20);
    }
    else {
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX + 100, myY =100, 20,20);
      ellipse(myX + 100, myY =100, 20,20);
    }
  }
}

