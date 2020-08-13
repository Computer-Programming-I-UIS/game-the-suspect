boolean a,w,s,d = false;

int up = 0;
Personaje p;
Pared[] pa = new Pared[10];

void setup(){
  size(1280,720);
  p = new Personaje();
  for(int i = 0; i < pa.length; i++){
    pa[i] = new Pared(40*i,20,20,100);
  }
}

void draw(){
  background(0);
  p.update();
  colision();
  p.display();
  niveles();
  for(int i = 0; i < pa.length; i++){
    pa[i].display();
  }
}
