//
//  JCPViewController.h
//  Pirate Adventure
//
//  Created by Jonathan C Popp on 5/23/14.
//  Copyright (c) 2014 Jonathan C Popp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JCPCharacter.h"
#import "JCPBoss.h"

@interface JCPViewController : UIViewController

// iVars
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) JCPCharacter *character;
@property (strong, nonatomic) JCPBoss *boss;

// IBOutlets
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *amorLabel;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;

// IBActions
- (IBAction)actionButton:(UIButton *)sender;
- (IBAction)northButton:(UIButton *)sender;
- (IBAction)westButton:(UIButton *)sender;
- (IBAction)southButton:(UIButton *)sender;
- (IBAction)eastButton:(UIButton *)sender;
- (IBAction)resetButtonPressed:(UIButton *)sender;

@end
