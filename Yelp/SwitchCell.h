//
//  SwitchCell.h
//  Yelp
//
//  Created by Vinayakumar Kolli on 2/1/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwitchCell;

@protocol SwitchCellDelegate <NSObject>

- (void)switchCell:(SwitchCell *)switchCell didChangeValue:(BOOL)value;


@end


@interface SwitchCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *title;
@property (nonatomic, assign) BOOL on;
@property (nonatomic, weak) id<SwitchCellDelegate> delegate;


@end
