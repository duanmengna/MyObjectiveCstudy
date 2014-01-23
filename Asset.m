//
//  Asset.m
//  Myiostest
//
//  Created by 段梦娜 on 14-1-23.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d>",[self label],[
               self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
