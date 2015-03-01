//
//  PlayVC.h
//  HelloWorld
//
//  Created by Azeem on 28/02/2015.
//  Copyright (c) 2015 C company. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayVC : UIViewController

@property (strong, nonatomic) NSMutableArray *questionArray;

- (id)initWithActualData:(NSArray *)dataArray;
- (IBAction)NextButtonPressed:(id)sender;
- (IBAction)answer1Pressed:(id)sender;
- (IBAction)answer2Pressed:(id)sender;

@end
