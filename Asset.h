//
//  Asset.h
//  Myiostest
//
//  Created by 段梦娜 on 14-1-23.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
}
@property (strong) NSString *label;
@property unsigned int resaleValue;
@end
