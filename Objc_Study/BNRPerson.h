//
//  BNRPerson.h
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 19/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(int , BlenderSpeed){
  
    BlenderSpeedStir,
    BlenderSpeedChop,
    BlenderSpeedLiquify,
    BlenderSpeedPulse,
    BlenderSpeedIceCrush
    
};



@interface BNRPerson : NSObject


@property (nonatomic) int pesoEmKilos;
@property (nonatomic) float alturaEmMetros;


-(float) indiceMassaCorporea;
-(void) SetSpeed:(BlenderSpeed)x;
@end
