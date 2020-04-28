package _01_intro_to_static;

public class RunnerRunner {
	 public static void main(String[] args) {
	      Runner Gaby = new Runner("Gaby is the best", 90);
	      System.out.println("Your runner's name is " + Gaby.name + "; Your runner's bid number is " + Gaby.bibNumber + "Your runner's race location is " + Gaby.raceLocation);
	      System.out.println(Gaby.bibNumber);
	      Runner DanielisSlow = new Runner("Daniel",45);
	      System.out.println(DanielisSlow.bibNumber);
	    }
}
