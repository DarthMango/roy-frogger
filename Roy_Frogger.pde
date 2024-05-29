Frog frog;
Car[] cars;

float grid = 50;

void setup(){
  size(500, 500);
  frog = new Frog(width/2-grid/2, height-grid, grid);
  
  int index = 0;
    cars = new Car[4];
  // ROW 1
  for (int i = 0; i < 2; i++){
    float x = i * 200;
  cars[index] = new Car(x, height-grid*3, grid, grid); 
  index++;
}

  // ROW 2
  for (int i = 0; i < 2; i++){
    float x = i * 300;
  cars[index] = new Car(x, height-grid*2, grid*2, grid); 
  index++;
}
}

void draw(){
  background(0);
  frog.show();
  for(Car car : cars){
  car.show();
  car.update();
}
}

void keyPressed(){
  
  if(keyCode == UP){
  frog.move(0,-1);
} else if (keyCode == DOWN){
  frog.move(0,1);
} else if (keyCode == RIGHT){
  frog.move(1,0);
} else if (keyCode == LEFT){
  frog.move(-1,0);
}
}
