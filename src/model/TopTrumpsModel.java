package model;

import displayers.DisplayComputerTurn;
import displayers.DisplayUserDrewRound;
import displayers.DisplayUserLostGame;
import displayers.DisplayUserLostRound;
import displayers.DisplayUserOutOfGame;
import displayers.DisplayUserTurn;
import displayers.DisplayUserWonGame;
import displayers.DisplayUserWonRound;

public class TopTrumpsModel {
	/*
	 * Holds the data and logic for the application. Provides methods to interact
	 * with the game.
	 */

	private Database db = new Database();
	private Game game;
	private boolean writeToTestFile;

	public TopTrumpsModel(boolean writeToTestFile) {
		this.writeToTestFile = writeToTestFile;
	}

	public void playNewGame(int numOfPlayers) {
		game = new Game(numOfPlayers);
		
		if (writeToTestFile) game.writeTestFile();

		// Add Displayers to interact update the view
		game.addDisplayUserWonGame(displayUserWonGame);
		game.addDisplayUserLostGame(displayUserLostGame);
		game.addDisplayUserOutOfGame(displayUserOutOfGame);
		game.addDisplayUserWonRound(displayUserWonRound);
		game.addDisplayUserDrewRound(displayUserDrewRound);
		game.addDisplayUserLostRound(displayUserLostRound);
		game.addDisplayComputerTurn(displayComputerTurn);
		game.addDisplayUserTurn(displayUserTurn);
		
		game.startGame();
	}



	// Pass though methods to interact with the game.
	public void nextCategory() {
		game.nextCategory();
	}

	public void userSelection(int selectedCategory) {
		game.userSelection(selectedCategory);
	}

	public void startRound() {
		game.startRound();
	}

	public void setToAutoResolve() {
		game.setToAutoResolve();
	}
	

	

	// Pass through methods to get info about the game.
	// To communicate valid ways the user can interact.
	public boolean nextTurnPossible() {
		if (game == null) return false;
		return game.nextTurnPossible();
	}

	public boolean resolveUserTurnPossible() {
		if (game == null) return false;
		return game.resolveUserTurnPossible();
	}

	public boolean resolveComputerTurnPossible() {
		if (game == null) return false;
		return game.resolveComputerTurnPossible();
	}
	
	
	
	// Displayers that update view.
	private DisplayUserWonGame displayUserWonGame;
	private DisplayUserLostGame displayUserLostGame;
	private DisplayUserOutOfGame displayUserOutOfGame;
	private DisplayUserWonRound displayUserWonRound;
	private DisplayUserDrewRound displayUserDrewRound;
	private DisplayUserLostRound displayUserLostRound;
	private DisplayComputerTurn displayComputerTurn;
	private DisplayUserTurn displayUserTurn;

	public void addDisplayUserWonGame(DisplayUserWonGame displayer) {
		this.displayUserWonGame = displayer;
	}

	public void addDisplayUserLostGame(DisplayUserLostGame displayer) {
		this.displayUserLostGame = displayer;
	}

	public void addDisplayUserOutOfGame(DisplayUserOutOfGame displayer) {
		this.displayUserOutOfGame = displayer;
	}

	public void addDisplayUserOutOfGame(DisplayUserWonRound displayer) {
		this.displayUserWonRound = displayer;
	}

	public void addDisplayUserDrewRound(DisplayUserDrewRound displayer) {
		this.displayUserDrewRound = displayer;
	}

	public void addDisplayUserLostRound(DisplayUserLostRound displayer) {
		this.displayUserLostRound = displayer;
	}

	public void addDisplayUserTurn(DisplayUserTurn displayer) {
		this.displayUserTurn = displayer;
	}

	public void addDisplayComputerTurn(DisplayComputerTurn displayer) {
		this.displayComputerTurn = displayer;
	}
}
