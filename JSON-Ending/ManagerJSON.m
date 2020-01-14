//
//  ManagerJSON.m
//  JSON-Ending
//
//  Created by Anatoly Ryavkin on 14.01.2020.
//  Copyright © 2020 AnatolyRyavkin. All rights reserved.
//

#import "ManagerJSON.h"

@implementation ManagerJSON

+(ManagerJSON*)sharedManagerJSON{

    static ManagerJSON*manager = nil;

    static dispatch_once_t onceToken;

    dispatch_once(&onceToken, ^{
        manager = [[ManagerJSON alloc]init];



    });
    return manager;
}

@end
