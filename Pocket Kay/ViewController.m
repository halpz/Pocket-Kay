//
//  ViewController.m
//  Pocket Kay
//
//  Created by Paul Halpin on 03/02/2015.
//  Copyright (c) 2015 Paul Halpin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (BOOL)prefersStatusBarHidden {
	return YES;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	srand48(time(0));

	self.peter = [[UIImageView alloc] initWithFrame:self.view.frame];
	self.peter.image = [UIImage imageNamed:@"kay1.png"];
	self.peter.contentMode = UIViewContentModeScaleAspectFit;
	[self.view addSubview:self.peter];

	UIImage *curtain = [UIImage imageNamed:@"curtain.jpg"];
	UIImage *flippedImage = [UIImage imageWithCGImage:curtain.CGImage scale:curtain.scale orientation:UIImageOrientationUpMirrored];

	self.leftCurtain = [[UIImageView alloc] initWithFrame:(CGRect) {0, 0, self.view.frame.size.width * 0.5, self.view.frame.size.height }];
	self.leftCurtain.image = curtain;
	[self.view addSubview:self.leftCurtain];

	self.rightCurtain = [[UIImageView alloc] initWithFrame:(CGRect) {self.view.frame.size.width *0.5, 0, self.view.frame.size.width *0.5, self.view.frame.size.height }];
	self.rightCurtain.image = flippedImage;
	[self.view addSubview:self.rightCurtain];


	self.mainButton = [UIButton buttonWithType:UIButtonTypeCustom];
	self.mainButton.frame = self.view.frame;
	self.mainButton.backgroundColor = [UIColor clearColor];
	[self.mainButton addTarget:self action:@selector(openCurtain) forControlEvents:UIControlEventTouchUpInside];

	self.mainButton.showsTouchWhenHighlighted = NO;
	self.mainButton.userInteractionEnabled = NO;
	[self.view addSubview:self.mainButton];
	self.view.backgroundColor = [UIColor blackColor];
	self.quotes = @[@"I saw a fat woman wearing a sweatshirt with 'Guess' on it. I said 'Thyroid problem?'",
	                @"When I was a kid I used to pray every night for a new bike. Then I realised that The Lord doesn't work that way, so I stole one and asked him to forgive me.",
	                @"I've often wanted to drown my troubles, but I can't get my wife to go swimming.",
	                @"I was doing some decorating, so I got out my step-ladder. I don't get on with my real ladder.",
	                @"I went to a restaurant that serves 'breakfast at any time'. So I ordered French Toast during the Renaissance.",
	                @"A cement mixer collided with a prison van on the Kingston Bypass. Motorists are asked to be on the lookout for 16 hardened criminals.",
	                @"Well I was bullied at school, called all kinds of different names. But one day I turned to my bullies and said 'Sticks and stones may break my bones but names will never hurt me', and it worked! From there on it was sticks and stones all the way.",
	                @"My Dad used to say 'always fight fire with fire', which is probably why he got thrown out of the fire brigade.",
	                @"Sex is like playing bridge: If you don't have a good partner, you better have a good hand.",
	                @"I saw six men kicking and punching the mother-in-law. My neighbour said 'Are you going to help?' I said 'No, six should be enough.'",
	                @"If we aren't supposed to eat animals, then why are they made out of meat?",
	                @"I think animal testing is a terrible idea; they get all nervous and give the wrong answers.",
	                @"You know that look women get when they want sex? No, me neither",
	                @"Politicians are wonderful people as long as they stay away from things they don't understand, such as working for a living.",
	                @"I was the kid next door's imaginary friend.",
	                @"Right now I'm having amnesia and deja vu at the same time. I think I've forgotten this before",
	                @"Triangular sandwiches taste better than square ones.",
	                @"At the end of every party there is always a girl crying.",
	                @"One of the most awkward things that can happen in a pub is when your pint-to-toilet cycle gets synchronised with a complete stranger.",
	                @"Sharpening a pencil with a knife makes you feel really manly.",
	                @"You're never quite sure whether it's against the law or not to have a fire in your back garden.",
	                @"Nobody ever dares make cup-a-soup in a bowl.",
	                @"You never know where to look when eating a banana.",
	                @"You always feel a bit scared when stroking horses.",
	                @"The smaller the monkey the more it looks like it would kill you at the first given opportunity.",
	                @"Every bloke has at some stage while taking a pee, flushed half way through and then raced against the flush.",
	                @"Its impossible to look cool whilst picking up a Frisbee.",
	                @"Driving through a tunnel makes you feel excited.",
	                @"Old ladies can eat more than you think.",
	                @"You can't respect a man who carries a dog.",
	                @"Despite constant warning, you have never met anybody who has had their arm broken by a swan.",
	                @"You've turned into your dad the day you put aside a thin piece of wood specifically to stir paint with.",
	                @"Knowledge is knowing a tomato is a fruit; wisdom is not putting it in a fruit salad.",
	                @"Why does your gynaecologist leave the room when you get undressed?",
	                @"If a person owns a piece of land do they own it all the way down to the core of the earth?",
	                @"Why can't women put on mascara with their mouth closed?",
	                @"Is it possible to brush your teeth without wiggling your bottom?",
	                @"Why is it called Alcoholics Anonymous when the first thing you do is stand up and say, 'My name is Peter and I am an alcoholic'?",
	                @"Why are they called stairs inside but steps outside?",
	                @"Why is there a light in the fridge and not in the freezer?",
	                @"Why does mineral water that 'has trickled through mountains for centuries' have a 'use by' date?",
	                @"Why do toasters always have a setting that burns the toast to a horrible crisp no one would eat?",
	                @"Is French kissing in France just called kissing?",
	                @"Who was the first person to look at a cow and say, 'I think I'll squeeze these dangly things here and drink whatever comes out'?",
	                @"What do people in China call their good quality plates?",
	                @"Why do people point to their wrist when asking for the time, but don't point to their crotch when they ask where the bathroom is?",
	                @"What do you call male ballerinas?",
	                @"Why is a person that handles your money called a 'Broker'?",
	                @"If quizzes are quizzical, what are tests?",
	                @"If corn oil is made from corn, and vegetable oil is made from vegetables, then what is baby oil made from?",
	                @"Why is it that when someone tells you that there are over a billion stars in the universe, you believe them, but if they tell you there is wet paint somewhere, you have to touch it to make sure.",
	                @"Garlic bread",
	                @"It's me!. Peter Kay",
	                @"It's Spitting",
	                @"Come and get your black bin bags",
	                @"Put the big light on",
	                @"How does Bob Marley like his doughnuts? Wi' jam in!",
	                @"Do you ever dip your biscuit in your tea and it breaks? You panic, it's like slow-motion: 'Mum, get a spoon quick, my biscuit's fallen in my brew!' Hobnobs are like the marines. You dip a Hobnob and they go, 'Again, again!'",
	                @"Knock Knock. Who's there? Biggish. Biggish who? No, not today thanks.",
	                @"I met a Dutch girl with inflatable shoes last week, phoned her up to arrange a date but unfortunately she'd popped her clogs.",
	                @"Two Chilly Eskimos sitting in a kayak; but when they lit a fire in the craft, it sank, proving once and for all that you can't have your kayak and heat it.",
	                @"You see I'm against hunting, in fact I'm a hunt saboteur. I go out the night before and shoot the fox.",
	                @"So I went down the local supermarket, I said 'I want to make a complaint, this vinegar's got lumps in it', he said 'Those are pickled onions'.",
	                @"I saw this bloke chatting up a cheetah, I thought 'he's trying to pull a fast one'.",
	                @"So I said to the Gym instructor 'Can you teach me to do the splits?'. He said 'How flexible are you?'. I said 'I can't make Tuesdays'.",
	                @"But I'll tell you what I love doing more than anything: trying to pack myself in a small suitcase. I can hardly contain myself.",
	                @"So I was having dinner with Garry Kasporov (world chess champion) and there was a check tablecloth. It took him two hours to pass me the salt. He said, 'You remind me of a pepper-pot', I said 'I'll take that as a condiment'. ",
	                @"So a lorry-load of tortoises crashed into a trainload of terrapins, I thought, 'That's a turtle disaster'.",
	                @"Rummaging in an overgrown garden will always turn up a bouncy ball.",
	                @"Get back, you bastard. I'll break your legs!"];

	int textOffset = 80;
	UIImage *kayText = [UIImage imageNamed:@"kaytext.png"];
	CGFloat textHeight = (kayText.size.height / kayText.size.width) * self.view.frame.size.width * 0.8;
	textFrame1 = (CGRect) {self.view.frame.size.width *0.1, textOffset, self.view.frame.size.width *0.8, textHeight };
	textFrame0 = CGRectOffset(textFrame1, 0, -(textHeight + textOffset));
	self.kayText = [[UIImageView alloc] initWithFrame:textFrame1];
	self.kayText.image = kayText;
	[self.view addSubview:self.kayText];

	self.leftPaddy = [[UIImageView alloc] initWithFrame:(CGRect) {0, 0, self.view.frame.size.width * 0.5, self.view.frame.size.height }];
	self.rightPaddy = [[UIImageView alloc] initWithFrame:(CGRect) {self.view.frame.size.width *0.5, 0, self.view.frame.size.width *0.5, self.view.frame.size.height }];
	self.leftPaddy.contentMode = UIViewContentModeScaleAspectFit;
	self.rightPaddy.contentMode = UIViewContentModeScaleAspectFit;
	self.leftPaddy.image = [UIImage imageNamed:@"beforehand.png"];
	self.rightPaddy.image = [UIImage imageNamed:@"pad1.png"];
	[self.view addSubview:self.leftPaddy];
	[self.view addSubview:self.rightPaddy];
	[self performSelector:@selector(paddy) withObject:nil afterDelay:1.0];
}

- (void)paddy {
	paddyMode = YES;

	AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:@"Let the Peter. See the Kay!"];
	utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-GB"];
	utterance.rate = 0.05;

	AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc] init];
	synthesizer.delegate = self;
	[synthesizer pauseSpeakingAtBoundary:AVSpeechBoundaryWord];
	[synthesizer speakUtterance:utterance];
}

- (void)openCurtain {
	self.mainButton.userInteractionEnabled = NO;
	[UIView animateWithDuration:0.5 animations: ^{
	    self.leftCurtain.frame = (CGRect) {-self.view.frame.size.width * 0.5, 0, self.view.frame.size.width * 0.5, self.view.frame.size.height };
	    self.rightCurtain.frame = (CGRect) {self.view.frame.size.width, 0, self.view.frame.size.width * 0.5, self.view.frame.size.height };
	    self.kayText.frame = textFrame0;
	} completion: ^(BOOL finished) {
	    [self speak];
	}];
}

- (void)speak {
	NSUInteger randomIndex = arc4random() % [self.quotes count];
	NSString *string = self.quotes[randomIndex];
	AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:string];
	utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-GB"];
	utterance.rate = 0.1;

	AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc] init];
	synthesizer.delegate = self;
	[synthesizer pauseSpeakingAtBoundary:AVSpeechBoundaryWord];
	[synthesizer speakUtterance:utterance];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

#pragma mark - AVSpeechSynthesizerDelegate
- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer willSpeakRangeOfSpeechString:(NSRange)characterRange utterance:(AVSpeechUtterance *)utterance {
	if (paddyMode) {
		[self.rightPaddy setImage:[UIImage imageNamed:@"pad2.png"]];
		[self performSelector:@selector(sylable) withObject:nil afterDelay:0.1];
	}
	else {
		[self.peter setImage:[UIImage imageNamed:@"kay2.png"]];
		[self performSelector:@selector(sylable) withObject:nil afterDelay:0.1];
	}
}

- (void)sylable {
	if (paddyMode) {
		[self.rightPaddy setImage:[UIImage imageNamed:@"pad1.png"]];
		count++;
		if (count == 5) {
			[self.leftPaddy setImage:[UIImage imageNamed:@"afterhand.png"]];
		}
	}
	else {
		[self.peter setImage:[UIImage imageNamed:@"kay1.png"]];
	}
}

- (void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer didFinishSpeechUtterance:(AVSpeechUtterance *)utterance {
	if (paddyMode) {
		[UIView animateWithDuration:0.5 animations: ^{
		    self.leftPaddy.frame = (CGRect) {0, self.view.frame.size.height, self.view.frame.size.width * 0.5, self.view.frame.size.height };
		    self.rightPaddy.frame = (CGRect) {self.view.frame.size.width * 0.5, self.view.frame.size.height, self.view.frame.size.width * 0.5, self.view.frame.size.height };
		} completion: ^(BOOL finished) {
		    [self.leftPaddy removeFromSuperview];
		    [self.rightPaddy removeFromSuperview];
		    self.mainButton.userInteractionEnabled = YES;
		    paddyMode = NO;
		    return;
		}];
	}

	//TEXT
	self.lolText = [[THLabel alloc] init];
	self.lolText.font = [UIFont fontWithName:@"ComicSansMS" size:60.0];
	self.lolText.textColor = [UIColor whiteColor];
	NSArray *texts = @[@"LOL!", @"LMAO!", @"ROFL!", @"OMG!", @"So True!", @"Classic Kay!", @"Northern!", @"He's Right!", [NSString stringWithFormat:@"%C", 0xe404], [NSString stringWithFormat:@"%C", 0xe412], [NSString stringWithFormat:@"%C", 0xe409]];
	NSUInteger randomIndex = arc4random() % [texts count];
	NSString *loltxt = texts[randomIndex];
	self.lolText.text = loltxt;
	self.lolText.strokeSize = 2.5;
	self.lolText.strokeColor = [UIColor blackColor];
	[self.lolText sizeToFit];
	self.lolText.textAlignment = NSTextAlignmentCenter;
	[self.view addSubview:self.lolText];
	self.lolText.alpha = 0.0;
	CGFloat newX = arc4random_uniform(self.view.bounds.size.width - self.lolText.bounds.size.width) +
	    self.lolText.bounds.size.width / 2;
	CGFloat newY = arc4random_uniform(self.view.bounds.size.height - self.lolText.bounds.size.height) + self.lolText.bounds.size.height / 2;
	self.lolText.center = CGPointMake(newX, newY);
	int r = arc4random_uniform(40) - 20;
	self.lolText.transform = CGAffineTransformMakeRotation(r / 180.0 * M_PI);

	//Laugh & Animation
	[self laughTrack];
	[UIView animateWithDuration:1.0 animations: ^{
	    self.lolText.alpha = 1.0;
	} completion: ^(BOOL finished) {
	    self.mainButton.userInteractionEnabled = YES;
	    [UIView animateWithDuration:1.0 animations: ^{
	        self.lolText.alpha = 0.0;
	        self.leftCurtain.frame = (CGRect) {0, 0, self.view.frame.size.width * 0.5, self.view.frame.size.height };
	        self.rightCurtain.frame = (CGRect) {self.view.frame.size.width * 0.5, 0, self.view.frame.size.width * 0.5, self.view.frame.size.height };
	        self.kayText.frame = textFrame1;
		} completion: ^(BOOL finished) {
	        self.lolText = nil;
		}];
	}];
}

- (void)laughTrack {
	NSUInteger randomIndex = (arc4random() % 4) + 1;
	NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/laugh%ld.wav", [[NSBundle mainBundle] resourcePath], (unsigned long)randomIndex]];
	self.laugh = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
	[self.laugh play];
}

@end
