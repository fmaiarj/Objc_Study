//
//  Pessoa.m
//  Objc_Study
//
//  Created by Luiz Felipe Oliveira Maia on 25/04/17.
//  Copyright © 2017 KronAutomacao. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa


-(NSString *)description {
    
    return  [NSString stringWithFormat:@"Nome: %@ -- Idade: %d", [self nome] , [self idade]];
    
}

-(void)dealloc {
    
    NSLog(@"Desalocado: %@", self.nome);
    
}

@end
