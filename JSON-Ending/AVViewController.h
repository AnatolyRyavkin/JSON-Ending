//
//  AVViewController.h
//  JSON-Ending
//
//  Created by Anatoly Ryavkin on 14.01.2020.
//  Copyright © 2020 AnatolyRyavkin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ManagerJSON.h"

NS_ASSUME_NONNULL_BEGIN

@interface AVViewController : UIViewController

@property (nonatomic)ManagerJSON * managerJSON;

-(void)separationAtComma;

@end

NS_ASSUME_NONNULL_END
