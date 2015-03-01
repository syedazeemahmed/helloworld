//
//  ViewController.h
//  HelloWorld
//
//  Created by Azeem on 21/02/2015.
//  Copyright (c) 2015 C company. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 
@property (weak, nonatomic) IBOutlet UIButton *howToPlayButton;
@property (weak, nonatomic) IBOutlet UIButton *PlayButton;

- (IBAction)buttonPressed:(id)sender;
- (IBAction)PlayButtonPressed:(id)sender;
- (IBAction)howToPlayButtonPressed:(id)sender;


@end

