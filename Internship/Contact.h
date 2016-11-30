//
//  Contact.h
//  Interhi
//
//  Created by Levrite on 29.11.16.
//  Copyright (c) 2016 MikhalZaytesv. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* phone;
@property (nonatomic, strong) NSString* email;
@property (nonatomic, strong) NSString* address;
@property (nonatomic, strong) NSString* other;

-(id) initWithName:(NSString*)nameContact andPhone:(NSString*)phoneContact andEmail:(NSString*) emailContact andAddress:(NSString*) addressContact andOther:(NSString*)otherContact;

-(id) initWithName:(NSString*)nameContact;

-(void) dealloc;

-(NSString *) getName;
-(NSString *) getPhone;
-(NSString *) getEmail;
-(NSString *) getAddress;
-(NSString *) getOther;


@end
