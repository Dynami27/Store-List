//
//  Store.h
//  Store 
//
//  Created by Khalid Mohamed on 10/10/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Store : NSObject
{
   
}
@property (nonatomic, copy) NSString *storeName;
@property (nonatomic, copy) NSString *storeNumber;
@property (nonatomic,strong) NSMutableArray *storeItems;


@end
