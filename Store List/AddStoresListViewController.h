//
//  AddStoresListViewController.h
//  Store List
//
//  Created by Khalid Mohamed on 10/11/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Store.h"
@protocol AddStoresListViewControllerDelegate <NSObject>

-(void) addStoresListViewControllerDidStoresList:(Store *) Store;
@end
//setting up delegate
@interface AddStoresListViewController : UIViewController
@property (nonatomic,weak) IBOutlet UITextField *storeNameTextField;
@property (nonatomic,weak) IBOutlet UITextField *storeNumberTextField;

@property (nonatomic,weak) id<AddStoresListViewControllerDelegate> delegate;
@end
