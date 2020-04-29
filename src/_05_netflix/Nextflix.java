package _05_netflix;

public class Nextflix {
public static void main(String[] args) {
	Movie Terminator = new Movie("Terminator", 5);
	Movie Alien = new Movie("Alien", 5);
	Movie Predator = new Movie("Predator", 5);
	Movie SilentPlace = new Movie("SilentPlace", 4);
	Movie KillBill = new Movie("KillBill", 5);
	System.out.println(Terminator.getTicketPrice());
	System.out.println(Alien.getTicketPrice());
	System.out.println(Predator.getTicketPrice());
	System.out.println(SilentPlace.getTicketPrice());
	System.out.println(KillBill.getTicketPrice());
	NetflixQueue q = new NetflixQueue();
	q.addMovie(Terminator);
	q.addMovie(Alien);
	q.addMovie(Predator);
	q.addMovie(SilentPlace);
	q.addMovie(KillBill);
	q.printMovies();
	System.out.println();
	System.out.println("The best movie is " + q.getMovie(0));
	System.out.println("The second best movie is " + q.getMovie(1));
	
}
}
