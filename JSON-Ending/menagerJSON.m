//
//  menagerJSON.m
//  JSON-Ending
//
//  Created by Anatoly Ryavkin on 13.01.2020.
//  Copyright © 2020 AnatolyRyavkin. All rights reserved.
//

#import "menagerJSON.h"

@implementation menagerJSON

+(menagerJSON*)sharedManagerJSON{

    static menagerJSON*manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[menagerJSON alloc]init];
    });
    return manager;
}

@end
