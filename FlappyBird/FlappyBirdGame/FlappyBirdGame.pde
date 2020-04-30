int score = 0;
int pipeGap = 150;
int  upperPipeHeight = (int) random(100, 400);
int lowerY = upperPipeHeight + pipeGap;
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
fill(0,0,0);
textSize(16);
text("Score: " + score, 20, 20);
fill(#E8D310);
stroke(0, 0, 0);
ellipse(x, 250+y, 50, 50);
fill(0, 150, 0);
rect(q, 0, 40, upperPipeHeight);
teleportPipes();
fill(0, 150, 0);
rect(q, lowerY, 40, 500-lowerY);
if (y>=228) {
  System.exit(0);
}
else if (y<=-250) {
   System.exit(0);
}
if (y+225<=lowerY-pipeGap&&x+23>=q&&x+23<=q+40) {
  System.exit(0);
}
else if (y+225>=lowerY&&x+23>=q&&x+23<=q+40) {
  System.exit(0);
}
else if(y+225>upperPipeHeight&&y+225<lowerY&&x+23==q+40) {
  score += 1;
}
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
