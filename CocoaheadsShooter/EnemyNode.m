//
//  EnemyNode.m
//  CocoaheadsShooter
//
//  Created by Phillip Kessels on 28/05/14.
//  Copyright (c) 2014 phikes. All rights reserved.
//

#import "EnemyNode.h"
#import "PlayerNode.h"

#define ENEMY_IMAGE @"Spaceship.png"
#define ENEMY_SIZE CGSizeMake(50.,50.)

@implementation EnemyNode
-(instancetype)initWithFrame:(CGRect)frame andPlayerNode:(PlayerNode*)playerNode
{
    self = [super initWithImageNamed:ENEMY_IMAGE];
    if(self)
    {
        self.position = CGPointMake(playerNode.position.x, playerNode.position.y+200.);
        self.size = ENEMY_SIZE;
        self.zRotation = M_PI;
        
        self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.frame.size];
        self.physicsBody.affectedByGravity = NO;
        self.physicsBody.contactTestBitMask = ENEMY_HIT_CATEGORY;
    }
    return self;
}
@end
