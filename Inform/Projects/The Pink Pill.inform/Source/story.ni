"The Pink Pill" by Ryan

Include Hybrid Choices by AW Freyr.

[While play testing, this game seemed pretty frustrating, so I figured I would give a warning to the player, just so they know what they are getting into.]
When play begins:
	say "WARNING: This game is going to be difficult, and will likely require multiple playthroughs in order to reach a successful outcome, unless you are incredibly clever. You must learn from your mistakes in the past to secure the future. The game is afoot! [paragraph break]
	
	You are Beth Davenport, an official at the Ministry of Transport, but that is not the important part of the story. You are out at a hotel on the south side of London, hoping to find a weary businessman to make the night less lonely, but your husband doesn't know that. You have been sitting at the bar for a few hours now, and with no prospects in sight, you are feeling that you might just be better off going home. You called a cab a few minutes ago, and it should be getting here in a few minutes."
	[This is the description of the character from the first episode of Sherlock. No liberties taken, this is what happened.]
The player is Beth.
[Having multiple player characters was incredibly difficult to code. Lots of different descriptions]
Beth is carrying the wedding ring.
Beth is carrying the cell phone.
	
The wedding ring is a thing. The description is "[if the player is Beth]Your wedding ring, though it doesn't mean much these days. You take it off enough that the inside looks almost polished. The inside of the ring is engraved with your and your husband's name.[otherwise]A simple wedding ring with a diamond embedded into it. upon closer inspection, you see that there are two names engraved on the inside of it.". [Figuring out varying descriptions was tough] 
The wedding ring is wearable.
Instead of using the wedding ring, say "Not really the time, don't you think?"

The cell phone is a thing. The description is "Your smartphone. You use this phone for everything, not the least of which is finding your way around. Only problem is that you lose it more often than you like. Luckily, you can track it from your computer back home, but it does make for some awkward conversations when your husband learns that your phone is halfway across the city. At least the password is easy to remember: it's the name of your daughter, Rachel." 
Instead of using the phone, say "You check your phone, but the signal is practically dead. So much for that."
Instead of calling when the player is Beth, say "You check your phone, but the signal is practically dead. So much for that."
[wanted to add more interactions with the phone after play testing]

Screaming is an action applying to nothing.
Understand "scream" as screaming.
Understand "yell" as screaming.
Understand "cry" as screaming.
Instead of screaming, say "[if the player is Beth] You cry out with all the air in your lungs but no one seems to notice...[otherwise] That would just be loud and pointless."
[Some players tried this in testing, thought I would add something.]

Calling is an action applying to one thing.
Understand "call [something]" as calling. 

Using is an action applying to one thing.
Understand "use [something]" as using.

Talking to is an action applying to one thing.
Understand "talk to [something]" as talking to.
Understand "ask [something]" as talking to.
Instead of talking to something:
	say "You don't exactly feel like talking at the moment."
	
[*********************************HOTEL BAR: PART 1***********************************]
The Hotel Bar is a room. The description is "[if the player is Beth]The hotel bar on the first floor of some gaudy hotel that you have forgotten the name of. It's not important anyways. After all, you're not going to be paying for a room tonight. At least, that was your plan. Not many people here tonight, just the bartender and some lonely chairs. The exit is to the south.[otherwise]The hotel bar of some high-class hotel on the south side of London: The Easton. Given that it's still the middle of the night, no one else is here, save for the bartender."
Understand "bar" as hotel bar.
Beth is a woman in the Hotel Bar.

Arrived is a truth state that varies. Arrived is initially false.

The television is in the hotel bar. The description is "[if the player is Beth] The television behind the bar is currently showing an episode of one of those crime dramas where the woman gets kidnapped and killed after being utterly useless. Then the detective comes in and magically already knows all of the information about the case, and perfectly catches the killer on the first try. Never was your kind of show. [otherwise] The television in the hotel is currently off. Doesn't really matter either way, you never really liked watching anything, so predictable."
Instead of taking the television, say "Not only is that incredibly heavy, it is bolted to the wall."
Instead of using the television, say "You don't have the remote, and you don't really care about what's on anyways."
[Added the TV to add more to the satire set up by Sarkeesian]

The cocktail is in the hotel bar. The description is "Some fancy pink thing that you ordered about an hour ago, paid for with your hubby's credit card. It's not bad, just a bit sweet for your tastes."
Instead of taking the cocktail, say "It would just be rude to take the drink and the glass with you when you leave, and you don't think the bartender will put it into a cup for you."
Instead of using the cocktail, say "Wouldn't you rather drink it?"
Instead of drinking the cocktail, say "You take one sip and remember why you havent finished it yet. You put it back on the table."


The decorative bowl is a container in the hotel bar. The description is "A small bowl that probably used to contain a bunch of matchbooks offered complimentary to patrons."
The decorative bowl is fixed in place.
The matchbook is in the decorative bowl. The description is "[if the player is Beth]A tiny book of matches with the hotel's name on the front, 'The Easton.' Used for advertising. You might want to go out for a smoke later.[otherwise] A small book of matches, unused. There is a hotel's name on the side: the Easton."
Instead of using the matchbook, say "Fire is not the solution here."
Instead of opening the matchbook, say "Fire is not the solution here."


The bartender is in the hotel bar. The description is "[if the player is Beth]The bartender stands down the bar. He looks like he's cleaning up for the night, you're one of the last people here. You thought about chatting him up, but he's not really your type, and you've been here enough that he knows you by name. At least he's nice.[otherwise] The sleepy bartender has all but cleaned up for the night. You figure that the only reason he's still awake is because you are here." 
Instead of taking the bartender, say "[if the player is Beth]Tempting, but he's not really your type.[otherwise]He would only drag you down."
Instead of using the bartender, say "That doesn't quite make sense, now does it?"

Instead of talking to the bartender when the player is Beth, say "You consider chatting up the bartender, but it's late, and you've essentially given up on your little escapade for tonight."
Every turn:
	If Beth is in the hotel bar for five turns:
		now arrived is true;
		say "You look out the window of the bar and see a taxi pull up. Better not keep the cabby waiting.".
Every turn:	
	If Beth is in the hotel bar for ten turns:
		say "The cabby honks outside, He's getting impatient.".

Every turn:	
	If Beth is in the hotel bar for 15 turns:
		say "The cabby lays on the horn, most drivers would have driven off by now, how kind that he waited for you to putz about the bar."

Before going nowhere from the hotel bar when the player is Beth:
	if arrived is false, say "You have no where to go. Better wait here until your cab arrives." instead;
	otherwise continue the action.
Instead of going nowhere from the hotel bar when the player is Beth:
	now the player is in the cab;
	say "You walk out of the bar and enter the cab. The driver doesn't turn around, but simply asks 'Where to?' You give him your home address and sit back.";
	if the matchbook is in the hotel bar:
		now the matchbook is in the void;
	if the cell phone is in the hotel bar:
		now the cell phone is in the void;
	now the cocktail is in the void.
[******************************************END OF HOTEL BAR IN PART 1***************************************]
	
[*************************************IN THE CAB: PART 1******************************************]
The Cab is a room. The description is "A small cab, probably a couple decades old. The leather seats have peeled and been rubbed away, but they're more comfortable that way. The dashboard is mostly bare, except for a photo taped to the dash and a rosary hanging from the mir ror. You can see the back of the cabby's head through the glass, and his eyes through the rear mirror. There is a seat pocket in front of you."

Instead of going nowhere from the cab, say "You try the door but they are locked tight. Plus, jumping out of a moving car can't end well."

Hitting is an action applying to one thing.
Understand "hit [something]" as hitting.
Understand "break [something]" as hitting.

The glass is scenery in the cab. The description is "A think pane of glass separates you from the front half of the cab."
Instead of hitting the glass, say "This glass could stop bullets, you don't think you could punch your way through."
[Note from play testing: People attempted to break the glass a bunch, so I figured I should give them somehting more than no.]

The photo is in the cab. The description is "An old polaroid picturing three people: a woman and two children. You imagine that this must be the cabby's family."
Instead of taking the photo, say "The pane of plexiglass separates you from the front half of the cab."
The rosary is in the cab. The description is "A rosary, looks old."
Instead of taking the rosary, say "The pane of plexiglass separates you from the front half of the cab."

The seat pocket is an open container in the cab. The description is "A leather seat pocket attached to the seat in front of you." The seat pocket is fixed in place.
Instead of using the seat pocket, say "Much better to put something in it."

The cabby is in the cab. The description is "From the little you've seen of the cabby, he looks pretty old. He's got gray hair and a wool cap. You can see wrinkles on his face through the rear mirror."
Instead of talking to the cabby in the cab, say "You don't really have much to say..."
Instead of taking the cabby, say "Even if you could, the glass is in the way."
Instead of using the cabby, say "You can't really imagine a use for him right now."
Instead of hitting the cabby, say "Despite how much you want to, you were never much of a fighter, and you dread what might happen if you don't hit him hard enough."
Every turn:
	If Beth is in the cab for three turns:
		say "Its probably going to be a long cab ride."
Every turn:
	If Beth is in the cab for five turns:
		say "The cabbies usually don't take this road. Oh well, maybe there was traffic on the way here."
Every turn:
	If Beth is in the cab for seven turns:
		say "You're going completely the wrong way. You try to tell the cabby, but he doesn't say a word."
Every turn:
	If Beth is in the cab for ten turns:
		say "You are starting to get very worried, the last street you recognized was three turns ago. You check your phone: no signal."
Every turn:
	If Beth is in the cab for 13 turns:
		say "The cabby drives out to a street with a few abandoned buildings and pulls over. Think, Beth, think! You can't get out of the cab, your phone has no signal, is there anything that you can do?"
Every turn:
	If Beth is in the cab for 14 turns:
		say "The cabby silently opens his side of the door, closes it, and opens the door on your side. You turn and kick him in the groin as soon as he opens the door. He doubles over for a moment, but recovers before you can strike again. [paragraph break] 'Alright, we're going to have a little chat, you and I. But first...' [paragraph break] With speed that you did not expect, the cabby pulls out a syringe and jabs you in the neck with it. It only takes a few seconds before your vision goes dark.";
		now the player is in the abandoned apartment;
		now the cabby is in the abandoned apartment;
		if the cell phone is in the cab:
			now phonesolved is true.
[*****************************************END OF CAB SCENE: PART 1**********************************]

[****************************************APARTMENT: PART 1*******************************************]

The abandoned apartment is a room. The description is "[if the player is Beth]A musty old room that you assume once was a living area of someone's flat, but it has been abandoned for so long that the wood has rotted, and time has put holes in the roof. The state of the room, however is the least of your concerns. There is a murderer right in front of you.[otherwise]An old, run-down flat a few miles outside of London. Most of the wood is rotting or damp, or both. However, you did not come here to criticize the shortcomings of homeowners, you have a murder to solve."
After looking in the abandoned apartment for the first time, say "The cabby sits in front of you. He seems eerily calm about the whole situation. [line break] 'Wake up, sleepyhead. I told ya that we was gonna have a little chat, so here we are. Don't worry, I didn't do nothing else to ya, sides the sleepin medicine. Now, you're Beth, yeah? Don't matter. After all, you're gonna be dead in a few minutes.' [paragraph break] You ask if he is going to kill you here, and he chuckles. [paragraph break] 'Naw, I'm just gonna talk to ya, and then you're gonna kill yourself.'"

The near bottle is in the void. The description is "A small clear bottle with a pink pill inside. It looks identical to its counterpart."
The far bottle is in the void. The description is "A small clear bottle with a pink pill inside. It looks identical to its counterpart."
Every turn:	
	If the cabby is in the abandoned apartment:
		now the description of the cabby is "This is the psycho that kinapped you. He seems way too calm about this entire situation, like he's done this before."

Instead of going nowhere from the abandoned apartment, say "[if the player is Beth]Surprisingly, the cabby lets you stand up and go try the exit. Naturally it's locked tight, and all the windows are boarded up. [otherwise] Wandering aimlessly won't solve anything."

Instead of talking to the cabby in the abandoned apartment, say "You question the cabby about his various motives and means of his kidnappings, but he either dodges the question, or just starts laughing."

Every turn:
	If Beth is in the abandoned apartment for three turns:
		say "The cabby seems to grow impatient. [line break] 'Now we're gonna play a little game, just the two of us. Look here, I got two bottles, each with a pill inside, identical in every way, cept one. One of the pills is harmless, and the other's got poison in it. I'm gonna put these bottles down, and you're gonna pick one, and take the pill inside, and I'll take the other, winner walks away alive.' [paragraph break] He places the two identical bottles down onto the floor, and slides one toward you. [paragraph break] 'Now, did I just give you the good bottle, or the bad bottle? I can tell you right now I'm gonna win, cause I know how people think. Now, make your move.";
		now the near bottle is in the abandoned apartment;
		now the far bottle is in the abandoned apartment.
Instead of opening the near bottle:
	try taking the near bottle.
Instead of taking the near bottle:
	say "You pick up the bottle closer to you, open it, and take the pill inside. At the same time, the cabby takes the other bottle and takes that pill. A few moments pass, and the cabby begins to laugh hysterically. You double over in pain, and the cabby stands up and starts to leave the room. [paragraph break] 'I told ya, I always win. Sorry, love, but it won't be long now. But hey, thanks for making the cleanup so easy on me.' [paragraph break] Your vision blurs as you collapse to the ground. You realize that these are probably your last moments. Your thoughts race, and you try to think of something, anything you can do. You see your hands on the floor, your nails are pretty sharp. You could probably carve something into the soft wooden floor. Maybe you can stop this sick bastard after all.";
	now Sherlock is in the abandoned apartment;
	now the cabby is in the void;
	now the near bottle is in the void;
	now the far bottle is in the void;
	if the cell phone is in the abandoned apartment:
		now the cell phone is in the void;
	if the wedding ring is in the abandoned apartment:
		now the wedding ring is in the void;
	if the matchbook is in the abandoned apartment:
		now the matchbook is in the void;
	if Beth is carrying the matchbook:
		now the matchbook is in the abandoned apartment;
		now matchbooksolved is true;
		[best way I could get Beth to drop it while still making it usable]
	now the corpse is in the abandoned apartment;
	switch to cyoa at p1.

Instead of opening the far bottle:
	try taking the far bottle.
Instead of taking the far bottle:
	say "You pick up the bottle farther away from you, open it, and take the pill inside. At the same time, the cabby takes the other bottle and takes that pill. A few moments pass, and the cabby begins to laugh hysterically. You double over in pain, and the cabby stands up and starts to leave the room. [paragraph break] 'I told ya, I always win. Sorry, love, but it won't be long now. But hey, thanks for making the cleanup so easy on me.' [paragraph break] Your vision blurs as you collapse to the ground. You realize that these are probably your last moments. Your thoughts race, and you try to think of something, anything you can do. You see your hands on the floor, your nails are pretty sharp. You could probably carve something into the soft wooden floor. Maybe you can stop this sick bastard after all.";
	now Sherlock is in the abandoned apartment;
	now the cabby is in the void;
	now the near bottle is in the void;
	now the far bottle is in the void;
	if the cell phone is in the abandoned apartment:
		now the cell phone is in the void;
	if the wedding ring is in the abandoned apartment:
		now the wedding ring is in the void;
	if the matchbook is in the abandoned apartment:
		now the matchbook is in the void;
	if Beth is carrying the matchbook:
		now the matchbook is in the abandoned apartment;
		now matchbooksolved is true;
		[best way I could get Beth to drop it while still making it usable]
	now the corpse is in the abandoned apartment;
	switch to cyoa at p1.
	
	
	
Password is a truth state that varies. Password is initially false.

[All of the CYOA pages were created fromt the template made in class, heavily modified.]
p1 is a page. 
"What will you carve into the ground?"
The killername is an end-page. 
"Of course! Writing the killer's name is a sure way to get them caught. You bring your hand onto the wood and realize that you never learned the name of the cabby. Not knowing what to write, you desperately try to think of something else, but your final breaths are spent in frustration, and nothing is written down."
The cdesc is "The killer's name.". It is for p1. 

The daughtername is an end-page.
"In your last moments, your thoughts drift to your daughter. She never made it past the age of two, that's when the cancer got her. You painstakingly carve in 'RACHEL' into the ground, and as your final breath leaves your lungs, you hope that you will see her soon."
The cdesc is "Your daughter's name.". It is for p1. 

The husbandname is an end-page.
"That's it! If you write your husband's name down, the police will know who to talk to. He can point them in the right direction for sure. You painstakingly carve in 'THOMAS' into the ground, and as your final breath leaves your lungs, you pray that what you did was enough."
The cdesc is "Your husband's name." It is for p1. 

[page toggle rules were tricky, found in the Hybrid Choices documentation]
A page-toggle rule for killername:
	now Beth is in the void;
	now the player is Sherlock;
	try examining Sherlock.
	
A page-toggle rule for daughtername:
	now Beth is in the void;
	now the player is Sherlock;
	now password is true;
	try examining Sherlock.
	
A page-toggle rule for husbandname:
	now Beth is in the void;
	now the player is Sherlock;
	try examining Sherlock.
[There is a problem where the page description will show twice. Unsure as to why. Updating the extension did not fix the problem.]
[************************************************END OF PART 1******************************************]

[The investigation sections of code are going to be shorter, as they are mostly just rules and timing, a lot of the important stuff is just modified in part 1]
[*************************************PART 2: THE INVESTIGATION***********************************]
[************************IN THE APARTMENT*********************]
hotelaccess is a truth state that varies. hotelaccess is initially false.

After examining the matchbook when the player is Sherlock:
	say "It's not much, but it's a lead. You might as well go and check out the hotel bar and see if you can figure out who this woman was. [paragraph break] HINT: Use 'go to' to move from place to place as Sherlock";
	now hotelaccess is true.

Instead of taking the corpse, say "Not only would that be incredibly heavy, lugging around a corpse is rather unsightly, and very suspicious."
Instead of using the corpse, say "Absolutely not."

Travelling is an action applying to visible thing.
Understand "go to [any room]" as travelling.
[Unique travel method for Sherlock, wanted to give a different feeling. Less railroaded, more open exploration, to a point.]

Instead of travelling when the player is Beth, say "You have no way to get there at the moment."
[Use the teleportation feature as Sherlock only]

Instead of travelling the abandoned apartment when the player is Sherlock:
	now Sherlock is in the abandoned apartment.
	[Problem found during testing: let them go back to the apartment after leaving.]
Instead of travelling the void when the player is Sherlock, say "Good try, clever one, but no."
[Another play testing problem. They should only find this if they read the code, but still shouldn't be allowed.]

Instead of travelling the cab when the player is Sherlock, say "There are thousands of cabs in London, plus you have Watson waiting for you in his car."
Instead of travelling the hotel bar when the player is Sherlock:
	if hotelaccess is false:
		say "Now why would you go there?";
	if hotelaccess is true:
		now Sherlock is in the hotel bar.
	[only allow travel if you have found a clue]

Every turn:
	if Sherlock is in the abandoned apartment for 10 turns:
		if matchbooksolved is false:
			end the story saying "Nothing! Nothing but a corpse and a mystery. Without a medical examination or a clue to find, there is no way to determine where the killer went. The police might be able to figure it out later, but the killer will be long gone by then... [paragraph break] Try again! Maybe look for some clues to leave behind..."
	[best to not keep the player wandering around if there is nowhere to go]
[*************************END OF APARTMENT INVESTIGATION****************************]

[************************BAR INVESTIGATION*************************]
After examining the wedding ring when the player is Sherlock:
	say "This wedding ring likely belonged to the victim. Her name was Beth. She was clever, leaving the wedding ring here, where she knew that it wouldn't be discarded, and who would steal an engraved wedding ring? Perhaps the bartender can give you some more information now that you have a couple of names.";
	now ringsolved is true.

Houseaccess is a truth state that varies. Flataccess is initially false.

Instead of talking to the bartender when the player is Sherlock:
	if ringsolved is false:
		say "You approach the bartender and tell him about the murder case. You ask if he has seen a woman in the bar earlier this evening. [line break] 'A woman? I see dozens of people, men and women, every single night down here, never the same. I might be able to help you if I had a little more information. Sorry.'";
	if ringsolved is true:
		say "You approach the bartender and tell him about the murder case. You show him the ring. He squints at it as he attempts to read the names engraved on the inside. You ask him if he knows anything about the names. [line break]'Beth... yeah, yeah I know Beth! She's come in here a few times before, always leaves with a different guy. You say she's dead? Oh no... She bought a drink earlier, so I should be able to pull up the credit card, maybe get you an address. [line break] The bartender runs off behind the bar, messes with the computer for a few mintues, and comes back with a piece of paper with an address on it. You commit the address to memory. [paragraph break] You now have access to Beth's house";
		now houseaccess is true.
[Might be a bit frustrating if the player doesn't look at/cant find the ring.]

Instead of travelling the Beth's house when the player is Sherlock:
	if houseaccess is false:
		say "You have no idea where that is";
	if houseaccess is true:
		now the player is in the Beth's house.
	[go to the house once you have the address]

Every turn:
	if Sherlock is in the hotel bar for 10 turns:
		if ringsolved is false:
			end the story saying "The matchbook was a promising lead, but it seems to be a dead end. After fumbling around the hotel bar for a while, you realize that there is no more information to be found here. If only there was a way to find her name. And without any more leads to follow, you return to the detective inspector with your bad news. The killer is likely to get away by morning.[paragraph break] Try again! There must be some way to learn the victim's name..."
			[given that the ring should be one of the only things to interact with in the bar, they should examine it in at least ten turns.]
[************************END OF BAR INVESTIGATION****************]

[****************************HOUSE INVESTIGATION************************]

The Beth's house is a room. The description is "A quaint home a few miles outside of the city. There isn't much in the ways of interior decorating, but that's not important right now. The most notable room in the house is the office, where the man who let you in is sitting in the chair."
After looking in the Beth's house for the first time, say "After the man introduced himself as Beth's husband, Thomas, you caught him up on the current situation. He immediately broke down into a sobbing mess. Understandable, but not helpful at the moment. He lets you in anyways, hopeful that you can find the person that did this to Beth. You've come this far, surely there must be some sign of where she went in her own house! You walk into the office, as that seems to be the best place to find information at the moment."

The husband is in the Beth's house. The description is "Beth's husband sits in the office chair in utter shock. A natural response to someone experiencing emotional trauma. You don't expect him to be particularly helpful, but maybe he can shed some light on the situation." The husband is fixed in place.
Instead of using the husband, say "Don't you think he's been through enough?"
Instead of talking to the husband:
	say "You ask him several questions about Beth, her job, her life, and what she was doing tonight, but he is generally unhelpful. However, you do figure out one interesting piece of information. She uses her phone for nearly everything, and as a result, she loses it quite frequently. To solve this problem, she tracks her phone using her home computer. The only problem is that Thomas does not know Beth's phone password, and it is required to track the phone."

The computer is in the Beth's house. The description is "A fairly new computer lies on the desk, which is rather out of place given that the rest of the office interior seems years old. This must mean that whomever uses this office must use and upgrade the computer on the regular." The computer is fixed in place.
Instead of using the computer:
	if password is true:
		if phonesolved is true:
			end the story saying "You sit down at the computer and open the program to track the phone. Every piece of evidence left behind so far has had a purpose, except one: the carving on the ground. Suddenly, you understand. She is brilliant!, you think, she's more brilliant than anyone in London and she's dead! You type in 'RACHEL' into the computer, and you log in. The map opens and shows the last location the phone was used was... [line break] The London Docks? Last updated three minutes ago! [line break] Of course! She left her phone in the cab so that it could be tracked wherever the killer went! They must have gone to the docks to get out of the city without being followed, but little do they know, Beth was leading you right to them. [paragraph break]You burst out of the house and call the detective inspector, and tell him to meet you at the docks. You arrive just behind a half dozen police cars. Given that it is the middle of the night, the only other car you see is a london taxi. The officers leap out of their cars and sweep the area. It isn't three minutes before the suspect is found. You see him screaming about his perfect plan as he is dragged away, and know that you found the right man. If not for Beth's foresight, he might have gotten away, but at last, justice has been served. [paragraph break] Congratulaions, YOU WIN! Your cleverness and insight are truly magnificent, well done!";
			[A Winner is you!!]
		if phonesolved is false:
			end the story saying "You sit down at the computer and open the program to track the phone. Every piece of evidence left behind so far has had a purpose, except one: the carving on the ground. Suddenly, you understand. She is brilliant!, you think, she's more brilliant than anyone in London and she's dead! You type in 'RACHEL' into the computer, and you log in. The map opens and shows the last location the phone was used was... [line break] The Easton hotel [line break] You don't understand. Without a way to track the killer, they are as good as vanished. You return to the detective inspector and tell him of your investigation. Perhaps the police could find the killer, but you are doubtful. You were so close! you had the killer in the palm of your hand [line break] Try again! There must be some way to find out where the killer went after the murder...";
			[So close, I felt bad for the player that got this far in play testing, but they did get the good ending on their next run!]
	if password is false:
		end the story saying "You sit down at the computer and open the program to track the phone. You try dozens of words: 'Beth', 'Easton', 'Thomas', 'London', nothing. Her password could be anything, and you have no way to know what it is. Every piece of evidence so far led you right here, there must be something missing. You try for hours to find the password, but nothing works. Eventually you go back to the detective inspector, hoping that the police force might be able to do something, but the killer is probably long gone by now. [line break] There must be some way to learn the password, Try again!"
[*************************END OF GAME**********************************]

[**************************THE VOID AND BONUS RULES****************************]
The void is a room. The description is "You shouldn't have been able to get here..."

Sherlock is a man in the void. The description is "You are Sherlock Holmes. Often times when a case looks particularly difficult, or when the local police force can't be bothered to do their jobs correctly, they call you in to provide some insight. While most of their 'cases' rarely merit a second thought, this one intrigues you. A suicide, but so obviously not so, perplexing. You arrived onto the scene mere hours after the police discovered the body, and you get to begin the investigation before the Medical Examiner even arrived. One of the perks of having the chief detective inspector owe you a favor. Now it is just you and the murder. The game is afoot."

The corpse is a supporter in the void. The description is "It appears that this poor lady met an unfortunate fate tonight. Worse news, the police haven't even had time to identify the body yet, so It's up to you to figure this out quickly. The killer seems to have taken anything off of the body that he deemed valuable or important. They are likely looking for an escape, and you ought to find them before they get away. [line break]One interesting thing you find, however is that her fingers look ragged, and there are some scratches on the floor next to her hand." The corpse is fixed in place.
[Making the first part of the game was easy enough. Adding all of the interactions and restricitons with Sherlock took hours, but I think it works pretty well, even if the code is a bit lengthy]

After examining the corpse:
	if password is true:
		say "After a good bit of squinting, you see the name 'RACHEL' appear carved into the ground. What this means, you are not yet sure, but this could be useful.";
	if password is false:
		say "There are some scrawlings on the ground, some look like letters, but others seem purely illegible. Either way, you can't make out what it is supposed to say."

matchbooksolved is a truth state that varies. Matchbooksolved is initially false.
ringsolved is a truth state that varies. Ringsolved is initially false.
phonesolved is a truth state that varies. Phonesolved is initially false.
[Needed checkmarks to mark progress through the game.]