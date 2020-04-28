package _01_intro_to_static;


public class Runner {
    static int nextBibNumber;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";
    String name;
    int speed;
    int bibNumber=0;

    Runner (String name, int speed){
        this.name = name;
        this.speed = speed;
        this.nextBibNumber++;
        this.bibNumber = nextBibNumber;
    }

   

	
}
