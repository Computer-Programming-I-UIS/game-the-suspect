

void niveles(){
  
  cambio();
  
  switch (ny){
   
    case 0:
    
    switch (nx){
    
       case  0:
       nivel00();
       break;
       
       case -1:
       nivelme10();
       break;
       
       case 1:
       nivel10();
       break;
       
       default :
    }
    break;
    
    case 1:
    
    switch (nx){
    
       case  0:
       nivel01();
       break;
       
       case -1:
       nivelme11();
       break;
       
       case 1:
       nivel11();
       break;
       
       default :
    }
    break;
    
    default:
  } 
}

void nivel00(){
 for(int i = 0; i < pa.length; i++){
   noStroke();
   switch (i){
     
    case 0:
    pa[i] = new Pared(20,640,1180,20);//pared inferior horizontal
    break;
    
    case 1:
    pa[i] = new Pared(20,20,20,235);//izquierda up
    break;
    
    case 2:
    pa[i] = new Pared(20,385,20,265);//izquierda down
    break;
    
    case 3:
    pa[i] = new Pared(20,20, 1180,20);//superior left
    break;
    
    case 4:
    pa[i] = new Pared(700,20,500,20);//superior rigth
    break;
    
    case 5:
    pa[i] = new Pared(1180,20,20,235);//derecha up
    break;
    
    case 6:
    pa[i] = new Pared(1180,385,20,265); // derecha down
    break;
    
    default:
    pa[i] = new Pared(0,0,0,0);
    
   }
 }
 
}


void nivelme10(){
  for(int i = 0; i < pa.length; i++){
   switch (i){
    
     case 0:
     pa[i] = new Pared(20,640,1180,20);//pared inferior horizontal
     break;
     
     case 1:
     pa[i] = new Pared(20,20,20,640);//izquierda
     break;
     
     case 2:
     pa[i] = new Pared(1180,20,20,250);//derecha up
     break;
     
     case 3:
     pa[i] = new Pared(1180,410,20,250); // derecha down
     break;
     
     case 4:
     pa[i] = new Pared(20,20, 1180,20);//superior
     break;
     
     default:
     pa[i] = new Pared(0,0,0,0);
   }
  }
  noFill();
  pa[5] = new Pared(puerta[0].x-puerta[0].ly,puerta[0].y-puerta[0].esp/2,puerta[0].ly,puerta[0].lx);
  pa[6] = new Pared(puerta[0].x-puerta[0].ly,puerta[0].y+puerta[0].lx+puerta[0].esp/2,puerta[0].ly,puerta[0].lx);
  fill(50);
  puerta[0].display();
  puerta[0].mov(pu.com);
  
  fill(200,0,0);
  rect(550,450,140,100);// Botón
  inip1();
 
  if(pu1){
   pu.p1(); 
  }
}

void nivelme11(){
  for(int i = 0; i < pa.length; i++){
   
    switch(i){
     
      case 0:
      pa[i] = new Pared(20,20,20,640);//izquierda
      break;
      
      case 1:
      pa[i] = new Pared(20,20,1180,20); //superior
      break;
         
      case 2:
      pa[i] = new Pared(1180,20,20,235);//derecha up
      break;
      
      case 3:
      pa[i] = new Pared(1180,385,20,265); // derecha down
      break;
      
      case 4:
      pa[i] = new Pared(20,640, 500,20); // inferior rigth
      break;
      
      case 5:
      pa[i] = new Pared(700,640,500,20); // inferior left
      break;
      
      
      default:
      pa[i] = new Pared(0,0,0,0);
    }
  }
}


void nivel01(){
 for(int i = 0; i < pa.length; i++){
   switch (i){
     
    case 0:
    pa[i] = new Pared(20,20,1180,20); //superior
    break;
    
    case 1:
    pa[i] = new Pared(20,20,20,235);//izquierda up
    break;
    
    case 2:
    pa[i] = new Pared(20,385,20,265);//izquierda down
    break;
    
    case 3:
    pa[i] = new Pared(20,640, 500,20); // inferior rigth
    break;
    
    case 4:
    pa[i] = new Pared(700,640,500,20); // inferior left
    break;
    
    case 5:
    pa[i] = new Pared(1180,20,20,235);//derecha up
    break;
    
    case 6:
    pa[i] = new Pared(1180,385,20,265); // derecha down
    break;
    
    default:
    pa[i] = new Pared(0,0,0,0);
    
   }
 }
  
}

void nivel10(){
 
  for(int i = 0; i < pa.length; i++){
    switch(i){
      
     case 0:
     pa[i] = new Pared(20,640,1180,20);//pared inferior horizontal
     break;
     
     case 1:
     pa[i] = new Pared(20,20,20,235);//izquierda up
     break;
     
     case 2:
     pa[i] = new Pared(20,385,20,265);//izquierda down
     break;
     
     case 3:
     pa[i] = new Pared(700,20,500,20);//superior rigth
     break;
     
     case 4:
     pa[i] = new Pared(20,20, 500,20);//superior left
     break;
     
     case 5:
     pa[i] = new Pared(1180,20,20,640);//derecha
     break;
     
     default:
     pa[i] = new Pared(0,0,0,0);
    }
  }
}


void nivel11(){
  
  for(int i = 0; i < pa.length; i++){
   
    switch(i){
      
     case 0:
     pa[i] = new Pared(1180,20,20,640);//derecha
     break;
     
     case 1:
     pa[i] = new Pared(20,20,20,235);//izquierda up
     break;
     
     case 2:
     pa[i] = new Pared(20,385,20,265);//izquierda down
     break;
     
     case 3:
     pa[i] = new Pared(20,640, 500,20); // inferior rigth
     break;
     
     case 4:
     pa[i] = new Pared(700,640,500,20); // inferior left
     break;
     
     case 5:
     pa[i] = new Pared(20,20,1180,20); //superior
     break;
     
     default:
     pa[i] = new Pared(0,0,0,0);
    }
  }
}
