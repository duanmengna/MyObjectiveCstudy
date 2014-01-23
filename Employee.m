//
//  Employee.m
//  Myiostest
//
//  Created by 段梦娜 on 14-1-16.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

-(float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
    //    return 19.0;
}
- (void) addAssetsObject:(Asset *)a
{
    if(!assets){
        assets = [[NSMutableArray alloc] init];
    }
    [assets addObject:a];
}
- (unsigned int)valueOfAssets
{
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}
- (NSString *)description{
    return [NSString stringWithFormat:@"<Employee %d: %d in assets>",[self employeeID],[self valueOfAssets]];
}
- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
