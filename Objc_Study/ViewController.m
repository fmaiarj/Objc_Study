//
//  ViewController.m
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 19/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController




-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    
    self = [super initWithNibName:nibNameOrNil bundle:nil];
    
    NSLog(@" -->>> INICIALIZADOR CHAMADO <<< ----");
    
    return  self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSString *)pathOfLogger:(NSString *)userName indexOfPath:(NSInteger)index {
    
    NSString *str = @"/Users/FelipeMaia/Documents/logger.txt --- Method of ViewController Instace";
    
    str = [str stringByAppendingString:userName];
    
    
    NSString *indexStr = [NSString stringWithFormat:@"%ld" , (long) index];
    
    str = [str stringByAppendingString:indexStr];
    
    [_label setText:str];
    [_label setBackgroundColor:[UIColor greenColor]];
    
    return str;
}


- (void)dealloc {
    
    NSLog(@"VIEWCONTROLLER WAS DEALLOC ->>>>>> WAIT <<<<<<< ------");
    
    sleep(2);
    
}

@end
