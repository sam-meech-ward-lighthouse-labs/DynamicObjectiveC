//
//  main.m
//  DynamicObjectiveC
//
//  Created by Sam Meech-Ward on 2016-11-04.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Friends.h"
#import "NSArray+Random.h"
#import "Starbucks.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        
    }
    return 0;
}

void isMemberOrKind() {
    NSArray *array = @[@1, @"string", [NSObject new], @3, @"sf"];
    
    for (int i = 0; i < array.count; ++i) {
        
        id object = array[i];
        
        BOOL isMember = [object isMemberOfClass:[NSObject class]];
        
        if (isMember) {
            NSLog(@"object is member of NSObject: %@", object);
        }
        
        BOOL isKind = [object isKindOfClass:[NSObject class]];
        
        if (isKind) {
            NSLog(@"object is kind of NSObject: %@", object);
        }
        
    }

}

void selectors() {
    id object = [[NSArray alloc] init];
    
    SEL selector = @selector(addObject:);
    
    if ([object respondsToSelector:selector]) {
        [object performSelector:selector withObject:@"String"];
        //            [object addObject:@"String"];
        NSLog(@"does respond");
    } else {
        NSLog(@"doesn't respond");
    }
}
