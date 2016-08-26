/*
Show data turnout over time
 as a line graph
 
 Data Source
 http://www.electproject.org/national-1789-present
 
 Google Spreadsheet of Data
 https://docs.google.com/spreadsheets/d/1bH38j6_e8yA9xq8OMlyLOL6h_iTS7ABQMKNxzFgKBDo/edit#gid=435419492
 
 I downloaded the data from the Google Sheet page by
 clicking File -> Download as -> Comma-separated values
 then saving to this Sketch's data directory and renaming to voter_turnout.csv
 
 I then loaded in Excel and deleted the 3rd and 4th columns
 you can also do this in Google Sheets before downloading
 */

Table voterTurnout;
int START_YEAR = 1789;
int END_YEAR = 2012;

void setup() {
  size(600, 300);
  background(255);
  textAlign(CENTER);
  voterTurnout = loadTable("voter_turnout.csv", "header, csv");

  fill(80);
  noStroke();
  // Draw x-axis tick labels
  for (int x=25; x<width-25; x+=75) {
    int year = round(map(x, 0, width, START_YEAR, END_YEAR));
    text(year, x, height-30);
  }
  text("Year", width/2.0, height-10); // draw axis title

  // Draw y-axis tick labels
  for (int y=25; y<height; y+=75) {
    int rate = round(map(y, 0, height, 100, 0));
    text(rate, 30, y);
  }
  pushMatrix();
  translate(10, height/2.0);
  rotate(HALF_PI);
  text("Turnout Rate", 0, 0); // draw axis title
  popMatrix();
  
  // Draw Chart Title
  fill(0);
  text("United States Presidential VEP Turnout Rate", width/2.0, 20);

  // Plot a datapoint for each year
  for (TableRow row : voterTurnout.rows()) {    
    float year = row.getFloat("Year");
    float voterTurnoutValue = row.getFloat("United States Presidential VEP Turnout Rate");

    // assume our data is sorted by year 1789 to 2012
    // voter turnout can range from 0 to 100 percent
    float x = map(year, START_YEAR, END_YEAR, 0, width);
    float y = map(voterTurnoutValue, 0, 100, height, 0);
    fill(0, 200, 0, 150);
    stroke(0, 100);
    rect(x, y, 8, 8);
  }
}
