//
//  StoreItemsViewController.h
//  Store List
//
//  Created by Khalid Mohamed on 10/12/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StoreItem.h"
@protocol AddStoreItemsViewControllerDelegate <NSObject>

-(void) addStoreItemsVireControllerDidAddItem:(StoreItem *) storeItem;

@end

@interface StoreItemsViewController : UIViewController
@property (nonatomic,weak) IBOutlet UITextField *addstoreItemTextField;

@property (nonatomic, weak) id<AddStoreItemsViewControllerDelegate> delegate;

@end
