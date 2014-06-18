//
//  JCPFactory.h
//  Pirate Adventure
//
//  Created by Jonathan C Popp on 5/23/14.
//  Copyright (c) 2014 Jonathan C Popp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JCPCharacter.h"
#import "JCPBoss.h"

@interface JCPFactory : NSObject

-(NSArray *) tiles;
-(JCPCharacter *) character;
-(JCPBoss *) boss;

@end
