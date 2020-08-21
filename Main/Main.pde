
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
balllist.add(new Ball(mouseX,69,20));


}
