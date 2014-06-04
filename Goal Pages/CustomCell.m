//
//  SimpleTable.m
//  SimpleTableProject
//
//  Created by Anyssa Buchanan on 2/25/14.
//  Copyright (c) 2014 Anyssa Buchanan. All rights reserved.
//

#import "CustomCell.h"

@interface CustomCell ()

@end
@implementation CustomCell


@synthesize nameLabel;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        [self addSubview:nameLabel];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


@end
