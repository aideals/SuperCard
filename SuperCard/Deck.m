//
//  Deck.m
//  SuperCard
//
//  Created by 鹏 刘 on 2017/1/12.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import "Deck.h"

@interface Deck ()
@property (nonatomic, strong) NSMutableArray *cards;
@end


@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop)
    {
        [self.cards insertObject:card atIndex:0];
    }
    else
    {
        [self.cards addObject:card];
    }

}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    if (self.cards.count)
    {
        unsigned index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeAllObjects];
    }
    return randomCard;
}



@end
