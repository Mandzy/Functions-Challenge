void setup() {
  size (800, 600);
}

void draw () {
  println (findMissingSide (30, 90, 'c'));
  println (usingKineticEquation (20, 30, 'k'));
  design ();
}


float findMissingSide (float j, float k, char choice) {
  float result;
  if (choice == 'a') {
    result = sqrt(sq(k) - sq(j));
    return result;
  }
  if (choice == 'b'){
    result = sqrt(sq(k) - sq(j));
    return result;  
  }
  if (choice == 'c'){
    result = sqrt(sq(k) + sq(j));
    return result;
  }
  println("Make a valid choice");
  return 0;
}

float usingKineticEquation (float x, float y, char value) {
  float answer;
  if (value == 'k') {
    answer = .5*x*sq(y);
    return answer;
  }
  if (value == 'm') {
    answer = 2*x/sq(y); 
    return answer;
  }
  if (value == 'v'){
    answer = sqrt(2*x/y);
    return answer;
  }
  println("Make a valid choice");
  return 90;
}

void design (){
  ellipse (random (width), random (height), random (50, 100), random (50, 100));
  
  
  
  
}