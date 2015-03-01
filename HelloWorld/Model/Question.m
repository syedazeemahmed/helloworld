//
//  Question.m
//  HelloWorld
//
//  Created by Azeem on 28/02/2015.
//  Copyright (c) 2015 C company. All rights reserved.
//

#import "Question.h"

@implementation Question
- (id)initWithData:(NSDictionary *)dictionary {
	self = [super init];
	if (self) {
		
		self.question = [dictionary objectForKey:@"question"];
		self.answer1 = [dictionary objectForKey:@"answer_1"];
		
		NSLog(@"%@", [dictionary objectForKey:@"answer_1"]);
		
		self.answer2 = [dictionary objectForKey:@"answer_2"];
		
	}
	return self;
}

@end
