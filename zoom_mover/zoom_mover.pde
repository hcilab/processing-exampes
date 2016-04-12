SImage[] p = new SImage[5];
boolean changed = false;
void setup()
{
  println(dataPath(""));
  size(1000,800);
  for (int i = 0; i < 5; i++)
  {
    p[i] = new SImage(dataPath((i+1)+".jpg"),10 + (200 * i), 100, 100, 100);
    
  }
}

void draw()
{
  //it is important to set the background this
  //erases previous images
  background(100);

  int translateX = 0;
  int translateY = 0;
  
  if (keyPressed && key == CODED){
     if (keyCode == UP)
     {
       translateY = -10;
     }
     
     else if (keyCode == DOWN)
     {
       translateY = 10;
     }
     
     if (keyCode == LEFT)
     {
       translateX = -10;
     }
     
     else if (keyCode == RIGHT)
     {
       translateX = 10;
     }
  }

  for (int i = 4; i >= 0; i--)
  {    
     
    if (p[i].contains(mouseX, mouseY))
    {
        p[i].resize(0,200);
        
        if (mousePressed && !changed)
        {
          p[i].toggleSelect();
          changed = true;
        }
        else if (mousePressed && changed);
        else
          changed = false;
    }
    
    else
    {
        p[i].resize(0,100);
    }
    
    if (p[i].selected)
    {
      p[i].translate(translateX, translateY);
    } 
    p[i].display();
 
  }
}

class SImage {
  public int x, y, h, w;
  public PImage img;
  public boolean selected;
  private String path;
  
  SImage(String path, int x, int y, int w, int h) {
    this.path = path;
    img = loadImage(path);
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    selected = false;
  }
  
  void display()
  {
    if (selected)
    {
      color(225,0,0);
      rect(x-5, y-5, w+10, h+10);
    } 
    image(img, x, y, w, h);
  }

  boolean contains(int x1, int y1)
  {
     return ((x <= x1 && (x+w) >= x1) && (y <= y1 && y1 <= (y+h))); 
  }
  
  void resize(int newW, int newH)
  {
    img.resize(newW, newH);
    w = img.width;
    h = img.height;
    
    img = loadImage(path);
  }
  
  void translate(int dx, int dy)
  {
    this.x += dx;
    this.y += dy;
  }
  
  void toggleSelect()
  {
    selected = !selected;
  }
}