//
//  BNRAssets.m
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 19/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import "BNRAssets.h"
#import "BNREmployee.h"

@implementation BNRAssets

-(NSString *)description {
    
    //return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resalevalue];
    
    
    // Is holder non-nil?
    
    if (self.holder) {
        
        return [NSString stringWithFormat:@"<%@: $%d , assigned to %@>", self.label, self.resalevalue, self.holder];
        
        
    }else {
        
        return [NSString stringWithFormat:@"<%@: $%d, unassigned>", self.label , self.resalevalue];
        
    }
    
    
}

/*
-(void)dealloc {
    
    NSLog(@"Deallocating %@", self);
    
}

 */

@end
