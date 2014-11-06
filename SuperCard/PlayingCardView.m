//
//  PlayingCardView.m
//  SuperCard
//
//  Created by Baixiao Huang on 11/6/14.
//  Copyright (c) 2014 Baixiao Huang. All rights reserved.
//

#import "PlayingCardView.h"

@implementation PlayingCardView

- (void)setSuit:(NSString *)suit
{
    _suit = suit;
    [self setNeedsDisplay]; //every time someone set the property, tell the system that it needs to be redrawn
}

- (void)setRank:(NSUInteger)rank
{
    _rank = rank;
    [self setNeedsDisplay];
}

- (void)setFaceUp:(BOOL)faceUp
{
    _faceUp = faceUp;
    [self setNeedsDisplay];
}

#define CORNER_FONT_STANDARD_HEIGHT 180.0
#define CORNER_RADIUS 12.0

- (CGFloat)cornerScaleFactor{ return self.bounds.size.height / CORNER_FONT_STANDARD_HEIGHT;}
- (CGFloat)cornerRadius{return CORNER_RADIUS*[self cornerScaleFactor];}
- (CGFloat)cornerOffset{return [self cornerRadius] / 3.0;}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath* roundedRect = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:[self cornerRadius]];
    [roundedRect addClip];
    [[UIColor whiteColor] setFill];
    UIRectFill(self.bounds);
}

- (void)setUp
{
    self.backgroundColor = nil;
    self.opaque = NO;
    self.contentMode = UIViewContentModeRedraw;
}

- (void)awakeFromNib
{
    [self setUp];
}

@end
