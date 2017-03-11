import processing.video.*;
Capture video;
void setup(){
  size(600,400);
  video = new Capture(this,640,480,30);
  video.start();
}
void captureEvent(Capture video){
  video.read();
}
void draw() {
/* #1 */
//   if(video.available()){
//     video.read();
// }
  background(0);
  // tint(255,mouseY,mouseX);
  image(video,0,0,mouseX,mouseY);
}
