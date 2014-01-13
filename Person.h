//
//  Person.h
//  Myiostest
//
//  Created by 段梦娜 on 14-1-13.
//  Copyright (c) 2014年 nana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

//-(void)setHeightInMeters:(float)h;
//-(float)heightInMeters;
//-(void)setWeightInKilos:(int)w;
//-(int)weightInKilos;
@property float heightInMeters;
@property int weightInKilos;

-(float)bodyMassIndex;
@end
