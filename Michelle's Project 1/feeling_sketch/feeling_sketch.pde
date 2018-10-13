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
void setup() {
  size(900,900); 
}

void draw() {
  
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
       background(30,30,70);
     hauntedHouse();
     if(scale>61){
           background(255,255,0);
           scale=62;
              ghostFace();
        if(size>1){
        size-=0.001;
        }
        
        sec++;
        if(sec<150 && sec>45){
         if(xSmile<500){
             xSmile+=5;
             ySmile+=5;
         }
        }
           if(sec>170 && sec%10==0 && sec < 300){
             frameRate(5);
           background(0);
         angryFace();
       }
       
       if(sec >350){
             angryFace();
       }
       
     }
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
  }
}
