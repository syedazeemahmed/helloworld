//
//  HelloClassViewController.m
//  HelloWorld
//
//  Created by Azeem on 22/02/2015.
//  Copyright (c) 2015 C company. All rights reserved.
//

#import "HelloClassViewController.h"
#import "CVC.h"

@interface HelloClassViewController ()

- (IBAction)sureshButtontapped:(id)sender;
@end

@implementation HelloClassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	NSLog(@"%@",@"Suresh");
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

- (IBAction)sureshButtontapped:(id)sender {
	CVC *cvc = [[CVC alloc] init];
	[self.navigationController pushViewController:cvc animated:YES];
}
@end
