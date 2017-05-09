//
//  BNRLOgger.h
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 04/05/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLOgger : NSObject <NSURLSessionDataDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}


@property (nonatomic) NSDate *lastTime;

-(NSString *) lastTimeString;
-(void) updateLastTime:(NSTimer *)t;


@end
