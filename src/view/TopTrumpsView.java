package view;

import listeners.NextCategoryListener;
import listeners.NextRoundListener;
import listeners.StartGameListener;
import listeners.UserSelectionListener;
import listeners.ViewStatisticsListener;

public interface TopTrumpsView {
	// Interface that the CLI and Website should implement.
	
	
	// Things the view will need to display to the user
	public void showMainMenu();
	
	
	// Below are ways that the view will notify the controller that the user has
	// made a decision.	
	public void addStartGameListener(StartGameListener listener);

	public void addViewStatisticsListener(ViewStatisticsListener listener);

	public void addNextCategoryListener(NextCategoryListener listener);

	public void addUserSelectionListener(UserSelectionListener listener);

	public void addNextRoundListener(NextRoundListener listener);

	
	
	// Start the action->controller->model->view loop, this is called once the MVC objects have been initialised.
	//public void run();


}
