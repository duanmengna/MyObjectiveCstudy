//
//  main.m
//  Myiostest
//
//  Created by 段梦娜 on 14-1-13.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Person.h"
//#import "StockHolding.h"
#import "ForeignStockHolding.h"

void Stockfun();

void test_nsdate();
void test_hostname();
void test_groceries();

int main(int argc, const char * argv[])
{

    @autoreleasepool {

      //test_nsdate();
      //test_hostname();
      //test_groceries();

      Stockfun();
        
//        Person *person = [[Person alloc] init];
//id类型类似于(void*) ,可以指向任何类的实例。而不需要强制转换
//        id person  = [[Person alloc] init];
//        
//        [person setWeightInKilos:96];
//        [person setHeightInMeters:1.8];
//        
//        float bmi = [person bodyMassIndex];
//        NSLog(@"person (%d,%f) has a BMI of %f",[person weightInKilos],[person heightInMeters],bmi);
    return 0;
  }
}
    void Stockfun()
    {
        StockHolding *share1 = [[StockHolding alloc] init];
        StockHolding *share2 = [[StockHolding alloc] init];
        ForeignStockHolding *share3 = [[ForeignStockHolding alloc] init];
        
        share1.purchaseSharePrice = 2.30;
        share1.currentSharePrice = 4.50;
        share1.numberOfShares = 40;
        
        [share2 setPurchaseSharePrice:12.19];
        [share2 setCurrentSharePrice:10.56];
        [share2 setNumberOfShares:90];
        
        share3.purchaseSharePrice = 2.30;
        share3.currentSharePrice = 4.50;
        share3.numberOfShares = 40;
        share3.conversionRate = 0.50;
        
        NSMutableArray *shares = [NSMutableArray array];
        [shares addObject:share1];
        [shares addObject:share2];
        [shares addObject:share3];
        for (StockHolding *share in shares) {
            NSLog(@"Cost:%f, Value: %f \n",[share costInDollars],[share valueInDollars]);
        }
        
    }


void test_groceries(){
    NSMutableArray *list = [NSMutableArray array];
    [list addObject:@"Apple"];
    [list addObject:@"Or-juzi"];
    
    //NSLog(@"list:%@", list);
    for (NSString *name in list) {
        NSLog(@"the item %@:",name);
    }
}

void test_hostname()
{
    NSHost *currenthost = [NSHost currentHost];
    NSString *computername = [currenthost localizedName];
    NSLog(@"COMPUTER NAME IS %@",computername);
}

void test_nsdate()
{
    NSLog(@"my time zone: %@", [NSTimeZone localTimeZone]);
    NSLog(@"default tiime zone:%@",[NSTimeZone defaultTimeZone]);
    //NSLog(@"know tz list: %@",[NSLocale availableLocaleIdentifiers]);
    
    
    //NSLocale *mylocale = [NSLocale init]
    NSDictionary *myhash = [[NSUserDefaults standardUserDefaults] dictionaryRepresentation];
    NSDate *mybirth = [NSDate dateWithNaturalLanguageString:@"1989/05/22" locale:myhash];
    
    
    double timeinterval = [mybirth timeIntervalSinceNow];
    
    
    
    NSLog(@"My birth is %@---the time interval is %f",mybirth,timeinterval);
    
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setYear: 1989];
    [comps setMonth:5];
    [comps setDay:22];
    
    NSCalendar *g = [NSCalendar currentCalendar];
    [g setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Harbin"]];
    NSLog(@".....:%@", [g calendarIdentifier]);
    
    
    NSDate *dateofbirth = [g dateFromComponents:comps];
    double d = [[NSDate date] timeIntervalSinceDate:dateofbirth];
    NSLog(@"%@,----time interval is %f",dateofbirth,d);
}    
