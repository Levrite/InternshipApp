//
//  DetailViewController.m
//  Interhi
//
//  Created by Levrite on 30.11.16.
//  Copyright (c) 2016 MikhalZaytesv. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end


@implementation DetailViewController

@synthesize nameLabel;
@synthesize phoneLabel;
@synthesize emailLabel;
@synthesize addressLabel;
@synthesize otherLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameLabel.text = self.nameContent;
    self.phoneLabel.text = self.phoneContent;
    self.emailLabel.text = self.emailContent;
    self.addressLabel.text = self.addressContent;
    self.otherLabel.text = self.otherContent;
    

}




@end
