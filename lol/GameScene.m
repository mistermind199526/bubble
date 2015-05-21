//
//  GameScene.m
//  lol
//
//  Created by Binasystems on 5/21/15.
//  Copyright (c) 2015 Binasystems. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    [self baraJos];
    [self perete];
   
    
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKShapeNode *sprite = [SKShapeNode shapeNodeWithCircleOfRadius:25];
        
//        sprite.xScale = 1;
//        sprite.yScale = 0.5;
        sprite.position = location;
        sprite.physicsBody=[SKPhysicsBody bodyWithCircleOfRadius:25];
        sprite.fillColor=[SKColor redColor];
        sprite.strokeColor=[SKColor blueColor];
        sprite.physicsBody.dynamic=YES;
        sprite.physicsBody.restitution = 1;

       
//        
//        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
//        
//        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
        
    }
}

-(void)baraJos
{
    
    SKShapeNode *Opora3 = [SKShapeNode shapeNodeWithRect:CGRectMake(-568/2, -10, 568, 20)];
    Opora3.position = CGPointMake(568/2,10);
    Opora3.strokeColor = [SKColor yellowColor];
    Opora3.fillColor = [SKColor yellowColor];
    Opora3.name = @"Opora3";
    Opora3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:Opora3.frame.size];
    Opora3.physicsBody.dynamic = NO;
    [self addChild:Opora3];
    
}
-(void)perete
{
    SKShapeNode *wall = [SKShapeNode shapeNodeWithRect:CGRectMake(0,400,1,300)];
    wall.position = CGPointMake(0,400);
    wall.strokeColor = [SKColor yellowColor];
    wall.fillColor = [SKColor yellowColor];
    wall.name = @"wall";
    wall.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:wall.frame.size];
    wall.physicsBody.dynamic = NO;
    [self addChild:wall];
    
  
    
    
    SKShapeNode *wall2 = [SKShapeNode shapeNodeWithRect:CGRectMake(5,400,1,900)];
    wall2.position = CGPointMake(375,5);
    wall2.strokeColor = [SKColor yellowColor];
    wall2.fillColor = [SKColor yellowColor];
    wall2.name = @"wall2";
    wall2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:wall2.frame.size];
    wall2.physicsBody.dynamic = NO;
    [self addChild:wall2];
    
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
