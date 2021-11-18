
//Declaro la clase pato


 
class patos{
  //atributos 
  float x,y;
  float dir, vel;
  float ancho, alto;
  float radio;
  PImage imagen;
  //constructor
  patos(){
    x = random (0,width);
    y = 0;
    dir=  90;
    vel = random (4,6);
    ancho =120;
    alto =120;
    radio = alto/2;
 imagen = loadImage("pato.png");
  }
  
  //funcionalidades
  void draw(){
    mover();
    dibujar();
  }
  
  void dibujar (){
    //patosdibujo
    push();
    translate(x,y);
    noStroke();
    fill(1,1,1,45);
    ellipse(0,0,ancho,alto);
    imageMode(CENTER);
    image( imagen, 0,0,ancho,alto);
    pop();
  }
  
  void mover(){
    //desplazamiento por coordenadas polares:
    float despX, despY;
    despX = cos( radians(dir) ) * vel;
    despY = sin( radians(dir) ) * vel;
    x+=despX;
    y+=despY; 
  
   if ( x>width+ancho ) {
      x = random (0,width);
      y = 0;
    }
    if ( x<0-ancho ) {
      x = random (0,width);
      y = 0;
    }
    if ( y>height+ancho ) {
      y = 0;
      x = random (0,width);
    }
    if ( y<0-ancho ) {
      y = 0;
      x = random (0,width); 
    }
 
  
 
}
 
  
   boolean colision(float x_, float y_, float radio_){
     float distancia = dist(x,y, x_, y_);
      if (distancia< radio+ radio_){
        //hay colision
        return true;
      } else {
        //no hya colision
        return false;
      }
      
      

  

}


}
