//why the bananas are cloning?

Gif banana1, banana2, pond; //Gif class and the 3 gif variables created
PImage[] gif;

void setup() {
  size(800, 600);

  pond    = new Gif("koi_pond/frame_", "_delay-0.16s.gif", 16, 5, 0, 0, width, height); //calling constructor, creating new gif, storing it in the variables
  //( folder name/ string before , string after , int #num frames, int speed, int x, int y)
  // ( folder name/ string before , string after , int #num frames, int speed (1 fastest, 10 slowest), int x, int y, int width, height) //w and height is for the size of the gif, if full page do w, h/ if smalle write 50,50
  banana1 = new Gif("dancing_banana/frame_", "_delay-0.1s.gif", 8, 1, 0, 0); //width and height will be regular deafault
  banana2 = new Gif("dancing_banana/frame_", "_delay-0.1s.gif", 8, 10, 300, 0, 100, 100); //w and h is 50 
}

void draw(){
  pond.show();
  banana1.show();
  banana2.show();
  
  
}
