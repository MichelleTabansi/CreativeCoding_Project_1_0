int count = 0;
float scale = 1;
float xPan = 0;
float yPan = 0;
int xCor =130;
int yCor =170;

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
