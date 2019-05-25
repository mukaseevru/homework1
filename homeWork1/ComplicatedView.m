//
//  ComplicatedView.m
//  homeWork1
//
//  Created by user on 25/05/2019.
//  Copyright © 2019 user. All rights reserved.
//

#import "ComplicatedView.h"

@implementation ComplicatedView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor greenColor];
    }
    
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint coordinatesOfTouch = [self pointForCurrentViewWithTouch:touches];
//    CGPoint coordinatesOfTouch2 = [mySquare pointForCurrentViewWithTouch:touches];
    
    NSLog(@"Я нажал внутри вьюшки и получил ЭТО: %f %f", coordinatesOfTouch.x, coordinatesOfTouch.y);
    NSLog(@"Bounds: %f %f", self.bounds.origin.x, self.bounds.origin.y);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint coordinatesOfTouch = [self pointForCurrentViewWithTouch:touches];
    NSLog(@"Я подвигал внутри вьюшки и получил ЭТО: %f %f", coordinatesOfTouch.x, coordinatesOfTouch.y);
//    NSLog(@"Bounds: %f %f", self.bounds.origin.x, self.bounds.origin.y);
//    
//    CGPoint newPosition = self.frame.origin;
//    newPosition.x = coordinatesOfTouch.x;
//    newPosition.y = coordinatesOfTouch.y;
//
//    CGRect newFrame = self.bounds;
//    newFrame.origin = newPosition;
//    self.frame = newFrame;
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint coordinatesOfTouch = [self pointForCurrentViewWithTouch:touches];
    NSLog(@"Я завершил жест внутри вьюшки и получил ЭТО: %f %f", coordinatesOfTouch.x, coordinatesOfTouch.y);
    
}

- (CGPoint)pointForCurrentViewWithTouch:(NSSet<UITouch *> *)touches
{
    UITouch *currentTouch = touches.anyObject;
    return [currentTouch locationInView:self];
}

@end
