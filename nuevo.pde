// SlideRule_1.3

float L ; float R ; float DY ; int P ; int N ;
float B ; float H ; float Y ; float K ; int Q ;


PImage bg;
PImage img;
void setup(){

  // Images must be in the "data" directory to load correctly
  bg = loadImage("fondo.jpg");
  img = loadImage("beer.png");
  size(600,600) ;
  noSmooth() ;
  strokeWeight(2) ;
  textSize(20) ;
  
  B = 200 ; L = -800 ; R = -400 ;
  
} // setup()



void draw(){
  
  background(bg);
  
  fill(255) ; stroke(255) ;
  
  /*DY = 0 ; K = 0.1 ; Y = 0.5 ; Q = 0 ;
  H = (log(Y+K)-log(Y))*B ; 
  while ( H < 10 ){ K = K*2 ; H = (log(Y+K)-log(Y))*B ; }
  while ( H > 20 ){ K = K/2 ; H = (log(Y+K)-log(Y))*B ; }
  while( Y < 30 ){
    DY = log(Y)*B+L ; 
    if ( Q == 10 ){
      line(450,DY+300,380,DY+300) ;
      P = int(log(Y)/log(10)) ;
      text(nf(Y,P,3-P),320,DY+300+5) ;
      text("$costo",340,DY+300+20) ;
      Q = 0 ; 
      H = (log(Y+K)-log(Y))*B ; 
      while ( H < 10 ){ K = K*2 ; H = (log(Y+K)-log(Y))*B ; }
      while ( H > 20 ){ K = K/2 ; H = (log(Y+K)-log(Y))*B ; }
    }else{
      if ( Q == 5 ){ line(450,DY+300,400,DY+300) ; }
      else{ line(450,DY+300,420,DY+300) ; }
    }
    Y = Y + K ; Q = Q + 1 ;
  }*/
  
  DY = 0 ; K = 0.1 ; Y = 0.5 ; Q = 0 ;
  H = (log(Y+K)-log(Y))*B ; 
  while ( H < 10 ){ K = K*2 ; H = (log(Y+K)-log(Y))*B ; }
  while ( H > 20 ){ K = K/2 ; H = (log(Y+K)-log(Y))*B ; }
  while( Y < 16 ){
    DY = log(Y)*B+R ; 
    if ( Q == 10 ){
      line(450,DY+300,520,DY+300) ;
     text(int(1000*Y),530,DY+300+5) ; 
      text("$Costo",520,DY+300+25) ;
      Q = 0 ; 
      H = (log(Y+K)-log(Y))*B ; 
      while ( H < 10 ){ K = K*2 ; H = (log(Y+K)-log(Y))*B ; }
      while ( H > 20 ){ K = K/2 ; H = (log(Y+K)-log(Y))*B ; }
    }else{
      if ( Q == 5 ){ line(450,DY+300,500,DY+300) ; }
      else{ line(450,DY+300,480,DY+300) ; }
    }
    Y = Y + K ; Q = Q + 1 ;
  }
  
  DY = 0 ; K = 0.1 ; Y = 0.5 ; Q = 0 ;
  H = (log(Y+K)-log(Y))*B ; 
  while ( H < 10 ){ K = K*2 ; H = (log(Y+K)-log(Y))*B ; }
  while ( H > 20 ){ K = K/2 ; H = (log(Y+K)-log(Y))*B ; }
  while( Y < 25 ){
    DY = log(Y)*B+L-R ; 
    if ( Q == 10 ){
      line(100,DY+300,170,DY+300) ;
      text(int(2000*Y),180,DY+300+5) ;
      text("$Venta",210,DY+300+22) ;
      P = int(log(200*Y)/log(10)) ;
      text(nf(70*Y,P,3-P),180,DY+300+45) ;
      text("%Ganancia",175,DY+300+65) ;
      textSize(40) ;
      text("(",155,DY+300+60) ; text(")",280,DY+300+60) ;
      textSize(20) ;
      Q = 0 ; 
      H = (log(Y+K)-log(Y))*B ; 
      while ( H < 10 ){ K = K*2 ; H = (log(Y+K)-log(Y))*B ; }
      while ( H > 20 ){ K = K/2 ; H = (log(Y+K)-log(Y))*B ; }
    }else{
      if ( Q == 5 ){ line(100,DY+300,150,DY+300) ; }
      else{ line(100,DY+300,130,DY+300) ; }
    }
    Y = Y + K ; Q = Q + 1 ;
  }
  
  strokeWeight(4) ;
  line(100,0,100,600) ; line(300,0,300,600) ; line(450,0,450,600) ;
  strokeWeight(2) ;

  
  if ( mouseX > 100 && mouseX < 300 && mouseY < 250 ){ L = L+(float(250-mouseY)/100) ; R = R-(float(250-mouseY)/100) ; }
  if ( mouseX > 300 && mouseX < 450 && mouseY < 250 ){ L = L+(float(250-mouseY)/100) ; }
  if ( mouseX > 450 && mouseX < 600 && mouseY < 250 ){ R = R+(float(250-mouseY)/100) ; }
  if ( mouseX > 100 && mouseX < 300 && mouseY > 350 ){ L = L+(float(350-mouseY)/100) ; R = R-(float(350-mouseY)/100) ; }
  if ( mouseX > 300 && mouseX < 450 && mouseY > 350 ){ L = L+(float(350-mouseY)/100) ; }
  if ( mouseX > 450 && mouseX < 600 && mouseY > 350 ){ R = R+(float(350-mouseY)/100) ; }
  
  /*fill(255,0,0) ;
  beginShape() ;
  vertex(90,300) ; vertex(50,320) ; vertex(50,280) ;
  endShape(CLOSE) ; */
  image(img, 30, 300);
  
} // draw()
