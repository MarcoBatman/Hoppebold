void setup(){
size(1000,1000);
}
Ball ball1 = new Ball(500,0,20);
void draw(){
clear();
  

ball1.drawball();
ball1.update();
}
