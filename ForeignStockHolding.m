//
//  ForeignStockHolding.m
//  Myiostest
//
//  Created by 段梦娜 on 14-1-16.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

-(float)valueInDollars
{
    return [super valueInDollars] * conversionRate;
}

-(float)costInDollars
{
    return [super costInDollars] * conversionRate;
}
@end
