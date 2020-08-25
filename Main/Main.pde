float ballSize=10;
//Cloud Cloud = new Cloud();
//The X and Y cordinates for a cloud
int[] cloudX = { 200, 700, 1000, 400, 450};
int[] cloudY = { 250, 300, 350, 500, 200};
boolean oneBall = false;

void setup() {
  size(1200, 600);
  //frameRate(15);
  for(int i =0;i<cloud.length;i++)
  cloud[i] = new Cloud(cloudX[i]+40, cloudY[i],cloudX[i]+20, cloudY[i]-30,cloudX[i], cloudY[i]);
  }
  
ArrayList<Ball> balllist = new ArrayList<Ball>();
Cloud[] cloud = new Cloud[5];

void draw() {
  clear();
  colorMode(HSB, 100);
  background(color(50, 55, 100));
  textSize(32);
  fill(199, 132, 225);
  //informs how you erase all the balls
  text("Click R to erase all the balls", 10, 30);
  fill(1,1, 255);
  stroke(1);
  for (int i=0; i<balllist.size(); i++) { 
    balllist.get(i).rotated = false;
    
    for (int j=0; j<balllist.size(); j++) {
      if(balllist.get(i).hit(balllist.get(j) )&& i != j){
        balllist.get(i).velocity.rotate(PI-balllist.get(i).angel);
      }
    }
    for (int j=0; j<cloudX.length; j++) {
     if( balllist.get(i).hitcloud(cloud[j])){
     balllist.get(i).velocity.rotate(PI-balllist.get(i).angel); 
     }
    }
    balllist.get(i).hitwall();
    balllist.get(i).update();
    balllist.get(i).drawball();
  }
  //Makes all the clouds at the given X and Y cordinate
  for(int i =0;i<cloud.length;i++){
  cloud[i].cloud();
  }
  println(balllist.size());
}
void mousePressed() {
 balllist.add(new Ball(mouseX, mouseY, ballSize));
}
void keyPressed()
{
  if (key == 'r')
  {
    balllist.clear();
  }
}
