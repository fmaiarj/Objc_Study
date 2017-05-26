//
//  BNRLOgger.h
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 04/05/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol BNRLoggerProtocol <NSObject>

@optional
- (NSString *) pathOfLogger:(NSString *) userName
                indexOfPath:(NSInteger) index;
- (NSDate *) shouldChangeLastTime;


@end



@interface BNRLOgger : NSObject <NSURLSessionDataDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}


@property (nonatomic) NSDate *lastTime;

// Verifica se um objeto esta delegado para executar a ação
@property (weak) id <BNRLoggerProtocol> delegate;

-(NSString *) lastTimeString;
-(void) updateLastTime:(NSTimer *)t;

// Chamado via Target-Action (SEL)
-(void) zoneChange:(NSString *)nome;


@end
