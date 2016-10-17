//
//  StoreDetailsTableViewController.h
//  Store List
//
//  Created by Khalid Mohamed on 10/10/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "store.h"
#import "StoreListTableViewController.h"
#import "StoreItem.h"
#import "StoreItemsViewController.h"
@interface StoreDetailsTableViewController : UITableViewController<AddStoreItemsViewControllerDelegate>
{
    NSMutableArray *itemsForStore;
}

@property (nonatomic,strong) Store *selectedStore;

@end
