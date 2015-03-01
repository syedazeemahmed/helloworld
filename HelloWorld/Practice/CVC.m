//
//  CVC.m
//  HelloWorld
//
//  Created by Azeem on 22/02/2015.
//  Copyright (c) 2015 C company. All rights reserved.
//

#import "CVC.h"
#import "DVC.h"
@interface CVC ()

@end

@implementation CVC

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

- (IBAction)backToHomePressed:(id)sender {
	[self.navigationController popToRootViewControllerAnimated:YES];
//	[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

- (IBAction)TakeMeToDVC:(id)sender {
	DVC *dvc = [[DVC  alloc] init];
	[self.navigationController pushViewController:dvc
										 animated:YES ];
}
@end
