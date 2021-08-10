void keyPressed(){
  
  if (key =='a'){
    println("key a was typed ");
  }
  
  if (key ==CODED){
    if (keyCode == UP){
      shift++;
      println("shift Val "+ shift);
    }
    if(keyCode == DOWN){
      shift--;
      println("shift Val "+ shift);
    }
    if (keyCode == LEFT){
      println("LEFT pressed ");
    }
    if (keyCode == RIGHT){
      println("RIGHT pressed ");
    }
    if (keyCode == ENTER ){
      println("ENTER pressed");
    }
  }
}//keypressed