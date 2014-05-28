//
//  MyScene.m
//  CocoaheadsShooter
//
//  Created by Phillip Kessels on 27/05/14.
//  Copyright (c) 2014 phikes. All rights reserved.
//

#import "MyScene.h"

#import "EnemyNode.h"
#import "PlayerNode.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor blackColor];
        
        self.physicsWorld.contactDelegate = self;
        
        PlayerNode* playerNode = [[PlayerNode alloc] initWithFrame:self.frame];
        [self addChild:[[EnemyNode alloc] initWithFrame:self.frame andPlayerNode:playerNode]];
        [self addChild:playerNode];
    }
    return self;
}

- (void)didBeginContact:(SKPhysicsContact *)contact
{
    [contact.bodyA.node removeFromParent];
    [contact.bodyB.node removeFromParent];
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    /*SKSpriteNode* shot = [SKSpriteNode spriteNodeWithImageNamed:SHOT_IMAGE];
    
    shot.size = SHOT_SIZE;
    shot.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:shot.frame.size];
    shot.physicsBody.affectedByGravity = NO;
    shot.physicsBody.contactTestBitMask = ENEMY_HIT_CATEGORY;
    
    shot.position = self.playerNode.position;
    [shot runAction:
                    [SKAction repeatActionForever:
                                                    [SKAction moveBy:CGVectorMake(0., 1.) duration:.01]]];
    [self addChild:shot];*/
}

@end
