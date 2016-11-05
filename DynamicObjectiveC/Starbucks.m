//
//  Starbucks.m
//  DynamicObjectiveC
//
//  Created by Sam Meech-Ward on 2016-11-04.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import "Starbucks.h"

#import "Drink.h"

@implementation Starbucks

- (Drink *)makeMeACoffee {
    return [[Drink alloc] init];
}

- (Drink *)makeMeATea {
    return [[Drink alloc] init];
}

@end
