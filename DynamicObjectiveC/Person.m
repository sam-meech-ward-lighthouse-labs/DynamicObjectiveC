//
//  Person.m
//  DynamicObjectiveC
//
//  Created by Sam Meech-Ward on 2016-11-04.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import "Person.h"
#import "Drink.h"

@interface Person()

@property (nonatomic, strong, readwrite) NSString *name;

@end


@implementation Person

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
        _friends = [NSMutableSet set];
    }
    return self;
}

- (void)updateName:(NSString *)name {
    self.name = name;
}

- (void)wakeUp {
    SEL teaSelector = @selector(makeMeATea);
    
    Drink *drink;
    
    if ([self.coffeeShopDelegate respondsToSelector:teaSelector]) {
        
        drink = [self.coffeeShopDelegate performSelector:teaSelector];
        NSLog(@"Drink the tea: %@", drink);
        
    } else {
        
         drink = [self.coffeeShopDelegate makeMeACoffee];
        NSLog(@"Drink the coffee: %@", drink);
        
    }
}

@end
