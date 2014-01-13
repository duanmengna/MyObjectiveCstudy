//
//  Person.m
//  Myiostest
//
//  Created by 段梦娜 on 14-1-13.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;
//- (void)setHeightInMeters:(float)h
//{
//    heightInMeters = h;
//}
//- (float)heightInMeters
//{
//    return heightInMeters;
//}
//- (void)setWeightInKilos:(int)w
//{
//    weightInKilos = w;
//}
//- (int)weightInKilos
//{
//    return weightInKilos;
//}
-(float)bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}
@end
