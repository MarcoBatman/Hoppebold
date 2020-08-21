class Ball {
  float x;
  float y;
  float speedx;
  float speedy;
  PVector location = new PVector(x, y);
  PVector velocity = new PVector();
  PVector gravity = new PVector(0.03, 0.02);
  float size;
  Ball() {
    location.x=0;
    location.y=0;
    this.size =0;
  }

  Ball(float x, float y, float size) {

    location.x=x;
    location.y=y;
    this.size=size;
  }

  void drawball() { 
    circle(location.x, location.y, size);
  }

  void update() {
    velocity.add(gravity);
    location.add(velocity);
  }
  boolean hit(Ball otherball) {
    float afstandMin = size;
    float afstand = dist(location.x, location.y, otherball.location.x, otherball.location.y);
    if (afstand < afstandMin) {
      return true;
    } else {
      return false;
    }
  }
  void hitwall() {
    if (location.x<0 - size/2||location.x + size/2>width) {
      velocity.x*=-1;
    }
    if (location.y + size/2<0||location.y
     - size/2>height) {
      velocity.y*=-1;
    }
  }
}
