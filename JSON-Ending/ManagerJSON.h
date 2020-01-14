//
//  ManagerJSON.h
//  JSON-Ending
//
//  Created by Anatoly Ryavkin on 14.01.2020.
//  Copyright © 2020 AnatolyRyavkin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ManagerJSON : NSObject

@property NSArray *arrayJSONInput;
@property NSArray *arrayJSONReady;

+(ManagerJSON*)sharedManagerJSON;

@end

NS_ASSUME_NONNULL_END
