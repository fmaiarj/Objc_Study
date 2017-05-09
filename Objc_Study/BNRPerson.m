//
//  BNRPerson.m
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 19/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import "BNRPerson.h"




@implementation BNRPerson



-(float)indiceMassaCorporea {
    
    float h = [self alturaEmMetros];
    return [self pesoEmKilos] / (h * h);
}


-(void)SetSpeed:(BlenderSpeed)x {
    
    NSLog(@"%d", x);
    
}
@end
