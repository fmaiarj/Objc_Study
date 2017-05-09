//
//  main.m
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 19/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "BNRLOgger.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
      
        BNRLOgger *logger = [[BNRLOgger alloc] init];
      
        
#pragma modificadao-HelperObject
        
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/files/205/205-h/205-h.htm#linkW5"];
        
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:req delegate:logger startImmediately:YES];
        
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        
        NSLog(@"Iniciado o processo!");
        
        [[NSRunLoop currentRunLoop] run];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
    
    return 0;
}
