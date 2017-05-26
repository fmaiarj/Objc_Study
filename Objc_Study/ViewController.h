//
//  ViewController.h
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 19/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BNRLOgger.h"

@interface ViewController : UIViewController <BNRLoggerProtocol>


@property (weak, nonatomic) IBOutlet UILabel *label;


@end

