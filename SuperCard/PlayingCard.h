//
//  PlayingCard.h
//  SuperCard
//
//  Created by 鹏 刘 on 2017/1/12.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSInteger rank;

+ (NSArray *)validSuit;
+ (NSUInteger)maxRank;


@end
