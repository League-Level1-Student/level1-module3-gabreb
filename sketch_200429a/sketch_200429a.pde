int lowerY = 60;
int pipeGap = 90;
int upperPipeHeight = 350;
int y = 0;
int x = 250;
int q = 470;
int birdYVelocity = 50;
int gravity = 2;
void setup () {
size(500, 500);
}

void draw () {
y = y+gravity;
q = q - 1; 
background(#10E8C9);
fill(#E8D310);
stroke(0, 0, 0);
ellipse(x, 250+y, 50, 50);
fill(0, 150, 0);
rect(q, 0, 40, upperPipeHeight);
teleportPipes();
fill(0, 150, 0);
rect(q, lowerY, 40, lowerY);
}
void mousePressed () {
  y = y-birdYVelocity;
}
void teleportPipes () {
 if (q==0) {
   q = 470;
   upperPipeHeight = (int) random(100, 400);
   lowerY = upperPipeHeight + pipeGap;
 }
}
