//
//  DetailViewController.h
//  Interhi
//
//  Created by Levrite on 30.11.16.
//  Copyright (c) 2016 MikhalZaytesv. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *otherLabel;

@property (strong, nonatomic) NSString* nameContent;
@property (strong, nonatomic) NSString* phoneContent;
@property (strong, nonatomic) NSString* emailContent;
@property (strong, nonatomic) NSString* addressContent;
@property (strong, nonatomic) NSString* otherContent;

@end
