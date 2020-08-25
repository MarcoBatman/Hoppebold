float ballSize=20;
Cloud Cloud = new Cloud();
//The X and Y cordinates for a cloud
int[] cloudX = { 200, 700, 1000, 400, 450};
int[] cloudY = { 250, 300, 350, 500, 200};

void setup() {
  size(1200, 600);
  //frameRate(15);
}
ArrayList<Ball> balllist = new ArrayList<Ball>();


void draw() {
  clear();
  colorMode(HSB, 100);
  background(color(50, 55, 100));
  textSize(32);
  fill(199, 132, 225);
  //informs how you erase all the balls
  text("Click R to erase all the balls", 10, 30);
  fill(1,1, 255);

  //Makes all the clouds at the given X and Y cordinate
  for (int i =0; i < cloudX.length; i++) {
    noStroke();
    Cloud.cloud(cloudX[i]+40, cloudY[i], 100, 50); 
    Cloud.cloud(cloudX[i]+20, cloudY[i]-30, 80, 50);
    Cloud.cloud(cloudX[i], cloudY[i], 100, 50);
  }
  stroke(1);

  for (int i=0; i<balllist.size(); i++) { 
    balllist.get(i).drawball();
    for (int j=0; j<balllist.size(); j++) {
      balllist.get(i).checkCollision(balllist.get(j));
    }
    balllist.get(i).hitwall();
    balllist.get(i).update();
  }
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
