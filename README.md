please check indidual models/scheme/app controller for more details 


currently the back end is set up as follows 

Tables 

Game Instance 
PLayers 
Xes 
OS
______________________________________________________________________________________________
relationships 

xs and os 
belongs to player  and game insstances 

players/ gameinstance 

has many xss and os 
has many of the other through xes and os 


This is overly complicated, but I couldnt get it to work otherwise. 
_____________________________________________________________----
 
MODELS 
all models have the relationship methods 
the has many_through is done diffrently than we usssualy do but it works

Game instance has a method too determian which player won an instance 

Player has methods to determain how many total wins/loses a player has || and methods to add wins to the total wins colum ---------curently not in use 

_____________________________________________________________________________
Controller 

All is in Application controller----- may divede  into more controllers later
Currently how it is set up 
When we want to make a new player it will take a post request to add the player to the database

When a game starts --- it makes a post request and creates a new game instance table row as well as an x row and a o row 
when a game ends  it needs three patch requests 
one will - update the game instance with the winner/loser
two will update the players ---- one the winner one the loser
once I have a better idea of what the frontedn will be I can update this more

_____________________________________________________________________________________________________________


TO DO ________________________________________________________________________________
controller --- several pages
Tables ------ on game instance it might make sense to have a playerx and a playero tables----- the functions seem to work all the same but it might be good practice
Over all we need to build out everything more 









