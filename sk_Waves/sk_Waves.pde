float time; 
float shift;
float waveAmp=100;
float waveCo=10;

void setup(){
  size(600,600);
  shift =0;
}


void draw(){
  //background(0);
  fill(0, 5);
  rect(0,0,width, height); //alpha effect 
  translate(width/2, height/2);
  float xPos = x(time, waveAmp, waveCo, shift);
  float yPos = y(time, waveAmp, waveCo, shift);
  float x2Pos = x2(time, waveAmp, waveCo, shift);
  float y2Pos = y2(time, waveAmp, waveCo, shift);
  stroke(255);
  line(xPos, yPos, x2Pos, y2Pos);
  ellipse(xPos, yPos, 10, 10); ellipse(x2Pos, y2Pos, 10, 10);
  time++;
  
}