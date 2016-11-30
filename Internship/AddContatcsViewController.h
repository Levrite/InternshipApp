//
//  AddContatcsViewController.h
//  Interhi
//
//  Created by Levrite on 29.11.16.
//  Copyright (c) 2016 MikhalZaytesv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddContatcsViewController : UIViewController

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* phone;
@property (nonatomic, strong) NSString* email;
@property (nonatomic, strong) NSString* address;
@property (nonatomic, strong) NSString* other;

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *addressField;
@property (weak, nonatomic) IBOutlet UITextField *otherField;

@end
