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
  return 0;
}

void design (){
  fill (random(0,255), random(0,255), random(0,255));
  ellipse (random (width), random (height), random (50, 100), random (50, 100));
  fill (255);
  rect(200, 100,100,100);
  rect(500, 100, 100, 100);
  rect(350, 250, 100, 100);
  arc (width/2, 400, 350, 300, 0, PI,CHORD );  
  if (mousePressed){
    background (255, 0, 0);
    ellipse (mouseX, mouseY, 50, 50);
  }
}