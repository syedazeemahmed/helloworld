//
//  DVC.m
//  HelloWorld
//
//  Created by Azeem on 22/02/2015.
//  Copyright (c) 2015 C company. All rights reserved.
//

#import "DVC.h"

@interface DVC ()

@end

@implementation DVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)DVCPressed:(id)sender {
	[self.navigationController popToViewController: [self.navigationController.viewControllers objectAtIndex:1] animated:YES ];

}
@end
