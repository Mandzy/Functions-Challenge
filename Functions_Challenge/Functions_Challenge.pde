void setup() {
  size (800, 600);
}

void draw () {
  // print on the line the value of c
  println (findMissingSide (30, 90, 'c'));
  //print on the line the value of k
  println (usingKineticEquation (20, 30, 'k'));
  //design function
  design (random (width), random (height), random (50, 100));
}

//findMissingSide function
//uses sq(a)+sq(b)=sq(c)
float findMissingSide (float j, float k, char choice) {
  float result;
  //solves for a
  if (choice == 'a') {
    result = sqrt(sq(k) - sq(j));
    return result;
  }
  //solves for b
  if (choice == 'b'){
    result = sqrt(sq(k) - sq(j));
    return result;  
  }
  //solces for c
  if (choice == 'c'){
    result = sqrt(sq(k) + sq(j));
    return result;
  }
  //if the variable is not a, b, or c 
  println("Make a valid choice");
  return 0;
}

//definition of the usingKineticEquation
//uses k=m*sq(v)
float usingKineticEquation (float x, float y, char value) {
  float answer;
  //solves for k
  if (value == 'k') {
    answer = .5*x*sq(y);
    return answer;
  }
  //solves for m
  if (value == 'm') {
    answer = 2*x/sq(y); 
    return answer;
  }
  //solves for v
  if (value == 'v'){
    answer = sqrt(2*x/y);
    return answer;
  }
  //if the variable is not k, m, or v
  println("Make a valid choice");
  return 0;
}
//definition of the design function
void design (float x, float y, float diam){
  fill (random(0,255), random(0,255), random(0,255));
  ellipse (x, y, diam, diam);
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