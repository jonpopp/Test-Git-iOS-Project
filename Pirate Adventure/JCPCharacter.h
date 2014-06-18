//
//  JCPCharacter.h
//  Pirate Adventure
//
//  Created by Jonathan C Popp on 6/18/14.
//  Copyright (c) 2014 Jonathan C Popp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JCPWeapon.h"
#import "JCPArmor.h"

@interface JCPCharacter : NSObject

@property (strong, nonatomic) JCPArmor *armor;
@property (strong, nonatomic) JCPWeapon *weapon;

@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
