//declaro mi clase juego
class Juego{
  //atributos
  patos [] arregloDepatos;
  int cantpatos = 7;
  int estado = 1;
  pez mipez;
  PantallaInicio inicio;
  PantallaPerdiste perdiste;
  
Juego(){
  //constructor
  mipez = new pez();
  inicio = new PantallaInicio();  
  perdiste = new PantallaPerdiste();
  arregloDepatos =new patos[cantpatos];
  for ( int i=0; i<cantpatos; i++ ) {
    arregloDepatos[i] = new patos();
  }
 }
 
  void draw(){
    //funcionalidad

  if( estado==1){
    inicio.dibujar();
  }
  else if (estado==2){ //jugando
  //imagen del pez:
  mipez.draw();
  for ( int i=0; i<cantpatos; i++ ) {
    arregloDepatos[i].draw();
    if ( arregloDepatos[i].colision(mipez.getX(), 
         mipez.getY(),mipez.getRadio() ) ){
           cambiarAEstado(3);
         }
  }
}
  
  else if (estado==3){
    perdiste.dibujar();
    perdiste.click();
  }
  }
  
  void keyPressed(){
    if( estado==1){
  }
  else if (estado==2){ //jugando
  mipez.keyPressed();
  }
 }
  
  void mousePressed(){
    if(inicio.click() && estado == 1){
    cambiarAEstado(2);
  } else if(perdiste.click() && estado == 3){
    estado = 1;
  }
}
void cambiarAEstado (int nuevoEstado_){
  estado = nuevoEstado_;
  if (nuevoEstado_ == 2){
    mipez= new pez();
    arregloDepatos = new patos[cantpatos];
    for (int i=0; i<cantpatos; i++){
      arregloDepatos[i] = new patos();
      }
    }
  }
}
