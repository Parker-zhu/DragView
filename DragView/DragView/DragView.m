//
//  DragView.m
//  DragView
//
//  Created by 朱晓峰 on 2018/1/8.
//  Copyright © 2018年 朱晓峰. All rights reserved.
//

#import "DragView.h"

@interface DragView()

@property (assign, nonatomic) CGPoint beginpoint;

@end

@implementation DragView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    self.beginpoint = [touch locationInView:self];
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint currentLocation = [touch locationInView:self];
    CGRect frame = self.frame;
    frame.origin.x += currentLocation.x - self.beginpoint.x;
    frame.origin.y += currentLocation.y - self.beginpoint.y;
    self.frame = frame;
}

@end
