//
//  Business.m
//  Yelp
//
//  Created by Vinayakumar Kolli on 1/31/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

#import "Business.h"

@implementation Business

-(id) initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];

    if(self){
        NSArray *categories = dictionary[@"categories"];
        NSMutableArray *categoryNames = [NSMutableArray array];
        
        [categories enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            [categoryNames addObject:obj[0]];
        }];
        
        self.categories = [categoryNames componentsJoinedByString:@", "];
        
        self.name = dictionary[@"name"];
        self.imageUrl = dictionary[@"image_url"];
        
        self.streetName = dictionary[@"location.display_address"][0];
        
        self.numReviews = [dictionary[@"review_count"] integerValue];
        
        self.ratingImageUrl = dictionary[@"rating_img_url"];
        
        float milePerMeter = 0.000621;
        
        self.distance = [dictionary[@"distance"] integerValue] * milePerMeter;
        
        
        
    
    }
    
    return self;
}


+ (NSArray *)businessesWithDictionaries: (NSArray *)dictionaries {
    NSMutableArray *businesses = [NSMutableArray array];
    
    for(NSDictionary *dictionary in dictionaries){
        Business *business = [[Business alloc] initWithDictionary:dictionary];
        
        
        [businesses addObject:business];
    }
    return businesses;
}

@end
