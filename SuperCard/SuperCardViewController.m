//
//  ViewController.m
//  SuperCard
//
//  Created by 鹏 刘 on 2017/1/12.
//  Copyright © 2017年 鹏 刘. All rights reserved.
//

#import "SuperCardViewController.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"
#import "PlayingCardView.h"

@interface SuperCardViewController ()
@property (nonatomic, strong) PlayingCardView *playingCardView;
@property (nonatomic, strong) Deck *deck;
@end

@implementation SuperCardViewController

/*
- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}
*/

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.playingCardView = [[PlayingCardView alloc] initWithFrame:CGRectMake(60, 85, 245, 500)];
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
    [self.playingCardView addGestureRecognizer:swipe];
    [self.view addSubview:self.playingCardView];
}

- (void)drawPlayingRandomCard
{
    self.deck = [[PlayingCardDeck alloc] init];
    Card *card = [self.deck drawRandomCard];
    if ([card isKindOfClass:[PlayingCard class]]) {
        PlayingCard *playingCard = (PlayingCard *)card;
        self.playingCardView.suit = playingCard.suit;
        self.playingCardView.rank = playingCard.rank;
    }
}

- (IBAction)swipe:(UISwipeGestureRecognizer *)sender
{
    [UIView transitionWithView:self.playingCardView
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                        if (!self.playingCardView.faceUp) [self drawPlayingRandomCard];
                        self.playingCardView.faceUp = !self.playingCardView.faceUp;
                        
                    }
                    completion:NULL];
}

@end
