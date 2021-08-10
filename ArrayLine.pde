float time;
float shift = 20;
float waveAmp=160;
float waveCo=140; 

void setup(){
size(900,900);
shift = 0;
}

void draw(){
  //background(0);
  fill(0,10);
  rect(0,0,width,height); //alpha effect
  translate(width/2, height/2);
  float xPos = x(time, waveAmp, waveCo, shift);
  float yPos = y(time, waveAmp, waveCo, shift);
  float x2Pos = x2(time, waveAmp, waveCo, shift);
  float y2Pos = y2(time, waveAmp, waveCo, shift);
  float x3Pos = x3(time, waveAmp, waveCo, shift);
  float y3Pos = y3(time, waveAmp, waveCo, shift);
  
  stroke(x2Pos,y2Pos,120,160);
   if (mousePressed == true) {
   fill(x2Pos,y2Pos,120,20);
   strokeWeight (4);
   triangle (xPos,yPos,x2Pos,y2Pos,x3Pos,y3Pos);
}
  else {
  stroke(x2Pos,y2Pos,120,120);
  strokeWeight (2.5);
  line(xPos,yPos,x2Pos,y2Pos);
  line(x2Pos,y2Pos,x3Pos,y3Pos);
  }
 
  /*noStroke();
  fill(255,102,102);
  ellipse(xPos,yPos,5,5);
  fill(102,255,178);
  ellipse(x2Pos,y2Pos,5,5);
  fill(102,178,255);
  ellipse(x3Pos,y3Pos,5,5);
  */
  time++;
}


float x(float time, float waveAmp, float waveCo, float shift){
return sin(time/waveCo)*waveAmp+shift+sin(time/waveCo*4)*waveAmp+shift;}

float y(float time, float waveAmp, float waveCo, float shift){
return cos(time/waveCo*4)*waveAmp+shift+sin(time/waveCo*4)*waveAmp+shift;}


float x2(float time, float waveAmp, float waveCo, float shift){
return (sin(time/waveCo)*waveAmp+shift+sin(time/waveCo)*waveAmp+shift)*1.6;}

float y2(float time, float waveAmp, float waveCo, float shift){
return (cos(time/waveCo)*waveAmp+cos(time/waveCo)*waveAmp+shift)*1.6;}


float x3(float time, float waveAmp, float waveCo, float shift){
return (cos(time/waveCo*4)*waveAmp+shift+sin(time/waveCo*4)*waveAmp+shift)*2;}

float y3(float time, float waveAmp, float waveCo, float shift){
return (sin(time/waveCo)*waveAmp+shift+sin(time/waveCo*4)*waveAmp+shift)*2;}