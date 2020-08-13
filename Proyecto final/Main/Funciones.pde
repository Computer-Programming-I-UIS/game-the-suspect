

void keyPressed(){
 if(key == 'a' || key == 'A' || keyCode == LEFT) {a = true;}
 if(key == 'd' || key == 'D' || keyCode == RIGHT){d = true;}
 if(key == 'w' || key == 'W' || keyCode == UP)   {w = true;}
 if(key == 's' || key == 'S' || keyCode == DOWN) {s = true;}
  
}

void keyReleased(){
 if(key == 'a' || key == 'A' || keyCode == LEFT) {a = false;}
 if(key == 'd' || key == 'D' || keyCode == RIGHT){d = false;}
 if(key == 'w' || key == 'W' || keyCode == UP)   {w = false;}
 if(key == 's' || key == 'S' || keyCode == DOWN) {s = false;}
  
}


void colision(){
  
  for(int i = 0; i < pa.length; i++){
    if(p.x < pa[i].x+pa[i].rx && p.x + p.rx > pa[i].x && p.y < pa[i].y + pa[i].ry && p.y +p.ry > pa[i].y){
      
      if(p.x + p.vx >= pa[i].x+pa[i].rx){
       p.x = pa[i].x +pa[i].rx; 
      }
      else if(p.x + p.rx - p.vx<= pa[i].x){
       p.x = pa[i].x - p.rx; 
      }
      if(p.y + p.vy >= pa[i].y + pa[i].ry){
        p.y = pa[i].y + pa[i].ry;
      }
      else if(p.y + p.ry - p.vy <= pa[i].y){
       p.y = pa[i].y - p.ry; 
      }
      
    }
  }
}
