//
//  JCPTile.h
//  Pirate Adventure
//
//  Created by Jonathan C Popp on 5/23/14.
//  Copyright (c) 2014 Jonathan C Popp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JCPWeapon.h"
#import "JCPArmor.h"

@interface JCPTile : NSObject

@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) JCPWeapon *weapon;
@property (strong, nonatomic) JCPArmor *armor;
@property (nonatomic) int healthEffect;

@end
