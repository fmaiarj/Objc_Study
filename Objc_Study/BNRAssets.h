//
//  BNRAssets.h
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 19/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
@class BNREmployee;

@interface BNRAssets : NSObject


@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resalevalue;
@property (nonatomic) BNREmployee *holder;


@end

