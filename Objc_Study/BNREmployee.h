//
//  BNREmployee.h
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 19/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import "BNRPerson.h"
#import "BNRAssets.h"
@class BNRAssets;

@interface BNREmployee : BNRPerson
{
    NSMutableSet *_assets;
}

@property (nonatomic) unsigned int employeerID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic) NSString *lastName;
@property (nonatomic) BNRPerson *spouse;
@property (nonatomic) NSMutableArray<BNRPerson *> *children;
@property (nonatomic, copy) NSSet *assets;


-(double) yearOfEmployment;
-(instancetype) initWithAlarmOffice:(unsigned int) alarmOffice;
-(unsigned int) _alarmOffice;
-(void) setAssets:(NSSet *)a;
-(NSSet *) assets;
-(void) addAssets:(BNRAssets *)a;
-(unsigned int) valueOfAssets;
-(BOOL) contaisObject:(id)x;

@end
