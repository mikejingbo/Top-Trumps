
<html>

	<head>
		<!-- Web page title -->
    	<title>Top Trumps</title>
    	
    	<!-- Import JQuery, as it provides functions you will probably find useful (see https://jquery.com/) -->
    	<script src="https://code.jquery.com/jquery-2.1.1.js"></script>
    	<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
    	<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/flick/jquery-ui.css">

		<!-- Optional Styling of the Website, for the demo I used Bootstrap (see https://getbootstrap.com/docs/4.0/getting-started/introduction/) -->
		<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/TREC_IS/bootstrap.min.css">
    	<script src="http://dcs.gla.ac.uk/~richardm/vex.combined.min.js"></script>
    	<script>vex.defaultOptions.className = 'vex-theme-os';</script>
    	<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/assets/stylesheets/vex.css"/>
    	<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/assets/stylesheets/vex-theme-os.css"/>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	</head>

    <body onload="initalize()"> <!-- Call the initalize method when the page loads -->
    	  <!--CSS for Game Screen-->
            <style>
                    .categoryButtons {
                        position: absolute;
                    right: 800;
                    bottom: 100;
                    left: 0;
                        font: italic;
                        text-align: center;
                    }
                    #nextButton {
                        position: absolute;
                    right: 0;
                    bottom: 100;
                    left: 1100;
                        font: italic;
                        text-align: center;
                    }
                    
                    
                </style>
    	<div class="container">
<br/>
		<div id="playing-cards" class="container">
<div class="card-deck">
        <div  class="card border-success" id="card1" style="width: 18rem;">
            <div class="card-header text-center text-white bg-success mb-3" style="max-width: 18rem;">
                <h5>Player</h5>
                <p id="numCard1"></p>
            </div>
            <div class="card-name text-center">
                    <h5 id="cardName1"></h5>
                </div>
                <div class="card-body">
                  
                  <p class="card-attributes">
                      <ul>
                        <li id="attributeA1"></li>
                        <li id="attributeA2"></li>
                        <li id="attributeA3"></li>
                        <li id="attributeA4"></li>
                        <li id="attributeA5"></li>
                      </ul>
                  </p>
                </div>
              </div>

              <div class="card border-danger" id="card2" style="width: 18rem;">
                    <div class="card-header text-center text-white bg-danger mb-3" style="max-width: 18rem;">
                        <h5>AI Player 1 (Computer1)</h5>
                        <p id="numCard2"></p>
                    </div>
                    <div class="card-name text-center">
                        <h5 id="cardName2"></h5>
       
                        </div>
                        <div class="card-body">
                          
                          <p class="card-attributes">
                              <ul>
                                  <li id="attributeB1"></li>
                        <li id="attributeB2"></li>
                        <li id="attributeB3"></li>
                        <li id="attributeB4"></li>
                        <li id="attributeB5"></li>
                              </ul>
                          </p>
                        </div>
                      </div>

                      <div class="card border-danger" style="width: 18rem;">
                            <div class="card-header text-center text-white bg-danger mb-3" id="card3" style="max-width: 18rem;">
                                <h5>AI Player 2 (Computer2)</h5>
                                <p id="numCard3"></p>
                            </div>
                            <div class="card-name text-center">
                                <h5 id="cardName3"></h5>
                                </div>
                                <div class="card-body">
                                  
                                  <p class="card-attributes">
                                      <ul>
                                         <li id="attributeC1"></li>
                        <li id="attributeC2"></li>
                        <li id="attributeC3"></li>
                        <li id="attributeC4"></li>
                        <li id="attributeC5"></li>
                                      </ul>
                                  </p>
                                </div>
                              </div>

                              <div class="card border-danger" style="width: 18rem;">
                                    <div class="card-header text-center text-white bg-danger mb-3" id="card4" style="max-width: 18rem;">
                                        <h5>AI Player 3 (Computer3)</h5>
                                        <p id="numCard4"></p>
                                    </div>
                                    <div class="card-name text-center">
                                        <h5 id="cardName4"></h5>
                                        </div>
                                        <div class="card-body">
                                          
                                          <p class="card-attributes">
                                              <ul>
                                                <li id="attributeD1"></li>
                        <li id="attributeD2"></li>
                        <li id="attributeD3"></li>
                        <li id="attributeD4"></li>
                        <li id="attributeD5"></li>
                                              </ul>
                                          </p>
                                        </div>
                                      </div>

                                      <div class="card border-danger" style="width: 18rem;">
                                            <div class="card-header text-center text-white bg-danger mb-3"  style="max-width: 18rem;">
                                                <h5>AI Player 4 (Computer4)</h5>
                                                <p id="numCard5"></p>
                                            </div>
                                            <div class="card-name text-center">
                                                    <h5 id="cardName5"></h5>
                                                </div>
                                                <div class="card-body">
                                                  
                                                  <p class="card-attributes">
                                                      <ul>
                                                          <li id="attributeE1"></li>
                        <li id="attributeE2"></li>
                        <li id="attributeE3"></li>
                        <li id="attributeE4"></li>
                        <li id="attributeE5"></li>
                                                      </ul>
                                                  </p>
                                                </div>
                                              </div>
      
</div>
<button type="button" id="nextButton" onclick="updateGame();" class="btn btn-primary btn-lg">Next</button>
<div  class="categoryButtons" id="categoryButtons">                                       
        <button id="sizeButton" onclick="response(0); humanCategory();">Size</button>
        <button id="speedButton" onclick="response(1); humanCategory();">Speed</button>
        
		<button id="rangeButton" onclick="response(2); humanCategory();">Range</button>
		<button id="firePower" onclick="response(3); humanCategory();">Firepower</button>
        <button id="cargoButton" onclick="response(4); humanCategory();">Cargo</button>
        
    </div>  
 
    
</div><br/><br/><br/>
<div class="mx-auto" style="width: 200px;">
        <div class="card border-primary mb-3" style="width: 18rem;">
                <div class="card-header text-center text-white bg-primary mb-3" style="max-width: 18rem;">
                    <h5 id="activePlayer"></h5>
                    <p id="communalPile"></p>
                    <p id="roundNumber"></p>
                </div>
                <div class="card-body text-center">
                        <h5 id="announce"></h5><br/>
                        <p id="announce2"></p>
                    </div>
                  </div><br/><br/>
      </div>	
		
		</div>
		
		<script type="text/javascript">
		
			// Method that is called on page load
			function initalize() {
				startGame();
				player1Card();
             player2Card();
             player3Card();
             player4Card();
             player5Card();
             getCommunalPile();
             getActivePlayer();
             getRoundNumber();
                 
     
				
			}
			
			// -----------------------------------------
			// Add your other Javascript methods Here
			// -----------------------------------------
		
			// This is a reusable method for creating a CORS request. Do not edit this.
			function createCORSRequest(method, url) {
  				var xhr = new XMLHttpRequest();
  				if ("withCredentials" in xhr) {
    				// Check if the XMLHttpRequest object has a "withCredentials" property.
    				// "withCredentials" only exists on XMLHTTPRequest2 objects.
    				xhr.open(method, url, true);
  				} else if (typeof XDomainRequest != "undefined") {
    				// Otherwise, check if XDomainRequest.
    				// XDomainRequest only exists in IE, and is IE's way of making CORS requests.
    				xhr = new XDomainRequest();
    				xhr.open(method, url);
 				 } else {
    				// Otherwise, CORS is not supported by the browser.
    				xhr = null;
  				 }
  				 return xhr;
			}
			
			function startGame() {
			 
           
             document.getElementById('announce2').innerHTML="";
             var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=true"); // Request type and URL
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    var roundOver = responseText.roundHasBeenResolved;
                    var roundWinnerIndex = responseText.roundWinnerIndex;
                    if (roundWinnerIndex >=0 && roundOver==true) {
                    
                    document.getElementById('announce2').innerHTML="The round is over and the winner is " + responseText.roundWinnerString;
                    } else if (roundWinnerIndex == 0 && roundOver== true){
                    document.getElementById('announce2').innerHTML="The round is over and the result is a draw.";
                    } else {
                    document.getElementById('announce2').innerHTML=" ";
                    }
                    
                };
                xhr.send();
                
                player1Card();
             player2Card();
             player3Card();
             player4Card();
             player5Card();
             getCommunalPile();
             getActivePlayer();
             getRoundNumber();
                
            }
            
			
			 function updateGame() {
			  
           
             document.getElementById('announce2').innerHTML="";
             var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=true"); // Request type and URL
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    var roundOver = responseText.roundHasBeenResolved;
                    var roundWinnerIndex = responseText.roundWinnerIndex;
                    if ((roundWinnerIndex == -1) && (roundOver== true)) {
                    
                    document.getElementById('announce2').innerHTML="The round is over and the result is a draw.";
                    
                    } else if ((roundWinnerIndex > 0)  && (roundOver== true)){
                    
                    document.getElementById('announce2').innerHTML="The round is over and the winner is " + responseText.roundWinnerString;
                    
                    } else if ((responseText.roundWinnerString == "User(You)")  && (roundOver== true)) {
                    document.getElementById('announce2').innerHTML="The round is over and you won the round.";
                    }
                    else {
                    document.getElementById('announce2').innerHTML=" ";
                    }
                     gameOver(); 
                };
                xhr.send();
                
                player1Card();
             player2Card();
             player3Card();
             player4Card();
             player5Card();
             getCommunalPile();
             getActivePlayer();
             getRoundNumber();
               
             
             
             
            }
            
                
            function gameOver() {
            
	            var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=false"); // Request type and URL
	                if (!xhr) {
	                    alert("CORS not supported");
	                }
	                xhr.onload = function(e) {
	                
	                    var responseText = JSON.parse(xhr.response); // the text of the response
	                    var playerCard = responseText.playersToJson[0].numberOfCards;
	                    var player2Card = responseText.playersToJson[0].numberOfCards;
	                    var player3Card = responseText.playersToJson[0].numberOfCards;
	                    var player4Card = responseText.playersToJson[0].numberOfCards;
	                    var player5Card = responseText.playersToJson[0].numberOfCards;
	                    var isGameOver = responseText.gameFinished;
	                   
	                    
	                    if ((isGameOver == true) && (playerCard == 0)) {
	               
	                    hideButtons();
	                    document.getElementById('nextButton').style.visibility = "hidden";
	                    alert("The game is over and the winner is " +responseText.gameWinnerString+". Thanks for playing!");
	                    window.location ='http://localhost:7777/toptrumps/';
	                    }
	                    else if ((isGameOver = true) && (player2Card == 0) && (player3Card == 0) && (player4Card == 0) && (player5Card == 0)){
	                    hideButtons();
	                    document.getElementById('nextButton').style.visibility = "hidden";
	                    alert("Congratulations, you won!");
	                    window.location ='http://localhost:7777/toptrumps/';
	                    }
	                    
	                    
	                    
	                };
	                xhr.send();
            }
			 
			 
            
            function getActivePlayer() {
                var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=false"); // Request type and URL
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    var playerIndex = responseText.playersTurnIndex;
                    if (playerIndex == 0) {
                    document.getElementById('nextButton').style.visibility = "hidden";
                    showButtons();
                  
                    document.getElementById('activePlayer').innerHTML="The active player is you.";
                    
                    
                    } else {
                    hideButtons();
                    document.getElementById('nextButton').style.visibility = "visible";
                    document.getElementById('activePlayer').innerHTML="The active player is AI Player " + playerIndex + ".";
                   	aiCategory();
                    }
                    
                    
                    
                };
                xhr.send();
            }
            function getCommunalPile() {
                var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=false"); // Request type and URL
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    document.getElementById('communalPile').innerHTML="Cards in Communal Pile: " +JSON.stringify(responseText.communityPileSize);
                    
                };
                xhr.send();
            }
            
            function getRoundNumber() {
                var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=false"); // Request type and URL
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    document.getElementById('roundNumber').innerHTML="Round Number: " +JSON.stringify(responseText.roundNumber);
                    
                };
                xhr.send();
                
            }
            
            function humanCategory() {
            
             var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=false"); // Request type and URL
                
                hideButtons();
                document.getElementById('nextButton').style.visibility = "visible";
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    var chosenCard = responseText.chosenCategory;
                    if (chosenCard == null) {
                    document.getElementById('announce').innerHTML="";
                    }
                    else {
                    document.getElementById('announce').innerHTML="You have chosen " +JSON.stringify(responseText.chosenCategory);
                    }
                };
                xhr.send();
                
            
            
            
            }
            function aiCategory() {
            
             var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=false"); // Request type and URL
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    document.getElementById('announce').innerHTML="The AI player has chosen " +responseText.chosenCategory;
                    
                };
                xhr.send();
            
            
            
            }
            
            function response(selection) {
             
             
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?selection="+selection+"&update=true"); // Request type and URL+parameters
				
				
				if (!xhr) {
  					alert("CORS not supported");
				}
				
				xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    var roundOver = responseText.roundHasBeenResolved;
                    var roundWinnerIndex = responseText.roundWinnerIndex;
                    if ((roundWinnerIndex == -1) && (roundOver== true)) {
                    
                    document.getElementById('announce2').innerHTML="The round is over and the result is a draw.";
                    
                    } else if ((roundWinnerIndex > 0)  && (roundOver== true)){
                    
                    document.getElementById('announce2').innerHTML="The round is over and the winner is " + responseText.roundWinnerString;
                    
                    } else if ((responseText.roundWinnerString == "User(You)")  && (roundOver== true)) {
                    document.getElementById('announce2').innerHTML="The round is over and you won the round.";
                    }
                    else {
                    document.getElementById('announce2').innerHTML=" ";
                    }
                     gameOver();  
				};
				
                xhr.send();	
                player1Card();
             player2Card();
             player3Card();
             player4Card();
             player5Card();
             getCommunalPile();
             getActivePlayer();
             getRoundNumber();	
             
               
                
			}
                  
                  function player1Card() {
                var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=false"); // Request type and URL
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    document.getElementById('numCard1').innerHTML="Cards: " +JSON.stringify(responseText.playersToJson[0].numberOfCards);
                    document.getElementById('cardName1').innerHTML = JSON.stringify(responseText.playersToJson[0].cardName);
                    document.getElementById('attributeA1').innerHTML ="Size: "+ JSON.stringify(responseText.playersToJson[0].size);
                    document.getElementById('attributeA2').innerHTML ="Speed: "+ JSON.stringify(responseText.playersToJson[0].speed);
                    document.getElementById('attributeA3').innerHTML ="Range: "+ JSON.stringify(responseText.playersToJson[0].range);
                    document.getElementById('attributeA4').innerHTML ="Firepower: "+ JSON.stringify(responseText.playersToJson[0].firepower);
                    document.getElementById('attributeA5').innerHTML ="Cargo: "+ JSON.stringify(responseText.playersToJson[0].cargo);
                };
                xhr.send();
            }
            function player2Card() {
                var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=false"); // Request type and URL
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    document.getElementById('numCard2').innerHTML="Cards: " +JSON.stringify(responseText.playersToJson[1].numberOfCards);
                    document.getElementById('cardName2').innerHTML = JSON.stringify(responseText.playersToJson[1].cardName);
                    document.getElementById('attributeB1').innerHTML ="Size: "+ JSON.stringify(responseText.playersToJson[1].size);
                    document.getElementById('attributeB2').innerHTML ="Speed: "+ JSON.stringify(responseText.playersToJson[1].speed);
                    document.getElementById('attributeB3').innerHTML ="Range: "+ JSON.stringify(responseText.playersToJson[1].range);
                    document.getElementById('attributeB4').innerHTML ="Firepower: "+ JSON.stringify(responseText.playersToJson[1].firepower);
                    document.getElementById('attributeB5').innerHTML ="Cargo: "+ JSON.stringify(responseText.playersToJson[1].cargo);
                };
                xhr.send();
            }
            function player3Card() {
                var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=false"); // Request type and URL
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    document.getElementById('numCard3').innerHTML="Cards: " +JSON.stringify(responseText.playersToJson[2].numberOfCards);
                    document.getElementById('cardName3').innerHTML = JSON.stringify(responseText.playersToJson[2].cardName);
                    document.getElementById('attributeC1').innerHTML ="Size: "+ JSON.stringify(responseText.playersToJson[2].size);
                    document.getElementById('attributeC2').innerHTML ="Speed: "+ JSON.stringify(responseText.playersToJson[2].speed);
                    document.getElementById('attributeC3').innerHTML ="Range: "+ JSON.stringify(responseText.playersToJson[2].range);
                    document.getElementById('attributeC4').innerHTML ="Firepower: "+ JSON.stringify(responseText.playersToJson[2].firepower);
                    document.getElementById('attributeC5').innerHTML ="Cargo: "+ JSON.stringify(responseText.playersToJson[2].cargo);
                };
                xhr.send();
            }
            function player4Card() {
                var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=false"); // Request type and URL
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    document.getElementById('numCard4').innerHTML="Cards: " +JSON.stringify(responseText.playersToJson[3].numberOfCards);
                    document.getElementById('cardName4').innerHTML = JSON.stringify(responseText.playersToJson[3].cardName);
                    document.getElementById('attributeD1').innerHTML ="Size: "+ JSON.stringify(responseText.playersToJson[3].size);
                    document.getElementById('attributeD2').innerHTML ="Speed: "+ JSON.stringify(responseText.playersToJson[3].speed);
                    document.getElementById('attributeD3').innerHTML ="Range: "+ JSON.stringify(responseText.playersToJson[3].range);
                    document.getElementById('attributeD4').innerHTML ="Firepower: "+ JSON.stringify(responseText.playersToJson[3].firepower);
                    document.getElementById('attributeD5').innerHTML ="Cargo: "+ JSON.stringify(responseText.playersToJson[3].cargo);
                };
                xhr.send();
            }
            function player5Card() {
                var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/response?update=false"); // Request type and URL
                if (!xhr) {
                    alert("CORS not supported");
                }
                xhr.onload = function(e) {
                    var responseText = JSON.parse(xhr.response); // the text of the response
                    document.getElementById('numCard5').innerHTML="Cards: " +JSON.stringify(responseText.playersToJson[4].numberOfCards);
                    document.getElementById('cardName5').innerHTML = JSON.stringify(responseText.playersToJson[4].cardName);
                    document.getElementById('attributeE1').innerHTML ="Size: "+ JSON.stringify(responseText.playersToJson[4].size);
                    document.getElementById('attributeE2').innerHTML ="Speed: "+ JSON.stringify(responseText.playersToJson[4].speed);
                    document.getElementById('attributeE3').innerHTML ="Range: "+ JSON.stringify(responseText.playersToJson[4].range);
                    document.getElementById('attributeE4').innerHTML ="Firepower: "+ JSON.stringify(responseText.playersToJson[4].firepower);
                    document.getElementById('attributeE5').innerHTML ="Cargo: "+ JSON.stringify(responseText.playersToJson[4].cargo);
                };
                xhr.send();
            }
			
			
			function hideButtons() {
                
                document.getElementById('categoryButtons').style.visibility = "hidden";
            }
			
			
			function showButtons() {
                
                document.getElementById('categoryButtons').style.visibility = "visible";
            }
			
						               	
		</script>
		</body>
</html>