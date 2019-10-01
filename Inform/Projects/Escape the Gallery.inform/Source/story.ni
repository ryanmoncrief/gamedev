"Escape the Gallery" by Ryan, Kyle, Sabrina, Michael, and Patrick

[*****************************Ryan's portion*********************]
When play begins:
	say "You awake on the white floor looking up into a blinding light source. You stand up and look around. You're in the gallery. The last thing you remember was visiting here to see your submitted piece. After you walked around for a while, you started to feel dizzy, and now here you are. One thing is for sure, though, you need to get out."
	
A picture is a kind of thing. Pictures are usually fixed in place.
After examining a picture at least twice, say "It looks incredibly realistic, almost as if you could jump right into it..."

A coin is a kind of thing.
The gold coin is a coin. The description is "A shiny gold coin. You found this in your pocket when you woke up here." The player is carrying the gold coin.
The silver coin is a coin. The description is "A tarnished silver coin. You found this on the couch in the gallery." The silver coin is on the couch.

Painting is an action applying to one thing.
Understand "paint [something]" as painting.
Understand "paint on [something]" as painting.

[Look for a way to override the walking into/entering thing without making the paintings enterable]
Walking into is an action applying to one thing.
Understand "walk into [something]" as walking into.
Understand "jump into [something]" as walking into.
Understand "enter [something]" as walking into.
Understand "jump out of [something]" as walking into.
Understand "enter [something]" as walking into.

Instead of entering a picture, silently try walking into the noun.

The east gallery is a room. The description is "The eastern half of the gallery. The room is mostly bare, with the exception of a few paintings and a door that has been boarded up. The entire room is lit up, yet there is no discernable light source. The white walls and floor are so clean they make you feel uneasy. You see the rest of the gallery stretch off to the west"

The band painting is an picture in the east gallery. The description is "You see a painting of a bunch of rock band instruments. Looks like they're all scattered around a small room."
After walking into the band painting:
	say "You get yourself psyched up and jump into the band painting. You feel like you just got off of a rollercoaster when your feet slam onto the ground.";
	now the player is in the Green Room.
The house painting is a picture in the east gallery. The description is "You see a painting of a bunch of people at what looks to be a house party. There are groups of people talking, an open bar, and a couple passionately kissing in the back corner."
After walking into the house painting:
	say "You take a deep breath and jump into the house painting. The silence of the gallery fades into loud conversation and music as your feet hit the ground.";
	now the player is in the house party.
The couch is a supporter in the east gallery. The description is "A small two cushion couch for patrons to sit on while they admire and contemplate the art pieces."


The west gallery is a room. The description is "The western half of the gallery is just as plain as the east. The only difference is that there is no visible exit from this room, just a bunch of canvases on the wall. The entire room is bright without a lightbulb in sight. You can see the rest of the gallery stretch off to the east."
The west gallery is west of the east gallery.

The ballet painting is a picture in the west gallery. The description is "You see a painting of what you imagine to be a balet studio. It's a close up of a huge mirror, and there is a leg in a pointed shoe raised up onto a bar attached to the wall."
After walking into the ballet painting:
	say "You take a moment to compose yourself and jump into the ballet painting. The world fades around you and you feel like you're spinning as your feet hit the ground.";
	now the player is in the ballet studio. 
The office painting is a picture in the west gallery. The description is "This one's a little odd. You see what looks like an office break room in the picture. There is a coffee pot on the counter, a couple tables, and a vending machine. It's a little odd to see something like this in the gallery, but the craftsmanship is still incredible."
After walking into the office painting:
	say "You steel yourself and jump into the office painting. The world spins around you and you land with a hard thud on the ground.";
	now the player is in the Office Lounge.

The blank canvas is in the west gallery. The description is "At the end of the gallery, you see an entirely blank canvas. You can't tell if this was a mistake, or if someone submitted it as an abstract statement on the subjectivity of art. Either way, it seems pretty out of place. Maybe you could paint something on here, if you had the proper tools."

The paintbrush is a thing. The paintbrush is in the void.
Before painting something:
	 if the paintbrush is held:
		if the Paint Can is held: 
			continue the action;
		otherwise:
			say "It's going to be a little difficult to do anything without a paintbrush and paint." instead;
	otherwise:
		say "It's going to be a little difficult to do anything without a paintbrush and paint." instead.
		
Instead of painting a picture, say "Don't paint over the pictures! You'll ruin them!"

Instead of walking into the blank canvas:
	 say "You dive headfirst into the blank canvas, hoping it will take you somewhere helpful, but all you end up doing is slamming your head into the wall. That hurt, but the canvas is still in one piece, luckily."
After painting the blank canvas: say "Hey, it works for everything else in this gallery, right? You paint a picture of your own exit door onto the canvas. Honestly, it's pretty good, one of your better pieces. Now you have your very own exit painting."; move the blank canvas to the void; move the exit painting to the west gallery.

[*************************This ends Ryan's room*********************]

[******************Michael's Room*****************************]
[Edited by Ryan]
	
The lounge door is a picture. The description is "Instead of seeing the rest of the office through the door, you just see the rest of the gallery where you came from."
The lounge door is in the Office Lounge.
After walking into the lounge door:
	say "You watch yourself walk back to the gallery, and you're thankful to be back in your own body again."; now the player is in the west gallery. 
[Above was added by Ryan]

Office Lounge is a room. The description is "You jump into the painting, expecting to walk into some office break room with a vending machine. What immediately takes you by surprise is your own body, you have become the vending machine itself! The weirder part is that you can see yourself standing in front of you, trying to put a coin into the slot. You feel like you should accept the coin to help yourself on your journey." [Edited by Ryan for story purposes]

Before eating the Drum Sticks:
		say "How is this even possible for me?" instead.
		
Before eating the Paint Can:
		say "We must have started on the wrong foot if your desire is for me to eat this." instead.

[BENEATH ARE EXTRA DETAILS AND RULES]

The patron is scenery. It is in the Office Lounge. The description is "You've looked in plenty of mirrors before, but this is way different. It's a surreal feeling, watching yourself move without you actually doing anything. You seem to be trying to put a coin into the coin slot" [Edited by Ryan for story purposes]

The wall is scenery. It is in the Office Lounge. The description is "Imagine a lifeless room with bland conversations and colorless attire. That's as close to a prism as this room can get. Gray all around. In fact, I'm the most colorful thing here."

The rack is a transparent locked container in the Office Lounge.

The Drum Sticks is an object. The Drum Sticks is in the racks.
The Paint Can is an object. The Paint Can is in the racks.
[Edited by Ryan]

The description of the Drum Sticks is "A pair of wooden sticks, perfect for drumming. Why they were in a vending machine is beyond you"

The description of the Paint Can is "A small can of paint. Strangely enough, you can't seem to determine the color of the paint, it keeps shifting just as you think you know what it is"
[Ryan: had to change the descriptions of the items to work in other rooms besides the vending machine]

Understand "reject [something]" as rejecting. Rejecting is an action applying to one thing.

Carry out rejecting:
	say "You've rejected the [noun]." [I stole this from the Timmons website. I just changed it to rejection.]

Before rejecting Drum Sticks:
	say "I've never rejected myself like this before. What's going on with me? I can't do this. No, I must cut this cancer of self-rejection out."; stop the action.
	
[BENEATH IS THE RETURN ROUTE]

Understand "return [something]" as dropping. Returning is an action applying to one thing. [Collectively, this took about an hour to figure out. I kept writing "Understand "Return" as dropping without getting rid of this. What would happen was I'd take the cash, would return the cash, which would happen of course, however the cash still shows up in the inventory, which it shouldn't have. The solution to this was simple, just hard to realize.]


After dropping a coin the first time:
	say "I realize I'm not a fan of the coin. I'm giving it back. I can tell it threw him off guard. He took his coin back and is presenting it to me yet again." [I didn't want it to say the cash was dropped. Vending Machines don't drop cash, so this machine shouldn't drop cash. Thankfully this sentence consumed the simple "Dropped" sentiment.]
	
After dropping a coin at least two times:
	say "Vending Machines have a taste of coins. We too desire the freshly minted taste of copper and zinc, so I spit it out once more"
	
[After dropping a coin for the third time:
	say "I think he's possessed by bewilderment and confusion. Its causing his arms to move around as if he were conducting Korsakov's Flight of the Bumblebee. 'How can this be?' he says. His theatrical responses are always too much fun to watch to not see. This is why I do this to him. His coin was fine that time, I just wanted to see him squirm in shock. His arms were still glitching when he walked away from me."; end the story saying "His perplexity orchestrated his footsteps to a direction away from you, bringing this journey to an end." ]
[Ryan: Probably not best to end the story halfway through]
[Ryan: had to change cash to coin just to try and keep things the same]
	
[BENEATH ARE SOME RULES]

[Ryan: since the player already has the coins, I need to change things up a little bit to fit this in]
Accepting is an action applying to one thing.
Understand "accept [something]" as accepting.

Before accepting the gold coin:
	if the gold coin is held: 
		continue the action;
	otherwise: 
		say "You didn't seem to have the coin to put into the slot in the first place."
	After accepting the gold coin:
		say "You take the gold coin and watch as the drum sticks fall into the collection tray. You watch 'yourself' pick them up and put them in your pocket";
		now the gold coin is in the void; now the player has the Drum Sticks.

Before accepting the silver coin:
	if the silver coin is held: 
		continue the action;
	otherwise: 
		say "You didn't seem to have the coin to put into the slot in the first place."
	After accepting the silver coin:
		say "you take the silver coin and watch the paint can fall into the colleciton tray. Lucky it didn't spill. You watch 'yourself' pick up the can'";
		now the silver coin is in the void; now the player has the Paint Can.
[I needed to change things up to specify the specific coins]

[After taking cash for the second time:
	say "This dollar bill will suffice. Which option will he want? B4? D2? Oh, it's A2... Papa Frita's Chips... the most popular option inside me..."
	
After taking cash:
	say "I liked what he offered this time. He pressed the button that would dispense Papa Frita's Chips with some sass." [I didn't want the player to see the same sentence everytime they would take the cash, especially since the first sentence may not make sense in the context made by the player. This sentence is friendlier with context.]
	
Before returning the Cash:
		if player has Cash, continue the action;
		otherwise say "I have nothing to return."; stop the action.]

[BENEATH IS THE REJECTION ROUTE]
After rejecting a coin for the first time:
	say "Must not have dropped the coin right. Always gets them. I see him, now tainted with a little annoyance, picking up the coin to try again."
	
After rejecting a coin for the second time:
	say "He doesn't know what he's doing it seems. I would provide my coin slot wisdom, but seeing as how I'm a Vending Machine, I'm unable."
	
After rejecting a coin for the third time:
	say "At this point I'm just having fun. His coin would of course work. Watching him squirm is a form of entertainment I rarely have. His head nodding left to right, his lips getting tighter by his internal frustration. What was it that he even wanted?"
	
After rejecting a coin at least 4 times:
	say "His mouth opened and gave birth to a sound I haven't yet felt since I was stationed at the Gas Station. I can taste his frustration."
	
[After rejecting a coin for the fifth time:
	say "He did it. He brought his fist and Falcon punched the electricity out of me. This is the first time I've experienced such a vicious annoyance. Some of it of course was on me, but he also just didn't do a good job at doing something as simple as folding the dollar bill in an appropriate fashion. [Line break] [Line break] He's walking away, betraying me to cheat on some other Vending Machine in some other Lounge in some other floor."; end the story saying "The patron's betrayal terminated his interaction with you." ]

[Ryan here, didn't want to lock the player out of the rest of the game, so I took this part out for now]
	
[BENEATH ARE MORE RULES]

Instead of taking the Drum Sticks:
	say "What the, seriously? It's not my choice what I take. I just get stuffed with whatever my procastinator of a supplier fills me with. I might as well be a teddy bear. Hug me, please. I'm comfortable."
	
Instead of taking the Paint Can:
	say "What the, seriously? It's not my choice what I take. I just get stuffed with whatever my procastinator of a supplier fills me with. I might as well be a teddy bear. Hug me, please. I'm comfortable."
	
[BENEATH IS THE SHUT DOWN ROUTE]

[Understand "Shut down" as sleeping. [I'm very thankful this program knows what sleeping means.]
	
Instead of sleeping: say "A vicious soundwave came out of this patron. My lights are out. My screen is out. Everything is out. The patron thought he'd be smart, and this was actually quite funny. He took a few steps back, got into position, ran closer and closer to me and threw his heavy being onto my glass, all while projecting a blood craving war cry. I've been fashioned with strong glass. Idiot. His co-workers swarmed him with an apparent concern on his well-being. I didn't care. He had it coming. No one would suspect a Vending Machine of crime, so I'm in the clear. Soon the paramedics came and took him away. He never got a snack."; end the story saying "zzz." ]

[Ryan here, didn't want to end the game again, so probably not the best idea here]

[BENEATH IS THE NORMAL ROUTE]
[Ryan: for the sake of making the game a bit simpler due to lack of time, I figured that I would streamline the dispensing process to just taking the coin. We can work on this later, but for now, this should still work]

[
Understand "Dispense [something]" as dropping.

Before dropping Drum Stick the first time:
	if player has Cash, say "What the? This isn't Papa Frita's Chips. A stick? Really? That's my arsenal today? That's what people are really going to see about me? That I give people freaking sticks?!? This world never fails to amaze me. And would you look at that! My coil is stuck because of this sacred stick!! I believe it's called a Drum Stick. I'll need to try to drop this thing again..." instead;
	otherwise say "This person isn't about to get a free dose of my supply. I'll need to take his money first." instead.
	
Before dropping Drum Stick the second time:
	if player has Cash, say "I tried to get it out again. No success again. I'm not sure what you'd consider this. Perhaps I have a Vending Machine Tape Worm that's making this a hassle." instead;
	otherwise say "This person isn't about to get a free dose of my supply. I'll need to take his money first." instead.
	
Before dropping Drum Stick the third time:
	if player has Cash, say "The stick now functions in the work of our purpose. It's moments like these that remind how wonderful it is to do what I do. To be a Vending Machine. Congratulations, you win!! [Line break] [Line break] Wait a minute... what is happening... the patron is looking at something... [Line break] [Line break] A Paint Can???? I have a Paint Can??? At this point, all my cares have evaporated. In fact, I don't care much for profit. I'm just going to give it to this person. Yes, today I will be gracious. That's right! Gracious I say! I'm just going to drop this Paint Can!";
	otherwise say "This person isn't about to get a free dose of my supply. I'll need to take his money first." instead. [This entire section took over an hour to figure out. I think that's interesting since this route was supposed to be the easiest. Yet it was the hardest to code. I had no idea how to make it a puzzle, and frankly I don't think it's too difficult of a puzzle as it currently stands. It gets the job done though.]

After dropping the Drum Stick:
	move the Drum Stick to The Abyss.
	
After dropping the Paint Can:
	say "I have just done what no other vending machine in history has done before. I gave! No other vending machine can say this but I! Even my mechanical heart was warmed by the sight of the patron's wonderfully surprised face at the free gift. Wow, a gift. Never thought I could say that. Perhaps this is what being alive was always suppose to feel like. Now I get it. Now it's all clear. Wait, where is the patron going? He's walking away, closer and closer to some weird teleport thing to the south." 
	
After dropping the Paint Can:
	move the Paint Can to The Abyss.
	
[BENEATH IS THE DROP CHIPS FOR THE FOURTH TIME ROUTE]

Before dropping Drum Sticks the fourth time:
	if player does not carry the Cash, say "The patron kept watching as I argued with myself over and over again. I tell myself to drop [noun], yet I respond with 'no, you can't do that right now.' What's wrong with me today? I scared the patron off because of my callous discourse to the self! I promised myself I wouldn't ever do this again. But alas..."; end the story saying "The patron was never a fan of debates, so your elaborate and insightful debate with yourself pushed him away." [It did take a good while to find how you could get this ending without impeding on other coding. Roughly 20 minutes was spent trying to find it. I referred to the Inform7 website, section 13.4 in the Celadon example.]

[BENEATH IS THE WAITING ROUTE]

After waiting the first time:
	say "If there's one thing I've noticed about these employees it’s that they've never been taught patience. They flip out rather elaborately if told to wait a couple of minutes. This patron seems to be no exception at all. He thought moving his hands in an orbit motion will force me into functionality. He was wrong. I stand here, plugged into the wall, waiting for him. The tables have turned. He thought he was waiting on me, but oh that's not true. It is he I wait for. What am I waiting for? Not sure."

After waiting the second time:
	say "This crosses the line for him. He was clearly raised in a house that eclipsed patience with their apparent 'now' mentality. I see him turn around to walk away from me. He opens the lounge door, walks through and heads to some other area. I know he's thinking about the interaction I gave him the opportunity to have. My supply before him is my supply after. I hope I didn't evaporate positivity from his day."; end the story saying "You've abandoned yourself from the ability to respond." [Originally this was going to be a sudden death situation. When you entered "wait", it was to end the game right then and there. I decided to add another step after I wrote the Eating ending. I didn't want three sudden death endings. I'm sufficient with two.]
]
[*******************This ends Michael's room*********************]

[********************Patrick's Room**************************]
[Edited by Ryan]

The green door is a picture. The description is "You look to the exit of the green room, but instead of seeing a stage or theater, you see the gallery that you just left." The green door is in the Green Room.
After walking into the green door:
	say "You turn and walk out of the green room. A familiar dizzyness hits you as you appear once again in the gallery.";
	now the player is in the east gallery.

The Green Room is a room. "As you walk into the Green Room, you look down to see yourself wearing different clothes than you were before. These are much more expensive, and not really your style, but they look good. You are backstage before the big show. You're a rocker, evidently."
[Above was added by Ryan]

An annoying groupie is in The Green Room. Understand "groupie" as annoying groupie.
The description of the groupie is "Sweet Lucy was a dancer, but none of us could chance her, because she was a samurai. Another city, another groupie... Man! They never leave..."
[i had to introduce the groupie early on. I realized that the game never explicitly tells you there's a groupie in there and you want them gone. Also, the first sentence is lyrics from a Deep Purple song called 'knockin at your back door'.]

The ballet shoes is in void. Understand “shoes” as ballet shoes. The ballet shoes is wearable. 
[Above line was edited, wanted to make the shoe appear after the goal had been accomplished.]
The description of the ballet shoes is “A pair of pointed shoes, perfect for a ballerina. Who knows why that groupie had them.”

A book is in The Green Room.
The description of the book is "It's your old chemistry book. How boring... Why do you still like that thing??"
[The character felt like he needed some complexity to him.]

A guitar is in The Green Room.
The description of the guitar is "There sits your 1961 Olympic White Stratocaster. You got it when you were 18. You've made tons of money, but this is still your ideal writing and performing guitar."
[This description is a real story about my guitar, except for the fact that I have not made money yet lol.]

A bass is in The Green Room.
The description of the bass is "Check out that '74 sunburst jazz bass. That thing sounds monstrous. Your neighbor's father gave it to the band as a 'thank you' when you saved his dog from drowning."
[My friend's dad lent me a bass to record an EP with. I didn't save his dog, but he did lend me a '74 model jazz bass. And it did in fact sound monstrous.]

A piano is in The Green Room.
The description of the piano is "This piano has been back here forever. Pretty sure Frank Sinatra has played at that old gem. Nostalgia from the music theory classes you took in college are coming back to you."
[I take music theory classes right now for my minor and it is taught to us in terms of a piano.]

A drum set is in The Green Room. Understand "drums" as drum set. 
The description of the drum set is "There's a set for the drummer to warm up with. Damn, that looks loud."
[I've never been able to play drums well, so I don't have much to say about them other than they're loud]

Understand "play [something]" as playing. playing is an action applying to one thing.

[This is a default reaction when the player plays something that doesn't need to be played.]

[The descriptions of the instruments and back story to them have some merit on my own musical experiences but there are added details to make the character appear more interesting.]

Carry out playing:
	say "Playing [the noun] will accomplish little."

[This understand and carry out rule simply tells Inform what to do if the player only types 'kick.' By default, if there is more than one 'thing' to kick in the room, Inform will ask the player 'What do you want to kick?' You can safely leave it out if you wish.]

Understand "play" as play. Play is an action applying to nothing.

Carry out play:
	say "Looking like a fool, you play air guitar."

[Use an instead rule if you want to play something and have a more interesting result.]

Instead of playing the guitar:
	say "Man, you really did it this time. She loved what she heard so much that she mothered two of your children. Nice going... [line break] IF ONLY YOU PLAYED SOMETHING ELSE."
	[I tried to take a comedic approach here. Like, I left so much out on purpose. She heard you play, next thing you know she has TWO of your children.]
	
	
Instead of playing the bass:
	say "Smart move trying to bore her with the bass. But you play it like Flea which is undoubtedly too cool for her to leave! [line break] IF ONLY YOU HAD PLAYED SOMETHING ELSE."
	[I think Flea is one of the best showmen in the music game, not just with his style but his way of slapping and playing.]
	
Before playing the drum set:
	if the Drum Sticks is held:
		continue the action;
	otherwise:
		say "It's going to be pretty hard to play drums without any drumsticks."
Instead of playing the drum set:
	say "Thank God she doesn't like noise, and that you are clearly illiterate on the drums. She actually gets pretty mad and pulls a pair of shoes out of her bag and throws them at you before storming out of the room.";
	now the annoying groupie is in the void;
	now the ballet shoes is in the Green Room.
	[As I mentioned before, I replicated my music abilities to the player character and I can't drum to save my life, so I thought that would be the perfect way to get her out of there.]
[Ryan here: Added the drum sticks stuff and things with the shoe to progress the game]
	
Instead of playing the piano:
	say "She's got a taste of your elegant side. You shouldn't have played Beethoven! [line break] IF ONLY YOU HAD PLAYED SOMETHING ELSE"
	[Let's be honest, you're not getting rid of a girl by playing classical piano...]
	
Instead of playing the annoying groupie:
	say "Sex is no way to tell her you're not interested! She thinks you're her boyfriend now... [line break] IF ONLY YOU HAD 'PLAYED' SOMETHING ELSE!"
	[I had to throw this option in there, it dawned on me and I thought it was hilarious.]
	
[I stole the verb coding from Timmons, it was originally "kick" but I changed it to "play" in order to adapt to the playable instruments in the green room]

[Ryan: all of the play stuff ended the story so I just changed those to tell they player the dialogue without actually ending the game]

[*************************This ends Patrick's room**********************]

[***************************Kyle's Room*********************************]
[Most of this room was written by Ryan]

The house door is a picture. The description is "You see that the exit to the room should probably lead outside, if not to a front hallway, but instead you see the gallery that you just came from."
After walking into the house door:
	say "You walk out of the party, and as the silence hits you, you realize just how quiet the gallery actually is...";
	now the player is in the east gallery.
The house door is in the house party.
[Above was written by Ryan]

Offering is an action applying to one carried thing.
Understand "offer [something]" as offering. 
Understand "give [something]" as offering.
A guest is a kind of thing.
	
The house party is a room. The description is "You're in the painted room of revellers and lovers, and the feeling all around you changes. There's an allure, a secret seduction. The whispers of the painted figures here brush over you like smoke. Just beyond, you see a living space the size of a classroom, furnished with elegant brown leather couches and chaises, and tapestries in scarlet and gold. On the right side of the room is a finished oak bar, where a naked man sits slumped, wearing a towel as a cape. It's the painting from the lobby, except you sense something is missing. You recall the missing detail. In the far corner a woman traces her finger idly over a parchment-colored globe the size of a beach ball. She was supposed to be with someone, locked in a sensual kiss, arms crossed over the shoulders of the missing person with a rose between two fingers like a cigarette. [line break] You glance around the room and immediately notice a few people. You see the naked man sitting over at the bar, you see a shy woman off by the couch, running her finger over the rim of her glass, and you see a blonde woman mingling with other partygoers. [line break] You also see the red haired woman over by the globe looking lonely."

The couches are in the house party. The description is "There are three brown leather couches off to the side of the room, arranged in a U shape for easier conversing, but they are mostly empty at the moment. The only person on the couches is the shy woman looking down into her drink."
The bar is in the house party. The description is "A beautiful oak bar that runs along the right side of the room. Behind it you see a handsomely dressed bartender, currently cleaning a glass. At the bar you see a naked man, apparently passed out on the countertop."
The tapestries are in the house party. The description is "There are a few beautiful tapestries that line the wall. They are adorned with silver and gold decorations, and they almost seem to move as you look at them."
The naked man is in the house party. The description is "You walk over to the bar and take a look at the naked man slumped over it. He is luckily wearing a towel around his neck, and it is folded over to cover the important parts. He looks like he is knocked out cold, best not disturb him."

[These are the people you can "interact" with]
The bartender is a guest in the house party. The description is "You walk up to the bar and strike up a conversation wtih the bartender. He introduces himself as Joseph. [line break] 'Hey friend, what'll ya have?' [line break] You reply that you don't want anything to drink, but you ask about the girl in the corner. [line break] 'Oh, her? That's Lila, she's been over there for a while now. To tell you the truth, I've been trying to work up the courage to talk to her all night, but I don't think it's my place. She does like flowers, though.'"

The shy woman is a guest in the house party. The description is "You walk over to the couch and sit across from the woman. She has jet black hair, and is wearing a flowing blue dress. You talk to her for a little while, and she gives you her name: Jamie [line break] 'H-hi, it's good to meet you.' [line break] You ask if she has talked to anyone else at the party [line break] 'Yeah... I tried talking to Lila for a little while, but she's almost always talking with someone else. I did figure out that her favorite color is red.'"

The blonde woman is a guest in the house party. The description is "You walk up to the group of people, and the blonde woman notices you and pulls you off to the side She says that her name is Kara. [line break] 'Hey there, sailor, what brings you here tonight?' [line break] You explain that you don't really know why you are here. You ask about the red haired girl in the corner [line break] 'Oh, Lila? Everyone has been after her all night, myself included, but she's a tough nut to crack. If you want to get to her, you're going to need a little something extra.'"

The red haired woman is a guest in the house party. The description is "You see her standing alone in the back of the room. She has stunning red hair and ashort green dress. Currently, she is fiddling with a paintbrush between her fingers. You try to go over and talk to her, but you feel like it would be wrong. It's like some invisible force is preventing you from getting near her, and you start to understand why the other partygoers are not going up to her."
After offering the rose in the house party:
	 say "You walk up and strike up a conversation with Lila. Things are going well. You offer her the rose and she suddenly embraces you in a passionate kiss. Time seems to stop as you hold her. After the moment is over, she pulls away and puts the paintbrush into your hand. [line break] 'A little something to remember me by' [line break] You walk back to the rest of the party, flustered, and unsure of exactly what just happened.";
	now the rose is in the void;
	now the player has the paintbrush.

Before offering the rose:
	if the player is not in the house party:
		say "You'd rather hold onto that for now." instead;
	otherwise:
		continue the action.
Instead of offering anything that is not the rose, say "You'd rather hold onto that for now."

[****************************This ends Kyle's room**********************]

[*****************************Sabrina's room****************************]
[Edited by Ryan]

The studio door is a picture. The description is "You look out the door expecting to see the outside world, or maybe another studio, but all you see is the gallery that you just came from."
After walking into the studio door:
	say "You leave the ballet studio, and you resist the urge to fall over as you appear back in the gallery.";
	now the player is in the west gallery. 
The studio door is in the ballet studio. 

The rose is in the void. The description is "A beautiful red rose with its thorns trimmed off. You got this from the crowd during your ballet performance. Very romantic, very beautiful."

The ballet studio is a room. The description is "The wall is lined with mirrors, and there are a few bars along the wall, likely for practice and balance. You catch a glimpse of yourself, and you see yourself wearing different clothes than before. You wear a one piece, skin-tight costume with glittery makeup and an unidentifiable accessory in your hair. Strangely enough, however, you are not wearing any shoes. You see a stage door off to the east, and you figure that it's almost showtime."

The stage is east of the ballet studio.
Before going to the stage:
	if the ballet shoes are not worn:
		say "You wouldn't dare go out on stage without your ballet shoes! Now where did they go..." instead;
	otherwise:
		 continue the action.
Instead of going to the stage: 
	say "You put on the pointed shoes and walk out onto the stage, greeted by an adoring crowd. Music starts to play, and you begin to dance. You don't remember taking any ballet lessons, but you move with the elegance and grace of someone that has practiced for years. It might be the shoes, or the painting, but as the music ends the crowd erupts into cheers. You catch a rose thrown from the audience and return back to the studio. You take off your shoes and toss them to the side.";
	now the ballet shoes is in the void;
	now the player has the rose. 
[most of this room was written by Ryan]

[******************************This ends Sabrina's room****************]

[Ending portion was also written by Ryan]

[The room where everything we don't need goes, also a placeholder]
The void is a room. The description is "You shouldn't be here..."
The exit painting is a picture in the void. The description is "Your own painting of an open door. It leads out into a bright, sunny day."


After walking into the exit painting, end the story saying "You step into the painting that you created and walk out into the world. You've finally escaped the gallery, time to head home, you've got some new ideas for your next project after today!"
[A winner is you!]