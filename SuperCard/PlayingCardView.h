//
//  PlayingCardView.h
//  SuperCard
//
//  Created by 鹏 刘 on 2017/1/13.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSInteger rank;
@property (nonatomic) BOOL faceUp;
@end
