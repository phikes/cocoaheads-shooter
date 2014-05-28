//
//  EnemyNode.h
//  CocoaheadsShooter
//
//  Created by Phillip Kessels on 28/05/14.
//  Copyright (c) 2014 phikes. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "GameNode.h"

@class PlayerNode;

@interface EnemyNode : GameNode
-(instancetype)initWithFrame:(CGRect)frame andPlayerNode:(PlayerNode*)playerNode;
@end
