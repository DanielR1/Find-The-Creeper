import javax.swing.JOptionPane;
float creepX = random(600);
float creepY = random(600);
int i = 1;
int a=1;
  PImage background; 
PImage creeper;
void setup() {
  size(600, 600);
   background = loadImage("Desktop/trees.jpeg");
  background.resize(600, 600);
  background(background);
  creeper=loadImage("Desktop/creeper.png");
  creeper.resize(10, 10);
}
void draw () {
  frameRate(5);
  image(creeper, creepX, creepY);
  if (mousePressed && creepX < mouseX && mouseX < creepX+10 && creepY < mouseY && mouseY < creepY+10) {
    fill(0, 250, 0);
    ellipse(mouseX, mouseY, 10, 10);
    a=2;
  } else if (mousePressed && i<4) {
    fill(250, 0, 0);
    ellipse(mouseX, mouseY, 10, 10); 
    i +=1;
  }


  if (a==2) {
    JOptionPane.showMessageDialog(null, "Yay you found the creeper");
    a=1;
    background(background);
    background.resize(600,600);
    creepX=random(600);
    creepY=random(600);
    
  }
  if (i>=4) {
    JOptionPane.showMessageDialog(null, "Aww, you didn't find the creeper, you blew up xD");
    System.exit(1);
  }
  println (i);
}






