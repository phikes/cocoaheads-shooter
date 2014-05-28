//
//  GameNode.m
//  CocoaheadsShooter
//
//  Created by Phillip Kessels on 28/05/14.
//  Copyright (c) 2014 phikes. All rights reserved.
//

#import "GameNode.h"

@implementation GameNode
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super init];
    if(self)
    {
        self.position = CGPointMake(
                                    CGRectGetMidX(frame),
                                    CGRectGetMidY(frame)
                                    );
    }
    return self;
}
@end
