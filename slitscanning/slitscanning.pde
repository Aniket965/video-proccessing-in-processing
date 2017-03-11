import processing.video.*;
Capture video;
int x = 0;
void setup() {
  size(640,240);
  video = new Capture(this,320,240);
  video.start();
}
void  captureEvent(Capture event){
  video.read();
}

void draw() {
  copy(video,video.width/2,
    0,
    1,
    video.height,
    x,
    0,
    1,
    video.height);
    x++;
    if(x>width){
      x=0;

    }
  //image(video,0,0);
}
