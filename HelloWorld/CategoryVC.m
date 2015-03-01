//
//  CategoryVC.m
//  HelloWorld
//
//  Created by Azeem on 01/03/2015.
//  Copyright (c) 2015 C company. All rights reserved.
//

#import "CategoryVC.h"

@interface CategoryVC ()
@property (strong, nonatomic) NSMutableArray *categoryArray;
@end

@implementation CategoryVC

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.navigationItem.title = @"Select Game Category";
    // Do any additional setup after loading the view from its nib.
	
	_categoryArray = [[NSMutableArray alloc] init];
	[_categoryArray addObject:@"Dot Net Quiz"];
	[_categoryArray addObject:@"Objective C Quiz"];
	[_categoryArray addObject:@"Java Quiz"];
	[_categoryArray addObject:@"PHP Quiz"];
	
	
}

#pragma mark table view delegates
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return _categoryArray.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//	cetegoryVCCEll *cell = (cetegoryVCCEll *)[tableView dequeueReusableCellWithIdentifier:kCellIdetifier];
//	cell.model = self.optionsArray[indexPath.row];
//	[cell setupCell];
//	return cell;

	return nil;
}
@end
