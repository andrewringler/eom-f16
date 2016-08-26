String filename = "US_Races.csv";
String[] allData;

ArrayList<Election> allElections = new ArrayList<Election>();
ArrayList<Candidate> allCandidates = new ArrayList<Candidate>();

void setup() {
  parseData();
}

void draw() {
  
}

void parseData() {
  allData = loadStrings(filename);
  //printArray(allData);
 
  int[] years = int(allData[0].split(","));
  String[] names = allData[1].split(",");
  
  // for each column, compare the year value and create the correct objects
  for(int column=1; column<years.length; column++) {
    int electionYear = years[column];
    Election thisElection;
    Candidate thisCandidate;
   
    // if the year is the same as the prev column,
    // add this candidate to the last election object
    if(electionYear == years[column-1]) {
       thisElection = allElections.get(allElections.size()-1);
       thisCandidate = new Candidate(names[column], electionYear, thisElection.totalCandidates +1);
       thisElection.totalCandidates += 1;
       
       println("New Candidate added to" + electionYear);
       println(names[column]);
    } else {
    // if the year is NOT the same as the prev column,
    // create a new election and add the first candidate
       thisElection = new Election(electionYear);
       thisCandidate = new Candidate(names[column], electionYear, 1);
       
       println("New Election Created");
       println(electionYear + " : " + names[column]);
    }
    
    // for every row of data, match the candidate with the value for that row
    for(int i=2; i<allData.length; i++) {
      String[] thisRow = allData[i].split(",");
      String title = thisRow[0];
      int value = int(thisRow[column]);
      Category thisCategory = new Category(title, value);
      thisCandidate.categories.add(thisCategory);
    }
    
    thisElection.index = allElections.size();
    thisElection.candidates.add(thisCandidate);
    allElections.add(thisElection);
    allCandidates.add(thisCandidate);
    
    for(Candidate c : allCandidates) {
      if(c.name.contains("Obama")) {
        for(Category cat : c.categories) {
          println(cat.title + " : " + cat.value); 
        }
      } 
    }
    
  }
 
}