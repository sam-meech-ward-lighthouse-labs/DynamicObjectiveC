//
//  Person.h
//  DynamicObjectiveC
//
//  Created by Sam Meech-Ward on 2016-11-04.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoffeeShopDelegate.h"

@interface Person : NSObject

- (instancetype)initWithName:(NSString *)name;

- (void)updateName:(NSString *)name;

- (void)wakeUp;

@property (nonatomic, strong, readonly) NSString *name;

@property (nonatomic, strong) NSMutableSet *friends;

@property (nonatomic, weak) id <CoffeeShopDelegate> coffeeShopDelegate;

@end
