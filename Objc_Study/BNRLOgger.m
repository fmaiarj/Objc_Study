//
//  BNRLOgger.m
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 04/05/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import "BNRLOgger.h"

@implementation BNRLOgger


@synthesize delegate;


- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    
    NSLog(@"Recived %lu bytes", [data length]);
    
    if(! _incomingData) {
        
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}


- (void) connectionDidFinishLoading:(NSURLConnection *)connection {
    
    NSLog(@"Got it all!");
    NSString *str = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    
    NSData *data = [[NSData alloc] initWithData:_incomingData];
    
    [data writeToFile:@"/Users/FelipeMaia/Documents/recived.txt" atomically:YES];
    
    
    _incomingData = nil;
    
    NSLog(@"string has %lu charactesres" , [str length]);
    
    
    NSLog(@"Dados salvos no local");
    
    NSLog(@"%@", [delegate pathOfLogger:@"Felipe Maia" indexOfPath:15]);
    
}


- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    
    NSLog(@"Connection Failed: %@", [error localizedDescription]);
    
    _incomingData = nil;
    

}


-(NSString *)lastTimeString {
    
    static NSDateFormatter *dateFormatter = nil;
    
    if(!dateFormatter) {
        
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"Created dateFormatter");
        
    }
    
    return [dateFormatter stringFromDate:self.lastTime];
    
}

-(void)updateLastTime:(NSTimer *)t {
    
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}


-(void)zoneChange:(NSNotification *)note {
    
    
    NSDictionary *dados = note.userInfo;
    
    NSString *nome = [dados valueForKey:@"nome"];
    
    NSLog(@"The system time zone has changed! --->>> %@" , nome);
    
}


- (void)dealloc {
    
    NSLog(@"BNRLogger ->>>>> DESALOCANDO <<<< ----");
    
    sleep(2);
    
}

@end
