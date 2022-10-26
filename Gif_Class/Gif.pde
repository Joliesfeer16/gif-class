class Gif {

  //instance variable
  int x, y, w, h;
  int numFrames;
  int speed;
  String before;
  String after;
  int type;
  int o;
  PImage[] gif;

  //constructor (button without w, h)
  Gif (String b, String a, int n, int s, int _x, int _y) {
    x= _x;
    y= _y;
    numFrames = n;
    speed = s;
    before= b;
    after = a;
    type =1;
    gif= new PImage [n];


    int j=0;
    while (j< numFrames) {
      gif[j] = loadImage(b +j+ a);
      j++;
    }

    w= gif[0].width;
    h= gif[0].height;
  }

  //constructor (button without w, h)
  Gif (String b, String a, int n, int s, int _x, int _y, int _w, int _h) {
    x= _x;
    y= _y;
    w= _w;
    h= _h;
    numFrames = n;
    speed = s;
    before= b;
    after = a;
    type=2;
    gif= new PImage [n];


    int j=0;
    while (j< numFrames) {
      gif[j] = loadImage(b +j+ a);
      j++;
    }
  }

  void show() {
    if (type==1) {
      drawGif();
    } else if (type==2) {
      drawGifwh();
    }
  }

  void drawGif() {
    image(gif[o], x, y);
    if (frameCount % speed == 0) o= o+1;
    if (o== numFrames) o=0;
  }



  void drawGifwh() {
    image(gif[o], x, y, w, h);
    if (frameCount % speed == 0) o= o+1;
    if (o== numFrames) o=0;
  }
}
