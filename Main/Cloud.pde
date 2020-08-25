class Cloud {
  float x,y;
  float x2,y2;
  float x3,y3;
  Cloud(int x, int y,int x2, int y2,int x3, int y3){
    this.x=x;
    this.y=y;
    this.x2=x2;
    this.y2=y2;
    this.x3=x3;
    this.y3=y3;
  }
   void cloud() {
     noStroke();
    ellipse(x, y, 50, 50);
    ellipse(x2, y2, 50,50);
    ellipse(x3, y3, 50,50);
    
  }
}
