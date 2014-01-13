//
//  StockHolding.h
//  Myiostest
//
//  Created by 段梦娜 on 14-1-13.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

-(float)costInDollars;
-(float)valueInDollars;

@end
