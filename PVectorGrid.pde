//PVECTORS

//variables for size of grid
int gridX = 20; int gridY = 20;
int xDivs, yDivs;

//declare and assign new PVector called grid Position
PVector gridPos = new PVector(0,0); 



void setup(){
  size(1600, 600); xDivs = int(width/gridX); yDivs = int(height/gridY);
  //println("xDivs "+ xDivs);
  strokeWeight(5); 
  stroke(255);
  strokeCap(SQUARE);
}//setup

void draw(){
  background(0);
  for (int i=0; i<width; i=i+xDivs){
    for (int j=0; j<height; j=j+yDivs){
      point(i,j);
      gridPos = new PVector(i,j);
      PVector mousePos = new PVector(mouseX,mouseY);
      PVector lookAt = mousePos.sub(gridPos); //subtract the mousePos from gridPos tp get the lookAt
      float dist = lookAt.mag();
      lookAt.normalize(); //unitize vector to a length of 1 unit
      lookAt.mult(dist*0.5); //multiply the vector by 10
      strokeWeight(dist*0.01);
      line(gridPos.x, gridPos.y, lookAt.x+gridPos.x, lookAt.y+gridPos.y);

    }
  }

}