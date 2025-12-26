class ProjectCalc{
  // Property
  double  gps;
  double  GSM;
  double  LCD;
  double  adapter;
  // using a constructor
  ProjectCalc(this.gps, this.GSM, this.LCD, this.adapter);
  // Method
  double totalCost(){
    return gps + GSM + LCD + adapter;
  }
}

void main(){
  // Creating an object
  ProjectCalc Project1 = ProjectCalc(10, 20, 30, 40);

  double cost =  Project1.totalCost();
  print("Total cost of Project 1: $cost");

}