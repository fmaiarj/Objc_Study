//
//  AppDelegate.m
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 19/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   
    
    
    UIScreen *tela = [UIScreen mainScreen];
    
    CGRect dim = [tela bounds];
    
    self.window =  [[UIWindow alloc] initWithFrame:dim];
    
    ViewController *vc = [ViewController new];
    
    self.window.rootViewController = vc;
    
    
    [self.window makeKeyAndVisible];
    
    
    
    BNRLOgger *log = [[BNRLOgger alloc] init];
    
    // POST NOTIFICATION
    
    
    NSString *nome = [NSString stringWithFormat:@"Felipe Maia"];
    
    NSDictionary *params = [NSDictionary dictionaryWithObject:nome forKey:@"nome"];
    
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"MenssagemFelipe" object:nil userInfo:params];
    
    
    // NOTIFICATION MODEL
    
    
    
    [[NSNotificationCenter defaultCenter] addObserver:log selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];
    
    
    log.delegate = vc;
    
    
   // NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
    
   // NSURLRequest *req = [NSURLRequest requestWithURL:url];
    
   // __unused NSURLConnection *fetchCon = [[NSURLConnection alloc] initWithRequest:req delegate:log startImmediately:YES];
    
    NSLog(@"Finalizado !");
    
    log = nil;
    
    
    //[[NSRunLoop currentRunLoop] run];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
