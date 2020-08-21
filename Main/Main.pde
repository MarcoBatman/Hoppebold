
PImage img;

void setup(){
size(1200,600);
img = loadImage("Clouds.jpg");

}
Ball ball1 = new Ball(500,0,20);
void draw(){
clear();
image(img, 0, 0);      //background

  

ball1.drawball();
ball1.update();
}
