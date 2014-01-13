//
//  main.m
//  Myiostest
//
//  Created by 段梦娜 on 14-1-13.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Person.h"
#import "StockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        Person *person = [[Person alloc] init];
//        
//        [person setWeightInKilos:96];
//        [person setHeightInMeters:1.8];
//        
//        float bmi = [person bodyMassIndex];
//        NSLog(@"person (%d,%f) has a BMI of %f",[person weightInKilos],person.heightInMeters,bmi);
        StockHolding *share1 = [[StockHolding alloc] init];
        StockHolding *share2 = [[StockHolding alloc] init];
        StockHolding *share3 = [[StockHolding alloc] init];
        
        share1.purchaseSharePrice = 2.30;
        share1.currentSharePrice = 4.50;
        share1.numberOfShares = 40;
        
        [share2 setPurchaseSharePrice:12.19];
        [share2 setCurrentSharePrice:10.56];
        [share2 setNumberOfShares:90];
        
        share3.purchaseSharePrice = 45.10;
        share3.currentSharePrice = 49.51;
        share3.numberOfShares = 210;
        
        NSMutableArray *shares = [NSMutableArray array];
        [shares addObject:share1];
        [shares addObject:share2];
        [shares addObject:share3];
        for (StockHolding *share in shares) {
            NSLog(@"Cost:%f, Value: %f \n",[share costInDollars],[share valueInDollars]);
        }
        
    }
    return 0;
}

