int scared = 800;
int jump =600;
void setup(){
   size(800,800);
   
}

void draw(){
  background(0,0,150);
  backGround();
  niceNight();
  stroke(0);
  foreground(); 
  lightning();
}

void lightning(){
  boolean button = true;
  for(int i =0;i<20;i++){
    if(scared == 430){
        if(button){
          background(0,0,150);
          button = !button;
        }
        else{
         background(255);
         button = !button;
        }
                      }
                    }
}

void niceNight(){
  fill(255);
  ellipse(scared,jump,70,70);
  
  if(scared>=430){
    scared--;
    
  }
  if(scared<430){
    
    //jump-100;
    //jump+100;
    lightning();
    storm();
   scared-=10; 
  }
 
}

void backGround(){
  stroke(0);
  fill(0,20,0);
  rect(0,400, 800,600);
  fill(0);
  rect(30,0,30,500);
  rect(390,0, 35,500);
  rect(700,0, 35,500);

}

void foreground(){
    fill(0);
  rect(200,0, 45,600);
  rect(470,0, 45,700);
  rect(100,0, 50,700);
  rect(300,0, 50,800);
  rect(600,0, 50,800);
}

void storm(){
 for(int i =0;i<500;i++){
  rain();
 }
}
void rain(){
  float rainX = random(0,800);
  float rainY = random(0,800);
  rainDrop(rainX, rainY);
  rainY--;
}

void rainDrop(float x, float y){
   stroke(150);
   strokeWeight(5);
   line(x,y, x,y+7);
}
