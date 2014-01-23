//
//  Employee.h
//  Myiostest
//
//  Created by 段梦娜 on 14-1-16.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}
@property int employeeID;
- (void)addAssetsObject: (Asset *)a;
- (unsigned int)valueOfAssets;

@end
