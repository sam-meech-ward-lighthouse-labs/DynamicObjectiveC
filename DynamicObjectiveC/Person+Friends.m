//
//  Person+Friends.m
//  DynamicObjectiveC
//
//  Created by Sam Meech-Ward on 2016-11-04.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import "Person+Friends.h"

@implementation Person (Friends)

- (void)addFriend:(Person *)friend {
    [self.friends addObject:friend];
}

@end
