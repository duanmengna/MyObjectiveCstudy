//
//  Employee.m
//  Myiostest
//
//  Created by 段梦娜 on 14-1-16.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

-(float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
    //    return 19.0;
}

@end
