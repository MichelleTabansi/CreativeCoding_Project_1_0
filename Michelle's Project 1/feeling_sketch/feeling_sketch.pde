//scary

int count = 0;
float scale = 1;
float xPan = 0;
float yPan = 0;
int xCor =130;
int yCor =170;
int xSmile = 50;
int ySmile = 50;
int size=30;
int sec =0;
int otherSec =0;
void setup() {
  size(900,900); 
}

void draw() {
  frameRate(30);
  if(count==1){
     frameRate(10);
     if(scale<61){
       translate(xPan,yPan);
       xPan-=134.7457627;
       yPan-=175.4237288;
       scale(scale);
     }
     scale+=1;
     }
     otherSec++;
       background(0,0,70);
     hauntedHouse();
     storm();
     if(otherSec%100==0){
       lightning();
       hauntedHouse();
       
     }
     
     if(scale>61){
           background(255,255,0);
           scale=62;
              ghostFace();
        if(size>1){
        size-=0.001;
        }
        
        sec++;
        if(sec<150 && sec>50){
         if(xSmile<500){
             xSmile+=5;
             ySmile+=5;
         }
        }
           if(sec>150 && sec%15==0 && sec < 250){
           frameRate(5);
           background(0);
           angryFace();
       }
       
       if(sec >270&& sec<370){
             angryFace();
       }
       
            if(sec>350){
       background(150,0,0);
       for(int i=0;i<15;i++){
         float spiX= random(0,900);
         float spiY = random(0,900);
         spider(spiX,spiY);
          //background(255,0,0);
          //spider(450,450);
       }
       }
     }
     

}

void storm(){
 for(int i =0;i<700;i++){
  rain();
 }
}
void lightning(){
  frameRate(10);
  boolean button = true;
  for(int i =0;i<10;i++){
    //if(scared == 430){
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
void rain(){
  float rainX = random(0,900);
  float rainY = random(0,900);
  rainDrop(rainX, rainY);
  rainY--;
}

void rainDrop(float x, float y){
   stroke(140,100);
   strokeWeight(5);
   line(x,y, x,y+7);
}

void ghostFace(){
  background(0);
     fill(230);
   ellipse(450,450,700*size,600*size);
   fill(255,0,0);
   strokeWeight(10);
   stroke(0);
   ellipse(325,300,200*size,200*size);
   ellipse(575,300,200*size,200*size);
   //pupils
   noStroke();
   fill(255,255,0);
   ellipse(325,300,50*size,50*size);
   ellipse(575,300,50*size,50*size);
   
   noFill();
   stroke(0);
   strokeWeight(5);
   arc(450, 400, xSmile*size, ySmile*size, 0, PI);
}

void spider(float xC,float yC){
    strokeWeight(1);
  stroke(255);
  fill(0);
   ellipse(xC,yC,300,300);
  ellipse(xC,yC+125,200,200);
  fill(255,255,0);
  noStroke();
  //rect(310,490,50,5);
  //rect(390,490,50,5);
  triangle(xC-65,yC+80,xC-65,yC+100,xC-15,yC+100);
  triangle(xC+65,yC+80,xC+65,yC+100,xC+15,yC+100);
  fill(255,0,0);
  arc(xC, yC+135, 130, 130, 0, PI, CHORD);
  fill(255);
  triangle(xC-40,yC+135, xC-20,yC+135,xC-30,yC +175);
  triangle(xC+40,yC+135,xC+20,yC+135,xC+30,yC+175);
  
  strokeWeight(10);
  stroke(0);
  beginShape(LINES);
  vertex(xC-140,yC+50);
  vertex(xC-270,yC-30);
  vertex(xC-270,yC-30);
  vertex(xC-305,yC+20);
  
  vertex(xC-140,yC);
  vertex(xC-250,yC-80);
  vertex(xC-250,yC-80);
  vertex(xC-305,yC-30);
  
  vertex(xC-140,yC-50);
  vertex(xC-230,yC-130);
  vertex(xC-230,yC-130);
  vertex(xC-280,yC-90);
  
  vertex(xC+140,yC+50);
  vertex(xC+270,yC-30);
  vertex(xC+270,yC-30);
  vertex(xC+305,yC+20);
  
  vertex(xC+140,yC);
  vertex(xC+250,yC-80);
  vertex(xC+250,yC-80);
  vertex(xC+305,yC-30);
  
  vertex(xC+140,yC-50);
  vertex(xC+230,yC-130);
  vertex(xC+230,yC-130);
  vertex(xC+280,yC-90);

  endShape();
}

void angryFace(){
  background(0);
  float shake = random(0,30);
     fill(230);
     ellipse(450+shake,450,700,600);
     stroke(0);
     strokeWeight(10);
     fill(255,255,0);
     triangle(400,400,200,400,200,270);
     triangle(500,400,700,400,700,270);
     noStroke();
     fill(255,0,0);
    arc(450+shake, 650, 400, 400, PI, TWO_PI);
    fill(255);
    triangle(400,650, 420,600, 440,650);
    triangle(460,650, 480,600, 500,650);
    
    triangle(360,465, 400,600, 410,450);
    triangle(480,450, 490,600, 530,460);
    
    fill(255,0,0);
    stroke(0);
    strokeWeight(1);
    triangle(412,620, 420,600, 427,620);
    triangle(472,620, 480,600, 487,620);
    
    triangle(390,565, 400,600, 405,550);
    triangle(485,550, 490,600, 500,565);
    
    for (int i = 0; i < 2000; i++) {
      noStroke();
              float r = random(0, 1000);
              float s = random(0, 1000);
              fill(255,0,0,150);
              ellipse(r,s,10,20);
          }
}

void hauntedHouse(){
  fill(0);
  stroke(0);
  beginShape();
  vertex(0,1000);
  vertex(0,900);
  vertex(10,800);
  vertex(20,850);
  vertex(30,800);
  vertex(20,700);
  vertex(75,500);
  vertex(100,350);
  vertex(120,300);
  vertex(250,300);
  vertex(300,380);
  vertex(400,450);
  vertex(500,600);
  vertex(700,750);
  vertex(800,850);
  vertex(900,870);
  vertex(900,900);
  endShape();
  
  //spikes
  triangle(40,700, 60,350,80,550);
  triangle(280,380, 310,310,325,450);
  triangle(480,580, 500,450,510,650);
  triangle(380,480, 400,300,420,500);
  triangle(680,780, 610,760,640,450);
  triangle(850,880, 870,750,895,880);
  
  beginShape();
  vertex(90,300);
  vertex(90,280);
  vertex(290,280);
  vertex(290,300);
  endShape();
  
  beginShape();
  vertex(110,300);
  vertex(90,150);
  vertex(300,150);
  vertex(270,300);
  endShape();
  
  triangle(60,150,190,40,330,150);
  fill(255,255,0);
  
  //window
  rect(130,170,40,50);
  rect(210,170,40,50);
  strokeWeight(5);
  line(150,170,150,220);
  line(230,170,230,220);
  line(130,200,170,200);
  line(200,200,250,200);
  noStroke();
  fill(255);
  ellipse(800,100,150,150);
}

void mousePressed(){
  if(mousePressed==true){
     count++;
     if(count>2){
      count=1; 
     }
  }
}
