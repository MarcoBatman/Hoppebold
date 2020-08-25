class Ball {
  float radius;
  float x;
  float y;
  float speedx;
  float speedy;
  PVector location = new PVector(x, y);
  PVector velocity = new PVector();
  PVector gravity = new PVector(0, 0.2);
  boolean rotated; 
  float size;
  float angel;
  Ball() {
  location.x=0;
  location.y=0;
  size =0;
  }

  Ball(float x, float y, float size) {
    location.x=x;
    location.y=y;
    this.size=size;
    radius = size/2;  
  }

  void drawball() { 
    circle(location.x, location.y, size);
  }

  void update() {
    
    velocity.add(gravity);
    location.add(velocity);
  }
   boolean hit(Ball ball2){
        float distanceMin = size;
        float distance = location.dist(ball2.location);
        angel = PVector.angleBetween(location,ball2.location);
        if(distance < distanceMin){
            return true;
        }
        else{
            return false;
        }
    }
  void hitwall() {
    if (location.x<0 - size/2) {
      velocity.x*=-1;
      location.x += size;
    }
    if (location.x + size/2>width) {
      velocity.x*=-1;
      location.x -= size;
    }
    if (location.y + size/2>height) {
      velocity.y*=-1;
      location.y = height-size/2;    
    }
    if (location.y - size/2<0) {
      velocity.y*=-1;
      location.y += size/2;
    }
  }
  
  boolean hitcloud(Cloud cloud){
    float afstandMin = size+25;
    PVector cloudlocation1 = new PVector(cloud.x,cloud.y);
    PVector cloudlocation2 = new PVector(cloud.x2,cloud.y2);
    PVector cloudlocation3 = new PVector(cloud.x3,cloud.y3);
    angel = PVector.angleBetween(location,cloudlocation1);
        float afstand1 = location.dist(cloudlocation1);
        float afstand2 = location.dist(cloudlocation2);
        float afstand3 = location.dist(cloudlocation3);
        if(afstand1 < afstand1||afstand2 < afstandMin||afstand3 < afstandMin){
            return true;
        }
        else{
            return false;
         
  }
  }
}
