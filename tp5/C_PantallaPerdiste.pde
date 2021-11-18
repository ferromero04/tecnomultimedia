class PantallaPerdiste{
  //atributos
  PFont miFuente;
  String texto; 
  String volver;
  int x,y;
  int radio;
  PImage miImagen;
   //constructor
  PantallaPerdiste(){
    miFuente = loadFont("Square721BT-Roman-48.vlw"); 
    texto = "!PERDISTE!\nFido fue desayunado por Duki";
    volver = "Volver a Jugar";
    x = width/2;
    y = height/2;
    radio = 85;
    
   miImagen = loadImage("fondo.jpg");
  }
  void dibujar(){
  image( miImagen, 500,300,width,height);
  //background(#0D00A7);
  fill(255);
  textFont(miFuente);
  textAlign(CENTER);
  textSize(40);
  text(texto,x,y-100);
  textSize(25);
  text(volver,x,y+200);
} 
boolean click(){
  if(dist(x,y+200, mouseX, mouseY)<radio){
    return true;
  } else {
    return false; 
  }
}
}
