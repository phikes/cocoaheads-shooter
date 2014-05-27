//
//  MyScene.m
//  CocoaheadsShooter
//
//  Created by Phillip Kessels on 27/05/14.
//  Copyright (c) 2014 phikes. All rights reserved.
//

#import "MyScene.h"

#define ENEMY_HIT_CATEGORY 0x1 << 1

@interface MyScene()
@property SKSpriteNode* playerNode;
@end

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor blackColor];
        
        _playerNode = [SKSpriteNode spriteNodeWithImageNamed:PLAYER_IMAGE];
        _playerNode.position = CGPointMake(
                                          CGRectGetMidX(self.frame),
                                          CGRectGetMidY(self.frame)
                                          );
        _playerNode.size = PLAYER_SIZE;
        
        SKSpriteNode* enemyNode = [SKSpriteNode spriteNodeWithImageNamed:ENEMY_IMAGE];
        enemyNode.position = CGPointMake(_playerNode.position.x, _playerNode.position.y+200.);
        enemyNode.size = ENEMY_SIZE;
        enemyNode.zRotation = M_PI;
        
        enemyNode.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:enemyNode.frame.size];
        enemyNode.physicsBody.affectedByGravity = NO;
        enemyNode.physicsBody.contactTestBitMask = ENEMY_HIT_CATEGORY;
        
        self.physicsWorld.contactDelegate = self;
        
        [self addChild:_playerNode];
        [self addChild:enemyNode];
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
    SKSpriteNode* shot = [SKSpriteNode spriteNodeWithImageNamed:SHOT_IMAGE];
    
    shot.size = SHOT_SIZE;
    shot.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:shot.frame.size];
    shot.physicsBody.affectedByGravity = NO;
    shot.physicsBody.contactTestBitMask = ENEMY_HIT_CATEGORY;
    
    shot.position = self.playerNode.position;
    [shot runAction:
                    [SKAction repeatActionForever:
                                                    [SKAction moveBy:CGVectorMake(0., 1.) duration:.01]]];
    [self addChild:shot];
}

@end
