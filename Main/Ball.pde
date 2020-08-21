class Ball{
float x;
float y;
float speedx;
float speedy;
PVector location = new PVector(x,y);
PVector velocity = new PVector();
PVector gravity = new PVector(0,0.02);
float size;
Ball(){
location.x=0;
location.y=0;
this.size =0;
}

Ball(float x,float y,float size){
  
  location.x=x;
  location.y=y;
  this.size=size;
}
  
void drawball(){ 
circle(location.x,location.y,size);
}
  
void update(){
  velocity.add(gravity);
  location.add(velocity);
  
}


}
