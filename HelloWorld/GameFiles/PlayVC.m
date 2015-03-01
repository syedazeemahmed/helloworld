//
//  PlayVC.m
//  HelloWorld
//
//  Created by Azeem on 28/02/2015.
//  Copyright (c) 2015 C company. All rights reserved.
//

#import "PlayVC.h"
#import "Question.h"

#define SIMPLE_ALERTVIEW(msg) { [[[UIAlertView alloc] initWithTitle:@"" message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show]; }

@interface PlayVC () {
	NSString *questionToBeShown;
	NSString *answer1ToBeShown;
	NSString *answer2ToBeShown;

	NSInteger currentIndex;
}

@property (weak, nonatomic) IBOutlet UIButton *answer2Button;
@property (weak, nonatomic) IBOutlet UIButton *answer1Button;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

- (void)loadNextQuestion;
@end

@implementation PlayVC

- (id)initWithActualData:(NSArray *)dataArray {
	self = [super init];
	if (self) {
		self.questionArray = [[NSMutableArray alloc] initWithArray:dataArray];
	}
	return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
	
	currentIndex = 0;

	[self loadNextQuestion];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated {
}


- (void)loadNextQuestion {
	
	if(currentIndex < self.questionArray.count-1 )
		currentIndex++;
	
	questionToBeShown = ((Question *)[self.questionArray objectAtIndex:currentIndex]).question;
	answer1ToBeShown = ((Question *)[self.questionArray objectAtIndex:currentIndex]).answer1;
	answer2ToBeShown = ((Question *)[self.questionArray objectAtIndex:currentIndex]).answer2;
	
	self.questionLabel.text = questionToBeShown;
	[self.answer1Button setTitle:answer1ToBeShown forState:UIControlStateNormal];
	[self.answer2Button setTitle:answer2ToBeShown forState:UIControlStateNormal];
	
	
	if(currentIndex == 3)
		self.answer1Button.backgroundColor = [UIColor yellowColor];

}

- (IBAction)answer2Pressed:(id)sender {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"OOps" message:@"Ohh Wrong Answer" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Show Next", @"Show Previous", nil];
	alert.tag = 1010;
	[alert show];
}

- (IBAction)NextButtonPressed:(id)sender {
	

	
	[self loadNextQuestion];
}

- (IBAction)answer1Pressed:(id)sender {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Yeah" message:@"Correct" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Do something but not Next" , nil];
	alert.tag = 2020;
	[alert show];
}


#pragma mark UIAlertView Delegates
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	NSLog(@"%ld", (long)buttonIndex);
	if(alertView.tag == 1010) {
		if(buttonIndex == 1)
			[self loadNextQuestion];
	}
	else if(alertView.tag == 2020) {
		if(buttonIndex == 1) {
			SIMPLE_ALERTVIEW(@"Yeah I am doosra alert");
		}

	}
}
@end
