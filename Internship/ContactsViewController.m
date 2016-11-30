//
//  ContactsViewController.m
//  Interhi
//
//  Created by Levrite on 29.11.16.
//  Copyright (c) 2016 MikhalZaytesv. All rights reserved.
//

#import "ContactsViewController.h"
#import "Contact.h"
#import "DetailViewController.h"

@interface ContactsViewController ()

@property (nonatomic, strong) NSMutableArray* contacts;

-(IBAction)cancel:(UIStoryboardSegue*) segue;
-(IBAction)save:(UIStoryboardSegue*) segue;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ContactsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.contentInset = UIEdgeInsetsMake(0, -7, 0, 0);
    self.contacts = [[NSMutableArray alloc] initWithObjects: nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.contacts count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Contact * currentContact = [self.contacts objectAtIndex:indexPath.row];
    
    static NSString *CellIdentifier = @"Cell";
    
    CustomViewCell *cell = (CustomViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MyCell"owner:self options:nil];
        cell = [nib objectAtIndex:0];
    
    cell.nameLabel.text = currentContact.name;
    cell.phoneLabel.text = currentContact.phone;
    
    
    return cell;
}


-(IBAction)cancel:(UIStoryboardSegue *)segue{
    
}

-(IBAction)save:(UIStoryboardSegue *)segue{
    
    AddContatcsViewController *addContact = segue.sourceViewController;
    
    Contact *contact = [[Contact alloc] initWithName:addContact.name andPhone:addContact.phone andEmail:addContact.email andAddress:addContact.address andOther:addContact.other];
    
    [self.contacts addObject:contact];
    
    [self.tableView reloadData];
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"detailSegue"]){
        
    
        NSIndexPath* index = [self.tableView indexPathForSelectedRow];
        Contact *detailContact = [self.contacts objectAtIndex:index.row];
        
        NSString* name = [detailContact getName];
        NSString* phone = [detailContact getPhone];
        NSString* email = [detailContact getEmail];
        NSString* address = [detailContact getAddress];
        NSString* other = [detailContact getOther];
        
        [[segue destinationViewController] setNameContent:name];
        [[segue destinationViewController] setPhoneContent:phone];
        [[segue destinationViewController] setEmailContent:email];
        [[segue destinationViewController] setAddressContent:address];
        [[segue destinationViewController] setOtherContent:other];
        
        
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"detailSegue" sender:self];
}

@end
