//
//  Question.h
//  HelloWorld
//
//  Created by Azeem on 28/02/2015.
//  Copyright (c) 2015 C company. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject {
	
}


@property (strong, nonatomic) NSString *question;
@property (strong, nonatomic) NSString *answer1;
@property (strong, nonatomic) NSString *answer2;


// Instance Methods
- (id)initWithData:(NSDictionary *)dictionary;



// Class Methods
@end
