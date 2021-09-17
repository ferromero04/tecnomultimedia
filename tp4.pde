//Fernán Romero
//Legajo 88228/6
//https://youtu.be/KcXyLJTWHCU




float posY;
float posY2;
float posY2a;
float posY3;
float posY4;
float posY4a;
float posY5;
float posY5a;
float posY6;
float posY6a;
float posY7;
float posY7a;

String estado;


PImage[] imagen = new PImage[10];


void setup(){
estado="pantallainicio";

size(600,600);
imageMode(CENTER);
textSize( 32 );
textAlign( CENTER, CENTER );
rectMode(CENTER);

imagen[0] = loadImage("pantalla1.jpg");
imagen[1] = loadImage("pantalla2.jpg");
imagen[2] = loadImage("pantalla 3.jpg");
imagen[3] = loadImage("pantalla4.jpg");
imagen[4] = loadImage("pantalla5.jpg");
imagen[5] = loadImage("pantalla6.jpg");
imagen[6] = loadImage("pantalla7.jpg");
imagen[7] = loadImage("pantalla8.jpg");
imagen[8] = loadImage("pantalla9.jpg");
imagen[9] = loadImage("pantalla inicio.jpg");


  posY = height;
  posY2 = height+600;
  posY2a = height+640;
  posY3 = height+860;
  posY4= height+940;
  posY4a = height+980;
  posY5 = height+1020;
  posY5a = height+1060;
  posY6 = height+1100;
  posY6a = height+1140;
  posY7 = height+1180;
  posY7a = height+1220;

}


void draw(){

//---------------------------------------------------------------------------pantallainicio  
if ( estado.equals("pantallainicio") ) {
  
pantallainicio();

//---------------------------------------------------------------------------pantalla1
} else if ( estado.equals("pantalla1") ) {
  
pantalla1(); 


//---------------------------------------------------------------------------pantalla2
} else if ( estado.equals("pantalla2") ) {
  
pantalla2(); 

//---------------------------------------------------------------------------pantalla3
} else if ( estado.equals("pantalla3") ) {
  
 pantalla3();

//---------------------------------------------------------------------------pantalla4
} else if ( estado.equals("pantalla4") ) {
  
  pantalla4();
  
//---------------------------------------------------------------------------pantalla5
} else if ( estado.equals("pantalla5") ) {
  
pantalla5();

//---------------------------------------------------------------------------pantalla6
} else if ( estado.equals("pantalla6") ) {
  
pantalla6();  
 
//---------------------------------------------------------------------------pantalla7
} else if ( estado.equals("pantalla7") ) {

pantalla7();
  
//---------------------------------------------------------------------------pantalla8
} else if ( estado.equals("pantalla8") ) {
  
pantalla8();  

//---------------------------------------------------------------------------pantalla9
} else if ( estado.equals("pantalla9") ) {
  
pantalla9();  

//---------------------------------------------------------------------------pantalla10
} else if ( estado.equals("pantallacreditos") ) {
  
pantallacreditos();  

//---------------------------------------------------------------------------pantalla11
}


}



void mousePressed() {

//-------------------------------botones en pantalla 1
  
botones1();
     
//-------------------------------botones en pantalla 1

//-------------------------------botones en pantalla 2

botones2();
     
//-------------------------------botones en pantalla 2

//-------------------------------botones en pantalla 3

botones3();

//-------------------------------botones en pantalla 3

//-------------------------------botones en pantalla 4

botones4();

//-------------------------------botones en pantalla 4

//-------------------------------botones en pantalla 5

botones5();

//-------------------------------botones en pantalla 5

//-------------------------------botones en pantalla 6

botones6();

//-------------------------------botones en pantalla 6

//-------------------------------botones en pantalla 7

botones7();     

//-------------------------------botones en pantalla 7

//-------------------------------botones en pantalla 8

botones8();     

//-------------------------------botones en pantalla 8

//-------------------------------botones en pantalla 9

botones9();     
//-------------------------------botones en pantalla 9

//-------------------------------botones en pantalla 10

botonesinicio();

//-------------------------------botones en pantalla de inicio

botonescreditos();

//-------------------------------botones en pantalla de creditos
}
