
float ballSize=20;


PImage img;

void setup(){
size(1200,600);
img = loadImage("Clouds.jpg");

}
ArrayList<Ball> balllist = new ArrayList<Ball>();
void draw(){
clear();
background(img);      //background
for(int i=0;i<balllist.size();i++){
  

balllist.get(i).drawball();
balllist.get(i).update();
}
}

void mousePressed(){
balllist.add(new Ball(mouseX,round(random(ballSize/2,130-(ballSize/2))),ballSize));


}
