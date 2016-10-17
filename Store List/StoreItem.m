//
//  StoreItem.m
//  Store List
//
//  Created by Khalid Mohamed on 10/12/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "StoreItem.h"

@implementation StoreItem

-(id) initWithCoder:(NSCoder *) aDecoder {
    self.name= [aDecoder decodeObjectForKey:@"name"];
    return self;
}
-(void) encodeWithDecoder:(NSCoder *)coder{
    [coder encodeObject:self.name forKey:@"name"];
}
@end
