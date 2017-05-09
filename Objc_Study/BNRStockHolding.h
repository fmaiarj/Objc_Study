//
//  BNRStockHolding.h
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 19/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) float _purchasePrice;
@property (nonatomic) float _currentPrice;
@property (nonatomic) int _numberOfShares;

-(float)costInDollars;
-(float)valueInDollars;



@end
