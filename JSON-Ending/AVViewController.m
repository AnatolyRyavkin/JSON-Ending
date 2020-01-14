//
//  AVViewController.m
//  JSON-Ending
//
//  Created by Anatoly Ryavkin on 14.01.2020.
//  Copyright © 2020 AnatolyRyavkin. All rights reserved.
//

#import "AVViewController.h"

@interface AVViewController ()

@end

@implementation AVViewController
@synthesize managerJSON  = _managerJSON;

-(void)separationAtComma{

    NSMutableArray *arrayMutable = [NSMutableArray new];

    for(NSDictionary *dictionaryObject in self.managerJSON.arrayJSONInput){

        if(![dictionaryObject.allKeys containsObject:@"arrayRusMeaning"]){
            [arrayMutable addObject:dictionaryObject];
            continue;
        }

        NSMutableDictionary *dictionaryObjectMutable = [NSMutableDictionary dictionaryWithDictionary:dictionaryObject];

        NSArray *arrayRusMeaning = [dictionaryObject objectForKey:@"arrayRusMeaning"];

        NSMutableArray *arrayRusMeaningMutable = [NSMutableArray new];

        for(NSDictionary *dictionaryRusMeaning in arrayRusMeaning){

            if(![dictionaryRusMeaning.allKeys containsObject:@"arrayMeaningRusMeaning"]){
                [arrayRusMeaningMutable addObject:dictionaryRusMeaning];
                continue;
            }

            NSMutableDictionary *dictionaryRusMeaningMutable = [NSMutableDictionary dictionaryWithDictionary:dictionaryRusMeaning];

            NSArray *arrayMeaningRusMeaning = [dictionaryRusMeaning objectForKey:@"arrayMeaningRusMeaning"];

            NSMutableArray *arrayMeaningRusMeaningMutable = [NSMutableArray new];

            for(NSString *stringRusMeaning in arrayMeaningRusMeaning){
                
                NSLog(@"rusMeaning = %@",stringRusMeaning);

                // code

                [arrayMeaningRusMeaningMutable addObject:stringRusMeaning];
            }

            dictionaryRusMeaningMutable[@"arrayMeaningRusMeaning"] = [NSArray arrayWithArray:arrayMeaningRusMeaningMutable];

            [arrayRusMeaningMutable addObject:[NSDictionary dictionaryWithDictionary: dictionaryRusMeaningMutable]];

        }

        dictionaryObjectMutable[@"arrayRusMeaning"] = [NSArray arrayWithArray:arrayRusMeaningMutable];

        [arrayMutable addObject:[NSDictionary dictionaryWithDictionary: dictionaryObjectMutable]];

    }

    self.managerJSON.arrayJSONReady = [NSArray arrayWithArray:arrayMutable];
    
}

-(id)init{
    self = [super self];
    if(self){
        UIBarButtonItem*barBattonStarting = [[UIBarButtonItem alloc]initWithTitle:@"Start" style:UIBarButtonItemStylePlain target:self action:@selector(separationAtComma)];
        [self.navigationItem setLeftBarButtonItem:barBattonStarting];
        self.view.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.9];

    }
    return self;
}

-(ManagerJSON*)managerJSON{
    if(!_managerJSON){
        _managerJSON = [ManagerJSON sharedManagerJSON];
    }
    return _managerJSON;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.managerJSON;
    
}

@end
