//
//  ForeignStockHolding.h
//  Myiostest
//
//  Created by 段梦娜 on 14-1-16.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}
@property float conversionRate;
@end
