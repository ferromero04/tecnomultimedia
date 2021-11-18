//declaro mi clase 
 class pez{
  //atributos
  PImage miImagen;
  float ancho, alto, radio;
  float x,y;
  float paso;
 
  //constructor
  pez(){
    miImagen = loadImage("pez4.png");
    x = width/2;
    y = height/2;
    ancho = 63;
    alto = 26;
    radio = alto/2;
    paso =11;

  }
  void draw(){
    push();
    translate(x,y);
    imageMode(CENTER);
    image( miImagen, 0,0,ancho,alto);
    pop();
  }
  
  void keyPressed(){
    //Condicional para mover al personaje con las flechas 
  if(keyCode==LEFT){
    x = (x - paso);
  }
  if(keyCode==RIGHT){
    x = (x + paso);
  }
  if(keyCode==UP){
    y = (y - paso);
  }
  if(keyCode==DOWN){
    y = (y + paso);
  } 
  
 
}
float getX(){
  return x;
}
float getY(){
  return y;
}
float getRadio(){
  return radio;
}

  }
 
