create table accounts (
	id int not null auto_increment,
	email varchar (255) not null,
	username varchar (255) not null,
	password_hash varchar(75) not null,
	password_salt varchar(75) not null,
	primary key(id)
);	

create table lyrics (
	id int not null auto_increment,
	artist varchar (255) not null,
	song varchar (255) not null,
	album varchar (255) not null,
	lyrics longtext not null,
	year varchar (255) not null,
	genre varchar(255) not null,
	image longtext not null,
	user_id int not null references accounts(id),
	primary key(id)
);	


create table userlyrics (
	id int not null auto_increment,
	user_id int not null references accounts(id),
	song_id int not null references lyrics(id),
	primary key(id)
);	





insert into lyrics (song, artist, album, lyrics, year, genre, image, user_id) values('One Love', 'Bob Marley', 'Exodus', 'One love, one heart
Let''s get together and feel all right
Hear the children crying (One love)
Hear the children crying (One heart)
Sayin'', "Give thanks and praise to the Lord and I will feel all right
Sayin'', "Let''s get together and feel all right
Whoa, whoa, whoa, whoa

Let them all pass all their dirty remarks (one love)
There is one question I''d really love to ask (one heart)
Is there a place for the hopeless sinner
Who has hurt all mankind just to save his own?
Believe me

One love, one heart
Let''s get together and feel all right
As it was in the beginning (one love)
So shall it be in the end (one heart)
Alright, give thanks and praise to the Lord and I will feel all right
Let''s get together and feel all right
One more thing

Let''s get together to fight this Holy Armageddon (one love)
So when the Man comes there will be no, no doom (one song)
Have pity on those whose chances grow thinner
There ain''t no hiding place from the Father of Creation

Sayin'', one love, one heart
Let''s get together and feel all right
I''m pleading to mankind (one love)
Oh, Lord (one heart) whoa

Give thanks and praise to the Lord and I will feel all right
Let''s get together and feel all right

Give thanks and praise to the Lord and I will feel all right
Let''s get together and feel all right', '1975', 'Reggae', 'image', '1');


insert into lyrics (song, artist, album, lyrics, year, genre, image, user_id) values('Never Never', 'SBTRKT', ' ', 'It''s complicated when you gravitate towards yourself.
On the other hand it''s hard to talk to anyone else.
You can''t help-can''t help where your mind goes.
So lets'' harvest on the moon with the autumn snow.
''Cause I''ve never never had so much to gain and threw it all away.
And if I ever ever had the chance again I''d probably do the same.
Singing ooooh I''ve only let you down.
Singing ooooh I''ve left you the crown.
Open up open up to see your, see your face,
Watching yourself in your dreams like wide awake.
Hoping hoping you''ll return my calls.
Convince myself on my health that it''s not my fault.
''Cause I''ve never never had so much to gain and threw it all away.
And if I ever ever had the chance again I''d probably do the same.
Singing ooh I''ve only let you down.
Singing ooh I''ve left you the crown.

Ahhhhh...
Ooooh....
Ahhhhh...
Ooooohh...

No one ever had so much to gain or so much to lose.
No one ever had so much to gain or so much to lose.
No one ever had so much to gain or so much to lose.

If I ever had If I ever had if I ever had another...

See I''ve never never had so much to gain and threw it all away.
And if I ever ever had a chance again I''d probably do the same.
Singing ooooh I''ve only let you down.
Singing ooooh I''ve left you the crown.

See I''ve never never had so much to gain or had so much to lose.
And if I ever ever get past the shame and get through the bruises.
Singing oooh I''ll never let you down.
Singing oooh I never left the crown.
', ' ', ' ', ' ', '1');


insert into lyrics (song, artist, album, lyrics, year, genre, image, user_id) values('Walk in the Park', 'Beach House', ' ', 'You go for a walk in the park ''cause you don''t need anything
Your hand that you sometimes hold doesn''t do anything
The face that you see in the door isn''t standing there anymore

In a matter of time, it would slip from my mind
In and out of my life, you would slip from my mind
In a matter of time

The face that you saw in the door isn''t looking at you anymore
The name that you call in its place isn''t waiting for your embrace
The world that you love to behold cannot hold you anymore

In a matter of time it, would slip from my mind
In and out of my life, you would slip from my mind
In a matter of time

More, you want more
More, you want more
More, you want more, you tell me
More, only time can run me
More, you want more, you tell me
More, only time can run me
More, you want more you tell me
More, only time can run me
More, you want more, you tell me
More, only time can run me
More, you want more, you tell me
More, only time can run me
More, you want more, you tell me', ' ', ' ', ' ', '1');


insert into lyrics (song, artist, album, lyrics, year, genre, image, user_id) values('Milan', 'High Highs', ' ', 'I know you''re gonna leave me
I know
You''re gonna find the door
And fly to Milan, with the wind
I''m coming back to earth, back to earth

I know you''re gonna leave me
I know
Whatever way the wind blows
Tied up with twine, we fell in the sea
We will never be, never be

And you know they won''t believe you at all
Won''t you take me home
Won''t you take me home

You know they won''t believe you at all
And the summer ends
We''re spinning in', ' ', ' ', ' ', '1');


insert into lyrics (song, artist, album, lyrics, year, genre, image, user_id) values('Jaded', 'Disclosure', ' ', 'Your words give you away
Be careful how you say my name
Step back, refrain
Be honest when you save some face
''Cause you''re fading
Don''t mistake me for a fool
The game you play has changed

Take a look at yourself and the stories you tell
Does the truth weigh on your mind?
Tell me what did it cost when the moment was lost
Is this how you survive?

Why, oh why do you have to lie?
What are you afraid of?
We know what you''re made of
Now your time has passed you by
You''ve already made it
There''s no need to chase it
So get up, so get up and save it
''Cause enough is enough, you''re jaded
Your golden years left you behind
You cannot replace them
Face it or you''ll waste them
You cannot replace them
Face it or you''ll waste them
You cannot replace them

The gospel that you preach
Is poisonous beyond belief
But still, you''ll reach
Be careful of the truth
My speak is amazing
When it''s there in black and white for all to see
We sow and you reap

So take a look at yourself and the stories you tell
Does the truth weigh on your mind?
Tell me what did it cost when the moment was lost
Is this how you survive?

Why, oh why do you have to lie?
What are you afraid of?
We know what you''re made of
Now your time has passed you by
You''ve already made it
There''s no need to chase it
So get up, so get up and save it
''Cause enough is enough, you''re jaded
Your golden years left you behind
You cannot replace them
Face it or you''ll waste them
You cannot replace them
Face it or you''ll waste them
So get up, so get up and save it
''Cause enough is enough
You''re jaded
Your golden years left you behind
You cannot replace them
Face it or you''ll waste them
You cannot replace them
Face it or you''ll waste them
You cannot replace them', ' ', ' ', ' ', '1');




