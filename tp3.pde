// link: https://youtu.be/UtSPBA1AGoY
//Fernán Romero
//legajo 88228/6

float ma=255;
float me=0;


void setup(){
size(800, 700);
colorMode(HSB);
}

void draw(){
background(255);
strokeWeight(2);
 //lineas superiores
 for ( int i=-5; i<18; i++) {
    //color de lineas
     stroke(random(ma),ma,ma); 
      line(   i*(width/12), 0, mouseX , 350);
}
 //lineas inferiores
 for ( int i=-5; i<18; i++) {
   //color de lineas
   stroke(random(ma),ma,ma);
     line(   i*(width/12), 700, mouseX , 350);
}
//lineas horizontales 
pushStyle();
strokeWeight(4);
stroke(random(me),me,me);
rectMode(CENTER);
rect( 400,mouseY-100 , 800 , 0);
rect( 400, mouseY+100, 800 , 0);
popStyle();
}
//intercciones
void keyPressed(){
if( key == 'f'){
  ma=0;
  me=255;
}
 else if ( key == 'g'){
  ma=255;
  me=0;
 }

}
