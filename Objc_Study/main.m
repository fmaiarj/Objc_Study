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
#import "ViewController.h"


int main(int argc, char * argv[]) {
    @autoreleasepool {
      
        
        
        //Array base
        
        NSArray<NSString*> *originalStrings = @[@"SauerKraut", @"Rayyygun", @"Big Nerd Ranch", @"Mississippi"];
        
        NSLog(@"Original Strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        
        // Declarando the block variable
        
        void (^devowelizer)(id, NSUInteger, BOOL *);
        
        
        // Compose a block and assingn it to the variable
        
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            
            
            // Declarando `y` para busca na String declarada
            
            NSRange yRange = [string rangeOfString:@"yyy" options:NSCaseInsensitiveSearch];
            
            NSLog(@" Comprimento da Palavra -> %lu" , NSNotFound);
            
            // Procurando pela ocorrencia de y na String
            
            if (yRange.location != NSNotFound) {
                
                *stop = YES; // Previne futuras iterações
                return ; // Fim da iteração
            }
            
            
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            //Iterate over the array of vowels, replacing occurrences of each
            //with an empty string
            
            for (NSString *s in vowels) {
                
                NSRange fullRange = NSMakeRange(0, [newString length]);
                
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        
        }; // End of Block assignment
        
        
        // Iterate over the array with your block
        
        
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"devowelized strings: %@", devowelizedStrings);
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
    
    return 0;
}
