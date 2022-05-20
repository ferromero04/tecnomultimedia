//Fernán Romero
//legajo 88228/6

PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;

PImage titulo;

int param1; 
int param2;



int fondo ;
int texto1;
int texto2;
int texto3;
int texto4;
int conteo ;


void setup(){
  
  size(600,400);
  background(0);
  
   
  //textos
  fondo = 0;
  texto1 = 400;
  texto2 = 400;
  texto3 = 400;
  texto4 = 400;
  
  //variable de verlocidad
  conteo = 2;
  
 
  
  //carga de imagenes
  imagen1= loadImage("dannyp8.png");
  imagen2= loadImage("dannyp7.jpg");
  imagen3= loadImage("dannyp6.jpg");
  imagen4=loadImage("dannyp4.jpg");

  titulo= loadImage("dannyin.jpg");
  
  
  //parametros para ajustar la imagen 
  param1= width;
  param2= height;
  
}
void draw(){
 
    if (fondo == 0){
    image(titulo,0,0,param1,param2);
    pushStyle();
    fill(255);
    rect(150,270,160,40);
    popStyle();
    fill(0);
    textSize(20);
    text("Click para iniciar",150,300);
    
    
  } else if(fondo == 1){
    image(imagen1,0,0,param1,param2);
     fill(255);
    textSize(30);
    text("EXECUTIVE PRODUCER",150,400+texto1);
    fill(0,255,0);
    text("Butch Hartman",200,440+texto1);
    
    println(texto1);
    texto1 = texto1 - conteo;
   
    if (texto1 < -700){ fondo = 2; }
    
  } else if(fondo == 2){
    image(imagen2,0,0,param1,param2);
    fill(0);
    textSize(30);
    fill(255);
    text("PRODUCERS",210,400+texto2);
    fill(0,255,0);
    text("Bob Boyle",220,450+texto2);
    text("Steve Marmel",200,490+texto2);
    
    println(texto2);
    texto2 = texto2 - conteo;
  
    if (texto2 < -700){ fondo = 3; }
    
   
  } else if(fondo == 3){
    image(imagen3,0,0,param1,param2);
    fill(0);
    fill(255);
    textSize(30);
    text("PRODUCTION MANAGER",120,400+texto3);
    fill(0,255,0);
    text("Anna States",200,430+texto3);
    fill(255);
    text("PRODUCTION COORDINATOR",100,500+texto3);
    fill(0,255,0);
    text("Dina Buteyn",200,530+texto3);
    fill(255);
    text("PRODUCTION ASSISTANS",120,600+texto3);
    fill(0,255,0);
    text("Noeli Rosas",200,630+texto3);
    text("Jack Kinman",200,670+texto3);
    
    println(texto3);
    texto3 = texto3 - conteo;
    
    if (texto3 < -700){ fondo = 4; }
     
  } else if (fondo == 4){
     image(imagen4,0,0,param1,param2);
    fill(0);
    fill(255);
    textSize(30);
    text("SCRIPT COORDINATOR ",120,400+texto4);
    fill(0,255,0);
    text("Cynthia True",200,430+texto4);
    fill(255);
    text("EXECUTIVE ASSISTANT",120,500+texto4);
    fill(0,255,0);
    text("Austin Block",200,530+texto4);
    
    
    println(texto4);
    texto4 = texto4 - conteo;
  
    if (texto4 < -700){ fondo = 0; texto1 = 400; texto2 = 400; texto3 = 400; texto4 = 400; }
  }
    
}

void mousePressed(){
  if(fondo == 0 & mouseX > 150 & mouseX < 310 & mouseY > 270 & mouseY < 310){fondo = 1;
  }
}
