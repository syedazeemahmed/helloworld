//
//  CategoryVC.h
//  HelloWorld
//
//  Created by Azeem on 01/03/2015.
//  Copyright (c) 2015 C company. All rights reserved.
//

#import "ViewController.h"

@interface CategoryVC : ViewController  <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *categoryTableView;
@end
