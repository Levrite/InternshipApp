//
//  Contact.m
//  Interhi
//
//  Created by Levrite on 29.11.16.
//  Copyright (c) 2016 MikhalZaytesv. All rights reserved.
//

#import "Contact.h"

@implementation Contact

-(id) initWithName:(NSString *)nameContact andPhone:(NSString *)phoneContact andEmail:(NSString *)emailContact andAddress:(NSString *)addressContact andOther:(NSString *)otherContact{
  
    self = [super init];
    
    if(self){
        _name = nameContact;
        _phone = phoneContact;
        _email = emailContact;
        _address = addressContact;
        _other = otherContact;
    }
    
    return self;
    
}

-(id) initWithName:(NSString *)nameContact andPhone:(NSString *)phoneContact
{

    self = [super init];
    
    if(self){
        _name = nameContact;
        _phone = phoneContact;
    }
    
    return self;
    
}

-(id) initWithName:(NSString*) nameContact{
    self = [super init];
    
    if(self){
        _name = nameContact;
    }
    return self;
}

-(NSString *) getName{
    return _name;
}

-(NSString *) getPhone{
    return _phone;
}

-(NSString *) getEmail{
    return _email;
}

-(NSString *) getAddress{
    return _address;
}

-(NSString *) getOther{
    return _other;
}


@end
