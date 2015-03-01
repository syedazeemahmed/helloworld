//
//  ViewController.m
//  HelloWorld
//
//  Created by Azeem on 21/02/2015.
//  Copyright (c) 2015 C company. All rights reserved.
//

#import "ViewController.h"
#import "HelloClassViewController.h"
#import "PlayVC.h"
#import "HTPVC.h"
#import "Question.h"
#import "CategoryVC.h"

@interface ViewController () {
	int myVariable;
	float otherVariable;
	NSMutableArray *myarray;
	NSMutableDictionary *myDictionary;
}

@end

@implementation ViewController
// init ?

- (void)viewDidLoad {
	[super viewDidLoad];
	myVariable = 1;
	otherVariable = 2.0;

	// initialize an array into the memory
	myarray = [[NSMutableArray alloc] init];
	[myarray addObject:@"TestObject0"];
	[myarray addObject:@"TestObject1"];
	
	// Initialize a mutable dictionary
	myDictionary = [[NSMutableDictionary alloc] init];
	[myDictionary setObject:@"myObject" forKey:@"TestKey"];
	[myDictionary setObject:[NSNumber numberWithInt:myVariable] forKey:@"TestKey"];

}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[myarray addObject:@"TestObject2"];
	NSLog(@"%d", myVariable);
	NSLog(@"%.2f", otherVariable);
	NSLog(@"%@", [myarray objectAtIndex:0]);
	NSLog(@"%@", myDictionary);
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
	HelloClassViewController *hcvc = [[HelloClassViewController alloc] init];
	[self.navigationController pushViewController:hcvc animated:YES];
}

- (IBAction)PlayButtonPressed:(id)sender {
	NSLog(@"Play button Pressed");
	
	
	// Creating Data
	/*
	 1. PHP call
	 2. Send to server
	 3. Return questions(question, answer_1, answer_2) array
	 4. for loop (her index, load as a question Model)
	 5. Neew array container array 
	 
//	 */
//	
//	NSMutableArray *serverArrayOfQuestion = [[NSMutableArray alloc] init];
//	NSDictionary *questionDictionary1 =  @{@"question" : @"Question number 1", @"answer_1": @"Answer is 1", @"answer_2": @"Answer is 2"};
//	[serverArrayOfQuestion addObject:questionDictionary1];
//	
//	NSDictionary *questionDictionary2 =  @{@"question" : @"Question number 2", @"answer_1": @"A", @"answer_2": @"Answer is 2"};
//	[serverArrayOfQuestion addObject:questionDictionary2];
//	
//	NSDictionary *questionDictionary3 =  @{@"question" : @"Question number 3", @"answer_1": @"B", @"answer_2": @"Answer is 2"};
//	[serverArrayOfQuestion addObject:questionDictionary3];
//	
//	NSDictionary *questionDictionary4 =  @{@"question" : @"Question number 1", @"answer_1": @"C", @"answer_2": @"Answer is 2"};
//	[serverArrayOfQuestion addObject:questionDictionary4];
//	
//	NSDictionary *questionDictionary5 =  @{@"question" : @"Question number 5", @"answer_1": @"D", @"answer_2": @"Answer is 2"};
//	[serverArrayOfQuestion addObject:questionDictionary5];
//	
//	NSDictionary *questionDictionary6 =  @{@"question" : @"Question number 6", @"answer_1": @"E", @"answer_2": @"Answer is 2"};
//	[serverArrayOfQuestion addObject:questionDictionary6];
//	
//	
//	NSMutableArray *actuallDataArrayToBeUsed = [[NSMutableArray alloc] init];
//	for (NSDictionary *dictionary in serverArrayOfQuestion) {
//		Question *question = [[Question alloc] initWithData:dictionary];
//		[actuallDataArrayToBeUsed addObject:question];
//	}
//
//	
////	PlayVC *pvc = [[PlayVC alloc] initWithActualData:actuallDataArrayToBeUsed];
////	[self.navigationController pushViewController:pvc animated:YES];
	
	CategoryVC *catVC = [[CategoryVC alloc] init];
	[self.navigationController pushViewController:catVC animated:YES];

}

- (IBAction)howToPlayButtonPressed:(id)sender {
	NSLog(@"How to play button Pressed");
	HTPVC *htpvc = [[HTPVC alloc] init];
	[self.navigationController pushViewController:htpvc animated:YES];
}
@end
