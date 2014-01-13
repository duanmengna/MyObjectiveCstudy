//
//  StockHolding.m
//  Myiostest
//
//  Created by 段梦娜 on 14-1-13.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

-(float)costInDollars
{
    return purchaseSharePrice * numberOfShares;
}
-(float)valueInDollars
{
    return currentSharePrice * numberOfShares;
}
@end
