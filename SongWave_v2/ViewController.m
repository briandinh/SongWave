//
//  ViewController.m
//  SongWave_v2
//
//  Created by Brian Dinh on 8/17/13.
//  Copyright (c) 2013 Brian Dinh. All rights reserved.
//

#import "ViewController.h"
#import "FUIButton.h"
#import "UIColor+FlatUI.h"
#import "UIFont+FlatUI.h"
#import "UINavigationBar+FlatUI.h"
#import "SWRevealViewController.h"
#import "UIBarButtonItem+FlatUI.h"

@interface ViewController (){
    
    __weak IBOutlet FUIButton *button;
    __weak IBOutlet UIBarButtonItem *sideBarButton;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"SongWave";
    self.view.backgroundColor = [UIColor cloudsColor];
    
    button.buttonColor = [UIColor alizarinColor];
    button.shadowColor = [UIColor pomegranateColor];
    button.shadowHeight = 3.0f;
    button.cornerRadius = 6.0f;
    button.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [button setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    [self.navigationController.navigationBar configureFlatNavigationBarWithColor:[UIColor midnightBlueColor]];

    [self.navigationItem.leftBarButtonItem configureFlatButtonWithColor:[UIColor alizarinColor]
                                                       highlightedColor:[UIColor pomegranateColor]
                                                           cornerRadius:3];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    sideBarButton.target = self.revealViewController;
    sideBarButton.action = @selector(revealToggle:);
    //sideBarButton.image = [UIImage imageNamed:@"sidebarbutton.png"];
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
