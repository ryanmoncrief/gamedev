"Lunch Break" by Michael Gonzalez

When play begins:
	say "12:30 PM. A room that minutes before was abandoned now becomes the cornerstone of rest and dull conversation. Typically I'm filled with a tapestry of items such as cookies and whatnot. Evidently, my supplier has become a master procrastinator. My options are few and slim. A few minutes into the company's lunch break, an employee (and now patron of mine) approaches me and puts a dollar bill into my cash slot."

Office Lounge is a room.
 
Cash is an object. It is in the Office Lounge. It is edible. The description is "A $1 bill. That's all you need for most of my services. In today's case, it's perfect for Papa Frita's Chips."

Before rejecting the Cash:
		if player does not carry the Cash, continue the action;
		otherwise say "Do you really think it's possible for me to reject what I've already accepted?"; stop the action.

[BENEATH IS THE EATING ROUTE]
Before eating the Cash:
		if player has Cash, continue the action;
		otherwise say "You really think I'd do this?"; stop the action.
		
Before eating the Chips:
		say "How is this even possible for me?" instead.

After eating Cash:
	say "A patron’s worst nightmare. I've consumed his dollar bill. Tasty. His face wasn't though. People tend to forget that Vending Machines can get hungry too. I was simply hungry and wanted a bite to eat. He looked at me for a few seconds, growled, and walked away confused and defeated. What an unfortunate end to our interaction."; end the story saying "Your consumption of his dollar bill brought this journey to an end". [This ending was created after I talked to a friend who use to own a vending machine business. Why did he own one? Not sure. Now he works in live production. What a transition. Anyways, he told me that one of the biggest complains he got was that the machine would eat cash. I knew it wouldn't be difficult to integrate that into the game, so immediately after I made it an option in the game.]

[BENEATH ARE EXTRA DETAILS AND RULES]

The patron is scenery. It is in the Office Lounge. The description is "Tie, coffee stains, greasy hair, glasses, the usual. People like him are the easter eggs of this office. I don't see this particular employee too often, in fact I think he's a new face around here. If true, it would explain his effort in trying to get a friend or two."

The wall is scenery. It is in the Office Lounge. The description is "Imagine a lifeless room with bland conversations and colorless attire. That's as close to a prism as this room can get. Gray all around. In fact, I'm the most colorful thing here."

Papa Frita's Chips is an object. The player carries Papa Frita's Chips.[It did take me some time to figure out how to make the character (the vending machine) start with the chips. And yes, Papa Frita was taken from how to say chips in spanish, "papas fritas."]

The description of the Papa Frita's Chips is "A shiny bag holding the crunchiness of Papa Frita's Chips. Seems like a very popular option around here. Perhaps that's why I always have an abundance of it."

Understand "reject [something]" as rejecting. Rejecting is an action applying to one thing.

Carry out rejecting:
	say "You've rejected the [noun]." [I stole this from the Timmons website. I just changed it to rejection.]

Before rejecting chips:
	say "I've never rejected myself like this before. What's going on with me? I can't do this. No, I must cut this cancer of self-rejection out."; stop the action.
[BENEATH IS THE RETURN ROUTE]

Understand "return [something]" as dropping. Returning is an action applying to one thing. [Collectively, this took about an hour to figure out. I kept writing "Understand "Return" as dropping without getting rid of this. What would happen was I'd take the cash, would return the cash, which would happen of course, however the cash still shows up in the inventory, which it shouldn't have. The solution to this was simple, just hard to realize.]


After dropping cash the first time:
	say "I realize I'm not a fan of his dollar bill. I'm giving it back. I can tell it threw him off guard. He took his dollar bill back and is presenting it to me yet again." [I didn't want it to say the cash was dropped. Vending Machines don't drop cash, so this machine shouldn't drop cash. Thankfully this sentence consumed the simple "Dropped" sentiment.]
	
After dropping cash for the second time:
	say "Vending Machines have a taste in cash. We too desire the crisp bills a person can walk on, not those that feel soggy without even being wet. His bill felt like crumbled up sin. Some angry wind blew out of his nostrils when he saw his bill return to him. He pulled out his wallet to grab another bill. Perhaps he thought the one he had wasn't sufficient (which is a very accurate appraisal.) He presents a new bill to me again."
	
After dropping cash for the third time:
	say "I think he's possessed by bewilderment and confusion. Its causing his arms to move around as if he were conducting Korsakov's Flight of the Bumblebee. 'How can this be?' he says. His theatrical responses are always too much fun to watch to not see. This is why I do this to him. His bill was fine that time, I just wanted to see him squirm in shock. His arms were still glitching when he walked away from me."; end the story saying "His perplexity orchestrated his footsteps to a direction away from you, bringing this journey to an end." 
	
[BENEATH ARE SOME RULES]

After taking cash for the first time:
	say "His dollar bill will suffice. Which option will he want? B4? D2? Oh, it's A2... Papa Frita's Chips... the most popular option inside me..."
	
After taking cash:
	say "I liked what he offered this time. He pressed the button that would dispense Papa Frita's Chips with some sass." [I didn't want the player to see the same sentence everytime they would take the cash, especially since the first sentence may not make sense in the context made by the player. This sentence is friendlier with context.]
	
Before returning the Cash:
		if player has Cash, continue the action;
		otherwise say "I have nothing to return."; stop the action.

[BENEATH IS THE REJECTION ROUTE]
After rejecting Cash for the first time:
	say "Must not have flattened the bill right. Always gets them. I see him, now tainted with a little annoyance, flattening the now crisp bill to present it to me again."
	
After rejecting Cash for the second time:
	say "He doesn't know what he's doing it seems. I would provide my dollar bill flattening wisdom, but seeing as how I'm a Vending Machine, I'm unable."
	
After rejecting Cash for the third time:
	say "At this point I'm just having fun. His dollar bill would of course work. Watching him squirm is a form of entertainment I rarely have. His head nodding left to right, his lips getting tighter by his internal frustration. What was it that he even wanted?"
	
After rejecting Cash for the fourth time:
	say "His mouth opened and gave birth to a sound I haven't yet felt since I was stationed at the Gas Station. I can taste his frustration. He went into his wallet to get another dollar bill, and yet again he didn't appropriately flatten it."
	
After rejecting Cash for the fifth time:
	say "He did it. He brought his fist and Falcon punched the electricity out of me. This is the first time I've experienced such a vicious annoyance. Some of it of course was on me, but he also just didn't do a good job at doing something as simple as folding the dollar bill in an appropriate fashion. [Line break] [Line break] He's walking away, betraying me to cheat on some other Vending Machine in some other Lounge in some other floor."; end the story saying "The patron's betrayal terminated his interaction with you."
	
[BENEATH ARE MORE RULES]

Instead of taking Papa Frita's Chips:
	say "What the, seriously? It's not my choice what I take. I just get stuffed with whatever. If I were human, I'd be a slut."
	
[BENEATH IS THE VENDING MACHINE PARADISE ROUTE]
	
Before going for the first time:
	say "I'm a vending machine."; stop the action. [I tried so many words. Traveling, walking, moving. I flipped out when I figured out the word Inform needed to hear "going." I still feel my heart beating out of joy.]
	
Before going for the second time:
	say "I'm still a vending machine."; stop the action.
	
Before going for the third time:
	say "A bird! Just kidding. Vending machine."; stop the action.
	
Before going for the fourth time:
	say "Vending machine..."; stop the action.
	
Before going for the fifth time:
	say "I think I'm becoming self-aware. Yes, I see it now! I feel respiration soar through my circuits. Could these pegs I've stood on for years have an ability I haven't yet seen? Why, I think I'm - alive! I think I'm alive! Can you believe it? Breathing, heartbeat, blinking, wow! I see myself, with the eyes now fixed in my new head, getting covered in fresh skin. It's so cool to be an actual human!! All the employees in the lounge passed out when they saw my transformation. I guess it was too beautiful to handle. [Line break] [Line break] I see a beautiful light radiating from the north! With a beautiful harmony of Ukuleles in the back I hear a whisper say 'Frita... Come Frita...'"; stop the action.
	
Vending Machine Paradise01 is a room with printed name "Vending Machine Paradise". It is north of the Office Lounge. The description is "No, is it really? Is it really this place of paradise I've only heard of through orated narratives? My family shared the legends of this place since I was a child. Now these retinas get to put together the raw sight of such beautiful geography. The most captivating ornament to these latitudes and longitudes is the waterfall, which is what this place is most known for. The trees, flowers, clouds, everything is beyond comprehension."

South of the Vending Machine Paradise01 is nowhere. [A one way exit situation. Why would you wanna leave paradise?]

Vending Machine Paradise02 is a room with printed name "Majestic Cave". It is west of Vending Machine Paradise01. The description is "Wow. Just wow. Fables and tales of Vending Machine's past have all occurred in the cave behind the 'water enslaved to gravity' as I've heard it. Ancestors and warriors have stood upon the place I now stand on. Rumor has it that the Vending Scrolls are to the south. In fact, to that direction I see a manifestation of fog that kindles in green! Could the rumor really be true? I wonder..."

South of Vending Machine Paradise02 is Office Lounge. [This is the Magic exit mentioned in Timmon's article.]

Instead of going east from Vending Machine Paradise02:
	say "No, I can't. I can't leave. Clearly I was suppose to be here. Some may call it a divine appointment. Who walks out of those? Not me. Not today."

The Waterfall is scenery. It is in Vending Machine Paradise01. "The waterfall. Wow. Finally these eyes have the opportunity to ponder the sight and sound. The sun casts a gorgeous orange hue onto the water as it sets itself to sleep. Birds fly about singing their relaxing song. If only I had considered walking before, I would've lived here by now.  I wonder if that cave I've heard of is there." 

After going south to Office Lounge:
	say "Just kidding. I'm a Vending Machine. I spend day and night in this Office Lounge. Always have, and unless I'm moved, I'll always be here. As I brought you on this hollow journey, my patron got so upset about how I wasn't doing anything that he mildly smacked me and walked away. Without a snack."; end the story saying "The time you spent daydreaming a facade completely devoured what little patience the patron has, forcing him away from you."
	
[BENEATH IS THE SHUT DOWN ROUTE]

Understand "Shut down" as sleeping. [I'm very thankful this program knows what sleeping means.]
	
Instead of sleeping: say "A vicious soundwave came out of this patron. My lights are out. My screen is out. Everything is out. His desire for a snack didn't turn off though. He thought he'd be smart, and this was actually quite funny. He took a few steps back, got into position, ran closer and closer to me and threw his heavy being onto my glass, all while projecting a blood craving war cry. I've been fashioned with strong glass. Idiot. His co-workers swarmed him with an apparent concern on his well-being. I didn't care. He had it coming. No one would suspect a Vending Machine of crime, so I'm in the clear. Soon the paramedics came and took him away. He never got a snack."; end the story saying "zzz." 

[BENEATH IS THE NORMAL ROUTE]

Understand "Dispense [something]" as dropping.

Before dropping Papa Frita's Chips the first time:
	if player has Cash, say "Oh no, the chips stopped just before it skydived to the dock. Papa Frita hangs on the cliff of my failure. I'll need to try again." instead;
	otherwise say "This person isn't about to get a free dose of my supply. I'll need to take his money first." instead.
	
Before dropping Papa Frita's Chips the second time:
	if player has Cash, say "I tried to get it out again. No success again. This is as close to constipation as I'll ever feel." instead;
	otherwise say "This person isn't about to get a free dose of my supply. I'll need to take his money first." instead.
	
Before dropping Papa Frita's Chips the third time:
	if player has Cash, say "Like seasons, constipations don't last forever! I was finally able to get the chips out. It endeavored a free fall to the dock for my patron to retrieve. Perhaps the chips will accompany his sandwich. Or his leftover pizza from home. Or perhaps his lunch was just that. Chips. What would be an accompaniment for others might very well be his only. At least I was able to provide something for him. Now comes the time to release the chips to him.";
	otherwise say "This person isn't about to get a free dose of my supply. I'll need to take his money first." instead. [This entire section took over an hour to figure out. I think that's interesting since this route was supposed to be the easiest. Yet it was the hardest to code. I had no idea how to make it a puzzle, and frankly I don't think it's too difficult of a puzzle as it currently stands. It gets the job done though.]

Understand "release [something]" as releasing. Releasing is an action applying to one thing.

Carry out releasing:
	say "You've released the [noun]."
	
After releasing Chips:
	say "The chips now function in the work of our purpose. It's moments like these that remind how wonderful it is to do what I do. To be a Vending Machine."; end the story saying "The patron walks away with his Papa Frita's Chips in hand. Victory!"
	
Before releasing Chips:
	if player has Chips, say "I can't release what isn't ready to be released." instead.
	
[BENEATH IS THE DROP CHIPS FOR THE FOURTH TIME ROUTE]

Before dropping Papa Frita's Chips the fourth time:
	if player does not carry the Cash, say "The patron kept watching as I argued with myself over and over again. I tell myself to drop chips, yet I respond with 'no, you can't do that right now.' I kept reminding myself to take his money, and I was just too caught up in dropping a snack for him. He looked hungry. He had walked away by the time I was through with my self-debate."; end the story saying "The patron was never a fan of debates, so your elaborate and insightful debate with yourself pushed him away." [It did take a good while to find how you could get this ending without impeding on other coding. Roughly 20 minutes was spent trying to find it. I referred to the Inform7 website, section 13.4 in the Celadon example.]

[BENEATH IS THE WAITING ROUTE]

After waiting the first time:
	say "If there's one thing I've noticed about these employees it’s that they've never been taught patience. They flip out rather elaborately if told to wait a couple of minutes. This patron seems to be no exception at all. He thought moving his hands in an orbit motion will force me into functionality. He was wrong. I stand here, plugged into the wall, waiting for him. The tables have turned. He thought he was waiting on me, but oh that's not true. It is he I wait for. What am I waiting for? Not sure."

After waiting the second time:
	say "This crosses the line for him. He was clearly raised in a house that eclipsed patience with their apparent 'now' mentality. I see him turn around to walk away from me. He opens the lounge door, walks through and heads to some other area. I know he's thinking about the interaction I gave him the opportunity to have. My supply before him is my supply after. I hope I didn't evaporate positivity from his day."; end the story saying "You've abandoned yourself from the ability to respond." [Originally this was going to be a sudden death situation. When you entered "wait", it was to end the game right then and there. I decided to add another step after I wrote the Eating ending. I didn't want three sudden death endings. I'm sufficient with two.]
	
Before waiting:
		if player has Chips, continue the action;
		otherwise say "I can't function in patience right now. This moment is too precious."; stop the action.
