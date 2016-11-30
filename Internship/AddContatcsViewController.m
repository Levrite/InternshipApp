//
//  AddContatcsViewController.m
//  Interhi
//
//  Created by Levrite on 29.11.16.
//  Copyright (c) 2016 MikhalZaytesv. All rights reserved.
//

#import "AddContatcsViewController.h"
#import "Contact.h"

@interface AddContatcsViewController ()

@end

@implementation AddContatcsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"saveSegue"])
    {
        self.name = self.nameField.text;
        self.phone = self.phoneField.text;
        self.email = self.emailField.text;
        self.address = self.addressField.text;
        self.other = self.otherField.text;
    }
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
