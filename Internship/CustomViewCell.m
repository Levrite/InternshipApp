//
//  CustomViewCell.m
//  Interhi
//
//  Created by Levrite on 30.11.16.
//  Copyright (c) 2016 MikhalZaytesv. All rights reserved.
//

#import "CustomViewCell.h"

@implementation CustomViewCell
@synthesize phoneLabel;
@synthesize nameLabel;

- (IBAction)callAction:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Calling"
                                                    message:nameLabel.text
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
