void setup() {
  size(500,500);
}

void draw() {
  background(0);
  fill(255,0,0,125);
  ellipse(mouseX,mouseY,40,40);
  //fill(100,100,80); 
  rect(100,100,200,200);
  //fill(255,255,0,200);
  rect(150,150,300,300);
  
  text(mouseX,50,50);
}


