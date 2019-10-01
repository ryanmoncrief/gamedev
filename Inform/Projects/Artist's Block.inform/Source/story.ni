"Artist's Block" by Ryan

When play begins:
	say "You wake up in your smal room on a quiet Sunday morning, or at least it would be, if your deadline wasn't in two days. The gallery is opening Friday, and you havent even started on your painting to be showcased. You get out of bed, make yourself a cup of coffee, and head down to your art studio for the day. Who knows? Maybe inspiration will find you today..."
	[Give some context to the player and their situation to start]

Inspiration is a truth state that varies. Inspiration is initially false. 
[Variables are tricky. Took about an hour to figure out.]

[Define all the things in the room]
The Studio is a room. "Your art studio. This is where the magic happens. Many a masterpiece, and many more pieces of garbage have all been created in this very room. All of your necessary supplies are in their normal places."

The couch is an enterable supporter in the Studio. The description is "This little couch is nice for when you want to take a coffee break, or when you don't feel like going upstairs to your bed. Your dog is currently taking a nap in the middle of the couch."


[Inspiration source #1]
The dog is on the couch. The description is "It's Peanut, your beagle that you've had ever since you moved to New York. You remember the first day that your parents brought Peanut home. You spent hours in the backyard trying to pick her up, but she was so fast. You ended up falling asleep on the front porch with her in your arms. You remember that it was one of the happiest days of your life. [paragraph break] Suddenly, inspiration strikes you. The yard, a little puppy, a child chasing her, it's perfect! This is exactly what you need for the gallery!"
Before examining the dog:
	 if inspiration is true, say "No time to waste now, you've got the perfect idea and who knows how long it will last. Sorry, Peanut, your walk is going to have to wait." instead; otherwise continue the action.
After examining the dog: now Inspiration is true.
Before taking the dog, say "You go to pick up Peanut, but she looks so cute while sleeping that you can't bring yourself to wake her up." Instead.
[Playtester attempted to take dog. Could work, but it makes it easier if it just stays on the couch]


The side table is a supporter in the Studio. The description is "It's a little side table. There's a big bowl of apples on the table."

[The fruit bowl is sort of a red herring. Not very inspiring]
The bowl is an enterable container on the side table. The description is "A big bowl of apples. Pretty, but you've never been much for painting fruit. Too cliche. The apples look tasty, though."

The apple is in the bowl. It is edible. The description is "A shiny red apple, you think its a gala apple."
After eating the apple, say "Well, at least you aren't hungry anymore. Now, back to painting."
After entering the bowl, say "Well now you just feel ridiculous."
[I felt like this was more fun than just making it not enterable]

[Inspiration source #2]
The window is scenery in the Studio. The description is "You look out the window of your little apartment. You see the park not too far away. You are still surprised at how cheap this place was, despite how nice the view is, and it's in a decent neighborhood. Your thoughts drift to your first date with Sam. You both went to that very park and talked until the sun went down. You were about to head home when Sam kissed you, and you've been together ever since. [paragraph break] Suddenly, inspiration strikes you. The bench, the sunset, the silhouette of two lovers kissing, it's perfect! This is exactly what you need for the gallery!"
Before examining the window:
	if inspiration is true, say "No time to waste now, you've got the perfect idea and who knows how long it will last. The view can wait." instead; otherwise continue the action.
After examining the window: now Inspiration is true.


[Inspiration Source #3]
The letter is on the side table. The description is "It looks like a letter from Grandma. You open it up and start reading it. She just came back from winter in Florida with Gramps. She tells you about the beach and how your favorite tree that you climbed when you were a kid is still there. You remember splashing in the shallow parts of the water and flying your kite while your parents sat in the beach chairs a few feet away, sipping drinks without a care in the world. [paragraph break] Suddenly, inspiration strikes you. The beach chairs, the waves, the setting sun on the water, it's perfect! This is exactly what you need for the gallery!"
Before examining the letter:
	if inspiration is true, say "No time to waste now, you've got the perfect idea and who knows how long it will last. You can read the letter later." instead; otherwise continue the action.
After examining the letter: now Inspiration is true.

The easel is in the Studio. It is a supporter. The description is "Your reliable easel. It holds up the canvas and paint while you create works of art."

The canvas is on the easel. It is not portable. The description is "Ah, the canvas. Your best friend on some days, your worst enemy on others. It gives you a blank stare that seems to tell you that it is feeling particularly dificult today."

The paintbrush is on the easel. The description is "The trusty paintbrush. Your vehicle from which you put your thoughts into art."

[Make a new activity so we can paint stuff]
Painting is an action applying to nothing.
Understand "paint" as painting. 
Understand "paint canvas" as painting.
Understand "paint on canvas" as painting. 
Understand "paint on easel" as painting.
Understand "paint something" as painting.
Understand "paint with paintbrush" as painting.
[Most understand phrases provided by playtesters failing to paint stuff, there are always more]

[You can only paint after you become inspired. Maybe easier than real life, but hey it's a game]
Before painting:
	if inspiration is false, say "You sit for an hour staring down the blank canvas, but nothing is coming to you. Your eyes are starting to hurt, and you are just getting frustrated at this point. One thing is obvious, though. Sitting here is getting you nowhere." instead;
	otherwise continue the action.
Instead of painting:
	if the paintbrush is not held, say "You haven't tried finger painting since middle school. You much prefer using the paintbrush." instead;
	otherwise continue the action.
	[Multi-layered if statements suck. I'll have to see if there is a way to do it with more than 2 options. Took a while.]

After painting: end the story saying "Truly inspired, you let your hand dance across the canvas to create a beautiful work of art. You feel accomplished, and proud of what you have created. The gallery is going to love this!"

[A winner is you!]