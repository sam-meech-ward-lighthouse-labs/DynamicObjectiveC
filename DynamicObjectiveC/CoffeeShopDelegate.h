//
//  CoffeeShopDelegate.h
//  DynamicObjectiveC
//
//  Created by Sam Meech-Ward on 2016-11-04.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Drink;

@protocol CoffeeShopDelegate <NSObject>

- (Drink *)makeMeACoffee;

@optional
- (Drink *)makeMeATea;

@end
