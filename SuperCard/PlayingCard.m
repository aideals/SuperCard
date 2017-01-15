//
//  PlayingCard.m
//  SuperCard
//
//  Created by 鹏 刘 on 2017/1/12.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

+ (NSArray *)validSuit
{
    return @[@"♠",@"♣",@"♥",@"♦"];
}

+ (NSArray *)rankString
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

@synthesize suit = _suit;

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuit] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : nil;
}

+ (NSUInteger)maxRank
{
    return [self rankString].count - 1;
}

- (void)setRank:(NSInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}


@end
