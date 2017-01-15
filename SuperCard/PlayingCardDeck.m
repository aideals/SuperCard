//
//  PlayingCardDeck.m
//  SuperCard
//
//  Created by 鹏 刘 on 2017/1/12.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (id)init
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuit]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.suit = suit;
                card.rank = rank;
                [self addCard:card atTop:YES];
            }
        }
    }
    return self;
}

@end
