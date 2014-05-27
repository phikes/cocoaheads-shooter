//
//  MyScene.m
//  CocoaheadsShooter
//
//  Created by Phillip Kessels on 27/05/14.
//  Copyright (c) 2014 phikes. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor blackColor];
        
        SKSpriteNode* playerNode = [SKSpriteNode spriteNodeWithImageNamed:PLAYER_IMAGE];
        playerNode.position = CGPointMake(
                                          CGRectGetMidX(self.frame),
                                          CGRectGetMidY(self.frame)
                                          );
        playerNode.size = PLAYER_SIZE;
        [self addChild:playerNode];
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
