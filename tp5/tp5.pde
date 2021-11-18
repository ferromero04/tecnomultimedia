//Elias Robles 81729/3 y Fernán Romero 88228/6
//link:https://youtu.be/zgHWkY0lcdE
//Comision 3
//Mini juego: esquiba los patos
//Mueve a fido con las flechas del teclado
//Si te golpea un pato pierdes


Juego juego;

PImage miImagen;

void setup(){
  size(1000,600);
  surface.setResizable(true);

  juego = new Juego();
 miImagen = loadImage("fondo.jpg");
  imageMode(CENTER);
}

void draw(){
  //background(#0D00A7);
  image( miImagen, 500,300,width,height);
  juego.draw();
 
}
 
void keyPressed(){
   juego.keyPressed();
}

void mousePressed(){
  println(mouseX+","+mouseY);
  juego.mousePressed();
}
