void setup()
{
  size (800, 500);
}

int x=0;
float y=0;
int i=0;
int j;
int cloud=0;
int cloud1=0;
int cloud2=0;
int cloud3=0;
int cloud4=0;

double randomValue1 = Math.random();
double randomValue2 = Math.random();
double randomValue3 = Math.random();
double randomValue4 = Math.random();
double randomValue5 = Math.random();

int random1()
{
  double randomValue = Math.random();
  int intValue = (int)(randomValue * 1000) + 1;
  return intValue;
}
int random2()
{
  double randomValue = Math.random();
  int intValue = (int)(randomValue * 1000) -600;
  return intValue;
}

int random3(double si)
{
  
  int intValue = (int)(si * 600) + 200;
  return intValue;
}
int random4(double si)
{
  int intValue = (int)(si * 40) +30;
  return intValue;
}
void draw()
{
  
  background(#555555);
  
  stroke(#D6D6D6);
  fill(#D6D6D6);
  ellipse(cloud++, 100, random3(randomValue1), random4(randomValue1));
  ellipse(cloud1+=3, 70, random3(randomValue2), random4(randomValue2));
  ellipse(cloud2+=6, 30, random3(randomValue3), random4(randomValue3));
  ellipse(cloud3+=9, 10, random3(randomValue4), random4(randomValue4));
  ellipse(cloud4+=12, 120, random3(randomValue5), random4(randomValue5));
  
  if(cloud > 1400)
  {
    cloud = 0;
    randomValue1 = Math.random();
  }
  if(cloud1 > 1400)
  {
    cloud1 = 0;
    randomValue2 = Math.random();
  }
  if(cloud2 > 1400)
  {
    cloud2 = 0;
    randomValue3 = Math.random();
  }
  if(cloud3 > 1400)
  {
    cloud3 = 0;
    randomValue4 = Math.random();
  }
  if(cloud4 > 1400)
  {
    cloud4 = 0;
    randomValue5 = Math.random();
  }
  
  stroke(#FFB74B);
  fill(#FFB74B);
  
  ellipse((int)ElipseX(i, 20, 370), (int)ElipseY(i, 20, 258), 10, 10);
  ellipse((int)ElipseY(i, 20, 370)+10, (int)ElipseX(i, 20, 258), 10, 10);  
  ellipse((int)ElipseX(i, 20, 370)+20, (int)ElipseY(i, 20, 258), 10, 10);
  ellipse((int)ElipseY(i, 20, 370)+30, (int)ElipseX(i, 20, 258), 10, 10);
  ellipse((int)ElipseX(i, 20, 370)+40, (int)ElipseY(i, 20, 258), 10, 10);
  ellipse((int)ElipseY(i, 20, 370)+50, (int)ElipseX(i, 20, 258), 10, 10);
  System.out.println("123123123 >>>>> " + (int) ElipseX(i, 20, 20) + " " + (int) ElipseY(i, 20, 20));
  i+=7;
  if(i>360) i=0;
  
  
  
  stroke(#00BF4A);
  fill(#00BF4A);
  rect(width/2-11, 288, 22, 80);
  
  stroke(185, 122, 87);
  fill(185, 122, 87);
  ellipse(width/2, height/2*4+12, 1300, 1300);
  
  stroke(#17FFEA);
  fill(#17FFEA);
  
  rotate(45);
  rect(random1(), random2(), 88, 11);
  rect(random1(), random2(), 88, 11);
  rect(random1(), random2(), 88, 11);
  rect(random1(), random2(), 88, 11);
  rect(random1(), random2(), 88, 11);
 
  
  
  x++;
  
  fill(#FFFF4D);
  stroke(#FFFF4D);
  
  for(y=0;y<360;y++)
  {
    rotate(y);
    rect(0, 0, 22, 80);
  }
  
    
  
}

float ElipseX(double degrees, int r, int d)
{
  double radians = Math.toRadians(degrees);
  return (float) Math.sin(radians)*r + d;
}

float ElipseY(double degrees, int r, int d)
{
  double radians = Math.toRadians(degrees);
  return (float) Math.cos(radians)*r + d;
}
