//
//  CustomViewCell.h
//  Interhi
//
//  Created by Levrite on 30.11.16.
//  Copyright (c) 2016 MikhalZaytesv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
- (IBAction)callAction:(id)sender;

@end
