class Car extends Rectangle{
  float speed;
  
  Car(float x, float y, float w, float h) {
   super(x, y, w, h);
   speed = 2;
 }
 
 void update(){
   x = x+speed;
   
   if(x > width+grid){
     x = -w-grid;
   }
 }
  
  void show(){
   fill(200);
   rect(x, y, w, h);
 }
}
