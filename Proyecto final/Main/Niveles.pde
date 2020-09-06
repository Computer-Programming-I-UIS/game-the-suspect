

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
       
       case -2:
       nivelme20();
       
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

void nivelme20(){
  pa[0] = new Pared(20,640,1180,20);//pared inferior horizontal
  pa[1] = new Pared(1180,20,20,250);//derecha up
  pa[2] = new Pared(1180,410,20,250); // derecha down
  pa[3] = new Pared(20,20,20,640);//izquierda
  pa[4] = new Pared(20,20, 1180,20);//superior
  
  if(p.movi){
    tras1 -= 4;
  }
  if(tras1 >= 0){
  fill(255,tras1);
  textSize(40);
   text("Te puedes mover usando las teclas 'w', 'a', 's', 'd'",50,100);
  }
  else {
   fill(255,0,0,tras2);
  rect(900,300,100,100);
  fill(255,tras2);
  textSize(30);
  text("Para interactuar con los botones rojos",200,200);
  text("presiona 'f' cuando estes encima de ellos",200,250);
  if(tras2 <= 255){
    tras2+=4;
  }
  }
  
  
  
  pa[7] = new Pared(puerta[0].x-puerta[0].ly,puerta[0].y-puerta[0].esp/2,puerta[0].ly,puerta[0].lx);
  pa[8] = new Pared(puerta[0].x-puerta[0].ly,puerta[0].y+puerta[0].lx+puerta[0].esp/2,puerta[0].ly,puerta[0].lx);
  fill(50);
  /*puerta[0].display();
  puerta[0].mov(intropuert);*/
  
  if(p.x >= 850 && p.x <= 1050 && p.y+p.ry >= 250 && p.y + p.ry <=450){
    
   if(f==true && antf == false){
    intropuert = true; 
   }
   antf = f;
  }
  
}


void nivel00(){
 for(int i = 0; i < pa.length; i++){
   strokeWeight(1);
   switch (i){
     
    case 0:
    pa[i] = new Pared(20,640,1180,20);//pared inferior horizontal
    break;
    
    case 1:
    pa[i] = new Pared(20,20,20,250);//izquierda up
    break;
    
    case 2:
    pa[i] = new Pared(20,410,20,250); // izquierda down
    break;
    
    case 3:
    pa[i] = new Pared(20,20, 1180,20);//superior left
    break;
    
    case 5:
    pa[i] = new Pared(1180,20,20,250);//derecha up
    break;
    
    case 6:
    pa[i] = new Pared(1180,410,20,250); // derecha down
    break;
    
    default:
    pa[i] = new Pared(0,0,0,0);
    
   }
 }
  /*pa[7] = new Pared(puerta[0].x-puerta[0].ly,puerta[0].y-puerta[0].esp/2,puerta[0].ly,puerta[0].lx);
  pa[8] = new Pared(puerta[0].x-puerta[0].ly,puerta[0].y+puerta[0].lx+puerta[0].esp/2,puerta[0].ly,puerta[0].lx);*/
  fill(50);
  /*puerta[0].display();
  puerta[0].mov(pu.com2);*///OOOOOOOOOOOOOOOOOJOOOOOOOOOOOOOOOOOOOOO
  //pu.p2();
  fill(200,0,0);
  rect(200,280,80,80);// Botón
  inip2();
  
  if(pu1){
   pu.p2(); 
  }
}


void nivelme10(){
  for(int i = 0; i < pa.length; i++){
    strokeWeight(1);
   switch (i){
    
     case 0:
     pa[i] = new Pared(20,640,1180,20);//pared inferior horizontal
     break;
     
     case 1:
     pa[i] = new Pared(20,20,20,250);//izquierda up
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
     
     case 7:
     pa[i] = new Pared(20,410,20,250); // izquierda down
     break;
     
     default:
     pa[i] = new Pared(0,0,0,0);
   }
  }
   fill(0);
    rect(100,50,140,35);
    fill(255);
    textSize(14);
    text("frase:",110,70);
  noFill();
  /*pa[5] = new Pared(puerta[0].x-puerta[0].ly,puerta[0].y-puerta[0].esp/2,puerta[0].ly,puerta[0].lx);
  pa[6] = new Pared(puerta[0].x-puerta[0].ly,puerta[0].y+puerta[0].lx+puerta[0].esp/2,puerta[0].ly,puerta[0].lx);*/
  fill(50);
  /*puerta[0].display();
  puerta[0].mov(pu.com);
 // puerta[0].mov(key == ' ');*/ //OOOOOOOOOOOOOOOOOJOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
  
  fill(200,0,0);
  rect(550,450,140,100);// Botón
  inip1();
 
  if(pu1){
   pu.p1(); 
  }
  
  
}

void nivelme11(){
  for(int i = 0; i < pa.length; i++){
    strokeWeight(1);
   
    switch(i){
     
      case 0:
      pa[i] = new Pared(20,20,20,640);//izquierda
      break;
      
      case 1:
      pa[i] = new Pared(20,20,1180,20); //superior
      break;
         
      case 2:
      pa[i] = new Pared(1180,20,20,250);//derecha up
      break;
      
      case 3:
      pa[i] = new Pared(1180,410,20,250); // derecha down
      break;
      
      case 4:
      pa[i] = new Pared(20,640, 1180,20); // inferior
      break;
      
      
      default:
      pa[i] = new Pared(0,0,0,0);
    }
     fill(0);
    rect(100,50,140,35);
    fill(255);
    textSize(14);
    text("frase:",110,70);
  }
}


void nivel01(){
 for(int i = 0; i < pa.length; i++){
   strokeWeight(1);
   switch (i){
     
    case 0:
    pa[i] = new Pared(20,20,1180,20); //superior
    break;
    
    case 1:
    pa[i] = new Pared(20,20,20,250);//izquierda up
    break;
    
    case 2:
    pa[i] = new Pared(20,410,20,250); // izquierda down
    break;
    
    case 3:
    pa[i] = new Pared(20,640,1180,20); // inferior
    break;
    
    case 5:
    pa[i] = new Pared(1180,20,20,250);//derecha up
    break;
    
    case 6:
    pa[i] = new Pared(1180,410,20,250); // derecha down
    break;
    
    default:
    pa[i] = new Pared(0,0,0,0);
    
   }
    fill(0);
    rect(100,50,140,35);
    fill(255);
    textSize(14);
    text("frase:",110,70);
 }
  
}

void nivel10(){
 
  for(int i = 0; i < pa.length; i++){
    strokeWeight(1);
    switch(i){
      
     case 0:
     pa[i] = new Pared(20,640,1180,20);//pared inferior horizontal
     break;
     
     case 1:
     pa[i] = new Pared(20,20,20,250);//izquierda up
     break;
     
     case 2:
     pa[i] = new Pared(20,410,20,250); // izquierda down
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
  fill(0);
    rect(100,50,140,35);
    fill(255);
    textSize(14);
    text("frase:",110,70);
    inip3();
    pu.p3(p.x,p.y,p.rx,p.ry);
    
    
}


void nivel11(){
  
  for(int i = 0; i < pa.length; i++){
    strokeWeight(1);
   
    switch(i){
      
     case 0:
     pa[i] = new Pared(1180,20,20,640);//derecha
     break;
     
     case 1:
     pa[i] = new Pared(20,20,20,250);//izquierda up
     break;
     
     case 2:
     pa[i] = new Pared(20,410,20,250); // izquierda down
     break;
     
     case 3:
     pa[i] = new Pared(20,640,500 ,20); // inferior rigth
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
     fill(0);
    rect(100,50,140,35);
    fill(255);
    textSize(14);
    text("frase:",110,70);
  }
}
