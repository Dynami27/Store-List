//
//  StoreListTableViewController.h
//  Store List
//
//  Created by Khalid Mohamed on 10/10/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Store.h"
#import "StoreDetailsTableViewController.h"
#import "AddStoresListViewController.h"

@interface StoreListTableViewController : UITableViewController<AddStoresListViewControllerDelegate>
{
    NSMutableArray *stores;
    NSMutableArray *NumberofStores;
    
   
}

@end
