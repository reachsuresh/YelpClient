//
//  SwitchCell.m
//  Yelp
//
//  Created by Vinayakumar Kolli on 2/1/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

#import "SwitchCell.h"

@interface SwitchCell ()


@property (weak, nonatomic) IBOutlet UISwitch *toggleSwitch;
- (IBAction)valueChanged:(id)sender;
- (void)setOn:(BOOL)on animated:(BOOL)animated;
- (void)setOn:(BOOL)on;


@end


@implementation SwitchCell

- (void)awakeFromNib {
    // Initialization code
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)valueChanged:(id)sender {
    [self.delegate switchCell:self didChangeValue:self.toggleSwitch.on];
    
}

- (void)setOn:(BOOL)on animated:(BOOL)animated {
    [self.toggleSwitch setOn:on animated:animated];
}

- (void)setOn:(BOOL)on {
    [self setOn:on animated:NO];
}
@end
