
float x(float time, float waveAmp, float waveCo, float shift){
  //return time;
  return sin(time/waveCo)*waveAmp + shift;
}

float y(float time, float waveAmp, float waveCo, float shift){
  return cos(time/waveCo)*waveAmp + cos(time/waveCo*0.5)*waveAmp*2; // sin (time/waveCo) *waveAmp + shift
}

float x2(float time, float waveAmp, float waveCo, float shift){
  //return time;
  return sin(time)*waveAmp*0.5 ;
}

float y2(float time, float waveAmp, float waveCo, float shift){
  return cos(time/waveCo)*waveAmp;
}