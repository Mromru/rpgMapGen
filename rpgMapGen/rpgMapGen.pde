
void setup(){
  size(600,600);
  thread("generate");
}

boolean loading = true;
float progress = 0.0f; //max, when 1.0
int[][] array;

void addProgress(int percentage){
  progress += percentage * 0.01f;
  if(progress >= 1.0f) loading = false;
}

void forceEndLoading(){
   progress = 1.0f;
   loading = false;
}

void draw(){
   background(color(255,0,255));
   
   if(loading){
     noStroke();
     fill(255);
     rect(200,280,200,20);
     fill(color(0,0,255));
     rect(200,280,progress*200,20);
   }
   else{
     showMap();
   }
}
