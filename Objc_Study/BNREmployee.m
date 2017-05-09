//
//  BNREmployee.m
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 19/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAssets.h"

@interface BNREmployee ()
    
 @property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee


// Acessors for assets properties
-(void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

-(NSArray *)assets
{
    return [_assets copy];
}

-(void)addAssets:(BNRAssets *)a
{
    
    //Is assets nil?
    if(_assets) {
        
        // Create the array
        _assets = [[NSMutableSet alloc] init];
    
    }
        [_assets addObject:a];
    
}


-(unsigned int)valueOfAssets
{
    // Sum up the resale value of the assets
    
    unsigned int sum = 0;
    
    for (BNRAssets *a in _assets) {
        
        sum += [a resalevalue];
    }
    
    return sum;
}


-(double)yearOfEmployment {
    
    if(self.hireDate) {
        
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
        
    } else {
        
        return 0;
    }
    
}

-(float)indiceMassaCorporea {
    
    float NormalBMI = [super indiceMassaCorporea];
    return NormalBMI * 0.9;
    
}

-(NSString *)description {
    
    return [NSString stringWithFormat:@"<Employee %d>" , self.employeerID];
}


-(instancetype)initWithAlarmOffice:(unsigned int) alarmOffice {

    self =  [super init];
    
    [self setOfficeAlarmCode:alarmOffice];
    
    return  self;

}

-(unsigned int)_alarmOffice {
    
    return [self officeAlarmCode];
    
}

-(BOOL)contaisObject:(id)x {
    
    
   return  [_assets containsObject:x];
    
}


@end
