//
//  PlayingCardView.h
//  SuperCard
//
//  Created by Baixiao Huang on 11/6/14.
//  Copyright (c) 2014 Baixiao Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView
@property (nonatomic) NSUInteger rank;
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) BOOL faceUp;

@end
