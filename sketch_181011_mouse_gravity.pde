int d = 100;

void setup() {
  size(360, 640);
}

void draw() {
  int factor = 7;
  float deltaDx = mouseX - width/2;
  float deltaDy = mouseY - height/2;
  // float sqrtDx = pow(deltaDx,powI);
  // float sqrtDy = pow(deltaDy,powI);
  float sqrtDx = sqrt(deltaDx);
  float sqrtDy = sqrt(deltaDy);
  if (deltaDx<0) {
    // sqrtDx = 0 - pow(abs(deltaDx),powI);
    sqrtDx = 0 - sqrt(abs(deltaDx));
    if (deltaDy<0) {
      // sqrtDy = 0 - pow(abs(deltaDy),powI);
      sqrtDy = 0 - sqrt(abs(deltaDy));
    }
  }
  if (deltaDy<0) {
    // sqrtDy = 0 - pow(abs(deltaDy),powI);
    sqrtDy = 0 - sqrt(abs(deltaDy));
  }
  println("sqrtDx: "+sqrtDx);
  println("sqrtDy: "+sqrtDy);
  background(255);
  fill(20);
  ellipse(width/2 + factor*sqrtDx, height/2 + factor*sqrtDy, d, d);
  fill(255);
  ellipse(width/2, height/2, 5, 5);
}
