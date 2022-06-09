//Pablo Rodriguez
//TP2

PImage foto_1;
PImage foto_2;
PImage foto_3;

PImage titulo;

int param1; 
int param2;

PFont tipografia;

int fondo ;
int texto1;
int texto2;
int texto3;
int speedletra ;


void setup(){
  
  size(600,400);
  background(0);
  
  //variables de velocidad y textos
  fondo = 0;
  texto1 = 400;
  texto2 = 400;
  texto3 = 400;
  speedletra = 2;
  
  //carga de tipografia
  tipografia= loadFont("Constantia-48.vlw");
  textFont(tipografia);
  
  //carga de imagenes
  foto_1= loadImage("foto_1.jpg");
  foto_2= loadImage("foto_2.jpg");
  foto_3= loadImage("foto_3.jpg");

  titulo= loadImage("Titulo.jpg");
  
  
  //parametros para ajustar la imagen 
  param1= width;
  param2= height;
  
}
void draw(){
 
    if (fondo == 0){
    image(titulo,0,0,param1,param2);
    fill(255);
    textSize(20);
    text("Click para iniciar",225,350);
    
  } else if(fondo == 1){
    image(foto_1,0,0,param1,param2);
    fill(0);
    text("Original Game Crew",50,30+texto1);
    text("Director",50,90+texto1);
    text("SHINJI MIKAMI",70,120+texto1);
    text("Game Design",50,150+texto1);
    text("Designers",60,180+texto1);
    text("HIROSHI SHIBATA",70,220+texto1);
    text("KOUJI KAKAE",70,260+texto1);
    text("SHIGENORI NISHIKAWA",70,300+texto1);
    
    println(texto1);
    texto1 = texto1 - speedletra;
   
    if (texto1 < -350){ fondo = 2; }
    
  } else if(fondo == 2){
    image(foto_2,0,0,param1,param2);
    fill(0);
    text("Script Translation",250,30+texto2);
    text("& Voice Over Coordination",250,60+texto2);
    text("SHINSAKU OHARA",300,100+texto2);
    text("Communication Script",250,150+texto2);
    text("SATOSHI YOSHIMATSU",300,200+texto2);
    text("MOCAP Actor Andition Coordination",250,250+texto2);
    text("AKIRA KOKUSHOH",300,300+texto2);
    
    println(texto2);
    texto2 = texto2 - speedletra;
  
    if (texto2 < -350){ fondo = 3; }
    
   
  } else if(fondo == 3){
    image(foto_3,0,0,param1,param2);
    fill(0);
    text("Coders",50,30+texto3);
    text("Lead Coder",80,80+texto3);
    text("KIYOHIRO SAKATA",120,100+texto3);
    text("Coders",80,150+texto3);
    text("KAZUNORI INOUE",120,180+texto3);
    text("YUJI HAGIYAMA",120,220+texto3);
    text("YOSHIAKI NISHIMURA",120,260+texto3);
    text("TAKAAKI YAMANOUCHI",120,300+texto3);
    text("NAO UEDA",120,340+texto3);
    text("NAOKI HASHIMOTO",120,380+texto3);
    
    println(texto3);
    texto3 = texto3 - speedletra;
    
    if (texto3 < -350){ fondo = 0; texto1 = 600; texto2 = 600; texto3 = 600; }
     
  } 
    
}

void mousePressed(){
  if(fondo == 0){fondo = 1;
  }
}
