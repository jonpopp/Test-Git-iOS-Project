//
//  JCPFactory.m
//  Pirate Adventure
//
//  Created by Jonathan C Popp on 5/23/14.
//  Copyright (c) 2014 Jonathan C Popp. All rights reserved.
//

#import "JCPFactory.h"
#import "JCPTile.h"

@implementation JCPFactory
-(NSArray *) tiles {
    JCPTile *tile1 = [[JCPTile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake  a voyage to stop the evil pirate Boss.  Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    JCPWeapon *bluntedSword = [[JCPWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword";
    
    JCPTile *tile2 = [[JCPTile alloc] init];
    tile2.story = @"You have come across an armory.  Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    JCPArmor *steelArmor = [[JCPArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 12;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take the armor";
    
    JCPTile *tile3 = [[JCPTile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon.  Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the dock";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    JCPTile *tile4 = [[JCPTile alloc] init];
    tile4.story = @"You have found a parrot.  This can be used in your armor slot.  Parrots are a great defender and are fiercly loyal to their captain!";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    tile4.actionButtonName = @"Adopt the parrot";
    JCPArmor *parrotAmor = [[JCPArmor alloc] init];
    parrotAmor.health = 20;
    parrotAmor.name = @"Parrot";
    
    JCPTile *tile5 = [[JCPTile alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons.  Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    tile5.actionButtonName = @"Grab the pistol";
    JCPWeapon *pistolWeapon = [[JCPWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    
    JCPTile *tile6 = [[JCPTile alloc] init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank!";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear!";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    JCPTile *tile7 = [[JCPTile alloc] init];
    tile7.story = @"You have sighted a pirate battle off the coast.  Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight the pirate scum!";
    
    JCPTile *tile8 = [[JCPTile alloc] init];
    tile8.story = @"The legend of the deep, the mighty kraken appears!";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abondon ship!";
    
    JCPTile *tile9 = [[JCPTile alloc] init];
    tile9.story = @"You have stumbled upon a hidden cave of pirate treasure!";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take the treasure";

    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    JCPTile *tile10 = [[JCPTile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship.";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders";
    
    JCPTile *tile11 = [[JCPTile alloc] init];
    tile11.story = @"In the deep of the sea, many things live and many things can be found.  Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasure2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim deeper";

    JCPTile *tile12 = [[JCPTile alloc] init];
    tile12.story = @"You final faceoff with the fearsome pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight!";

    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(JCPCharacter *) character {
    JCPCharacter *character = [[JCPCharacter alloc] init];
    character.health = 100;
    JCPArmor *armor = [[JCPArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    JCPWeapon *weapon = [[JCPWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    return character;
}

-(JCPBoss *) boss {
    JCPBoss *boss = [[JCPBoss alloc]init];
    boss.health = 65;
    return boss;
}

@end
