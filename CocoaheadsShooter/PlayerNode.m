//
//  PlayerNode.m
//  CocoaheadsShooter
//
//  Created by Phillip Kessels on 28/05/14.
//  Copyright (c) 2014 phikes. All rights reserved.
//

#import "PlayerNode.h"

#define PLAYER_IMAGE @"Spaceship.png"
#define PLAYER_SIZE CGSizeMake(100.,100.)

@implementation PlayerNode
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithImageNamed:PLAYER_IMAGE];
    if(self)
    {
        self.position = CGPointMake(
                                    CGRectGetMidX(frame),
                                    CGRectGetMidY(frame));
        self.size = PLAYER_SIZE;
    }
    return self;
}
@end
