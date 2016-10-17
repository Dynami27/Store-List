//
//  StoreList.m
//  Store List
//
//  Created by Khalid Mohamed on 10/10/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "Store.h"

@implementation Store

-(id) initWithCoder:(NSCoder *)coder {
    
    self.storeName = [coder decodeObjectForKey:@"storeName"];
    self.storeNumber=[coder decodeObjectForKey:@"storeNumber"];
    self.storeItems=[coder decodeObjectForKey:@"storeItems"];
    
    
    //self.name = (NSString *) [aDecoder valueForKey:@"name"];
    return self;
}

-(void) encodeWithCoder:(NSCoder *)coder {
    
    [coder encodeObject:self.storeName forKey:@"storeName"];
    [coder encodeObject:self.storeNumber forKey:@"storeNumber"];
    [coder encodeObject:self.storeItems forKey:@"storeItems"];
     
    // [coder setValue:self.name forKey:@"name"];
}
@end
