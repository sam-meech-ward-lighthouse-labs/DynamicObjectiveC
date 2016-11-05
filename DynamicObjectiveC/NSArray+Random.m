//
//  NSArray+Random.m
//  DynamicObjectiveC
//
//  Created by Sam Meech-Ward on 2016-11-04.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import "NSArray+Random.h"

@implementation NSArray (Random)

- (id)random {
    int lastIndex = (int)self.count-1;
    
    int randomIndex = arc4random_uniform(lastIndex);
    
    return self[randomIndex];
}

@end
