//Fernán Romero
//legajo 88228/6
void setup(){
  size(400,400);
  background(0,0,255);  
}

void draw(){
   //rectanculo para la cara
   fill(218,171,145);
   rect(100,50,200,300,50,60,700,60);
   
   //rectangulos para el pelo
   fill(141,73,37);
   rect(80,40,215,50,50,0,0,50);
   
   rect(290,40,30,90,50);
   
   //rectangulo para la boca
   fill(255);
   rect(160,250,60,20);
   
   //rectangulos para las cejas
   //ceja izquierda 
   fill(0);
   rect(120,110,60,10);
   
   //ceja derecha
   fill(0);
   rect(220,110,60,10);
   
   //circulos para los ojos
   //ojo izquierdo
   fill(255);
   ellipse(150,150,50,50);
   
   //iris
   fill(141,73,37);
   ellipse(150,150,30,30);
   
   //pupila
   fill(0);
   ellipse(150,150,10,10);
  
   //ojo derecho
   fill(255);
   ellipse(250,150,50,50);
  
  //iris
   fill(141,73,37);
   ellipse(250,150,30,30);
   
   //pupila
   fill(0);
   ellipse(250,150,10,10);
   
   //lineas para la nariz
   pushStyle();
   strokeWeight(5);
   line(200,170,170,230);
   
  
  
   line(170,230,190,230);
   popStyle();
  
}
