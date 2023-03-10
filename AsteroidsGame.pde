int numStars = 200; //number of stars
ArrayList<Star> aStar = new ArrayList<Star>();

void setup() {
  size(500,500);
  background(0);
  
}

void draw() {
  background(0);
  for (int i = 0; i < numStars; i++) {
    aStar.add(new Star());
    aStar.get(i).show();
  }
  
  joe.show();
  joe.move();
}

Spaceship joe = new Spaceship();

public void keyPressed() {
  //hyperspace
  if (key == ' ') {
    joe.setXspeed(0);
    joe.setYspeed(0);
    joe.setMyCenterX((int)(Math.random()*width));
    joe.setMyCenterY((int)(Math.random()*height));
    }
  //rotate left
  else if (key == 'q') {
    joe.turn(-12);
  }
  //rotate right
  else if (key == 'e') {
    joe.turn(12);
  }
  //accelerate
  else if (key == 'w') {
    joe.accelerate(1.0);
  }
}
    
