//
//  BusinessCell.m
//  Yelp
//
//  Created by Vinayakumar Kolli on 1/31/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

#import "BusinessCell.h"
#import "UIImageView+AFNetworking.h"

@interface BusinessCell ()
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UILabel *distance;

@property (weak, nonatomic) IBOutlet UIImageView *ratingImageView;
@property (weak, nonatomic) IBOutlet UILabel *reviewCount;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UILabel *category;
@property (weak, nonatomic) IBOutlet UILabel *price;

@end

@implementation BusinessCell

- (void)awakeFromNib {
    // Initialization code
    self.name.preferredMaxLayoutWidth = self.name.frame.size.width;
    self.imageView.layer.cornerRadius = 3;
    self.imageView.clipsToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setBusiness:(Business *)business {
    _business = business;
    [self.imageView setImageWithURL:[NSURL URLWithString:self.business.imageUrl]];
    
    NSLog(@"Setting the name here %@",self.business.name);
    self.name.text = self.business.name;
    
    [self.ratingImageView setImageWithURL:[NSURL URLWithString:self.business.ratingImageUrl]];
    
    self.reviewCount.text = [NSString stringWithFormat:@"%ld Reviews", self.business.numReviews];
    
    self.address.text = self.business.address;
    
    self.distance.text = [NSString stringWithFormat:@"%.2f mi", self.business.distance];
    
    self.category.text = self.business.categories;
    
}

- (void) layoutSubviews {
    [super layoutSubviews];
    self.name.preferredMaxLayoutWidth = self.name.frame.size.width;
}

@end
