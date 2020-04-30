Car b = new Car(40, 260, 200);
Car c = new Car(0, 143, 120);
Car d = new Car(600, 300, 150);
Car e= new Car(0, 370, 200);
Car f= new Car(400, 200, 300);
Car a = new Car(250,70,300);
int x = 400;
int y = 550;
void setup() {
  size(800, 600);
}

void draw() {
  background(100, 100, 100);
  fill(0, 150, 0);
  ellipse(x, y, 30, 30);
  b.display("");
  c.display("-");
  d.display("");
  e.display("-");
  f.display("-");
  a.display("");
  intersects(a);
  intersects(b);
  intersects(c);
  intersects(d);
  intersects(e);
  intersects(f);
  if (intersects(a)||intersects(b)||intersects(c)||intersects(d)||intersects(e)||intersects(f)==true) {
  System.exit(0);
  }
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    { 
      y = y- 20;
      offScreen();
    } else if (keyCode == DOWN)
    { 
      y = y+20; 
      offScreen();
    } else if (keyCode == RIGHT)
    {
      x=x+20;
      offScreen();
    } else if (keyCode == LEFT)
    {
      x=x-20;
      offScreen();
    }
  }
}
void offScreen() {
  if (x+10>=800) {
    x -=20;
  } else if (x-10<=0) {
    x+=20;
  } else if (y+10>=600) {
    y-=20;
  } else if (y-10<=0) {
    System.out.println("You win");
  }
}
class Car {
  int CarX;
  int CarY;
  int size;
  
  void display(String Direction) {
    fill(0, 255, 0);
    rect(CarX, CarY, size, 50);
    if (Direction=="-") {
      CarX -= 5;
       if (CarX<=0) {
         CarX = 850;
       }
    }
    else {
    CarX +=5;
     if (CarX>=width) {
      CarX = -50;
    }
    }
  }
   
  Car(int CarX, int CarY, int size) {
    this.CarX = CarX;
    this.CarY = CarY;
    this.size = size;
  }
  int getX() {
    return CarX;
  }
  int getY() {
    return CarY;
  }
  int getSize() {
    return size;
  }
}
boolean intersects(Car car) {
 if ((y > car.getY() && y < car.getY()+50) &&
                (x > car.getX() && x < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}
