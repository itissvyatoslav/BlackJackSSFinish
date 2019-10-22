//
//  Game.m
//  First
//
//  Created by Sergey Vandanov on 15.10.2019.
//  Copyright © 2019 Sergey Vandanov. All rights reserved.
//

#import "NSArray+Card.h"
#import "Game.h"
#import "Card.h"

@interface Game ()
    -(NSString *) _getCardNames:(NSArray *) cards;
    -(NSInteger) _calcScoreFor:(NSArray*) cards;

@end
@implementation Game
-(instancetype)init
{
    self = [super init];
    if(self) {
        _myCards = [[NSMutableArray alloc]init];
        _dealerCards = [[NSMutableArray alloc]init];
        _allCards = [[NSMutableArray alloc] init];
        Card * card1 = [[Card alloc] init];
        [card1 InitWithT:CardType2 andS:CardSuitC];
        [_allCards addObject:card1];
        Card * card2 = [[Card alloc] init];
        [card2 InitWithT:CardType2 andS:CardSuitD];
        [_allCards addObject:card2];
        Card * card3 = [[Card alloc] init];
        [card3 InitWithT:CardType2 andS:CardSuitH];
        [_allCards addObject:card3];
        Card * card4 = [[Card alloc] init];
        [card4 InitWithT:CardType2 andS:CardSuitS];
        [_allCards addObject:card4];
        Card * card5 = [[Card alloc] init];
        [card5 InitWithT:CardType3 andS:CardSuitC];
        [_allCards addObject:card5];
        Card * card6 = [[Card alloc] init];
        [card6 InitWithT:CardType3 andS:CardSuitD];
        [_allCards addObject:card6];
        Card * card7 = [[Card alloc] init];
        [card7 InitWithT:CardType3 andS:CardSuitH];
        [_allCards addObject:card7];
        Card * card8 = [[Card alloc] init];
        [card8 InitWithT:CardType3 andS:CardSuitS];
        [_allCards addObject:card8];
        Card * card9 = [[Card alloc] init];
        [card9 InitWithT:CardType4 andS:CardSuitC];
        [_allCards addObject:card9];
        Card * card10 = [[Card alloc] init];
        [card10 InitWithT:CardType4 andS:CardSuitD];
        [_allCards addObject:card10];
        Card * card11 = [[Card alloc] init];
        [card11 InitWithT:CardType4 andS:CardSuitH];
        [_allCards addObject:card11];
        Card * card12 = [[Card alloc] init];
        [card12 InitWithT:CardType4 andS:CardSuitS];
        [_allCards addObject:card12];
        Card * card13 = [[Card alloc] init];
        [card13 InitWithT:CardType5 andS:CardSuitC];
        [_allCards addObject:card13];
        Card * card14 = [[Card alloc] init];
        [card14 InitWithT:CardType5 andS:CardSuitD];
        [_allCards addObject:card14];
        Card * card15 = [[Card alloc] init];
        [card15 InitWithT:CardType5 andS:CardSuitH];
        [_allCards addObject:card15];
        Card * card16 = [[Card alloc] init];
        [card16 InitWithT:CardType5 andS:CardSuitS];
        [_allCards addObject:card16];
        Card * card17 = [[Card alloc] init];
        [card17 InitWithT:CardType6 andS:CardSuitC];
        [_allCards addObject:card17];
        Card * card18 = [[Card alloc] init];
        [card18 InitWithT:CardType6 andS:CardSuitD];
        [_allCards addObject:card18];
        Card * card19 = [[Card alloc] init];
        [card19 InitWithT:CardType6 andS:CardSuitH];
        [_allCards addObject:card19];
        Card * card20 = [[Card alloc] init];
        [card20 InitWithT:CardType6 andS:CardSuitS];
        [_allCards addObject:card20];
        Card * card21 = [[Card alloc] init];
        [card21 InitWithT:CardType7 andS:CardSuitC];
        [_allCards addObject:card21];
        Card * card22 = [[Card alloc] init];
        [card22 InitWithT:CardType7 andS:CardSuitD];
        [_allCards addObject:card22];
        Card * card23 = [[Card alloc] init];
        [card23 InitWithT:CardType7 andS:CardSuitH];
        [_allCards addObject:card23];
        Card * card24 = [[Card alloc] init];
        [card24 InitWithT:CardType7 andS:CardSuitS];
        [_allCards addObject:card24];
        Card * card25 = [[Card alloc] init];
        [card25 InitWithT:CardType8 andS:CardSuitC];
        [_allCards addObject:card25];
        Card * card26 = [[Card alloc] init];
        [card26 InitWithT:CardType8 andS:CardSuitD];
        [_allCards addObject:card26];
        Card * card27 = [[Card alloc] init];
        [card27 InitWithT:CardType8 andS:CardSuitH];
        [_allCards addObject:card27];
        Card * card28 = [[Card alloc] init];
        [card28 InitWithT:CardType8 andS:CardSuitS];
        [_allCards addObject:card28];
        Card * card29 = [[Card alloc] init];
        [card29 InitWithT:CardType9 andS:CardSuitC];
        [_allCards addObject:card29];
        Card * card30 = [[Card alloc] init];
        [card30 InitWithT:CardType9 andS:CardSuitD];
        [_allCards addObject:card30];
        Card * card31 = [[Card alloc] init];
        [card31 InitWithT:CardType9 andS:CardSuitH];
        [_allCards addObject:card31];
        Card * card32 = [[Card alloc] init];
        [card32 InitWithT:CardType9 andS:CardSuitS];
        [_allCards addObject:card32];
        Card * card33 = [[Card alloc] init];
        [card33 InitWithT:CardType10 andS:CardSuitC];
        [_allCards addObject:card33];
        Card * card34 = [[Card alloc] init];
        [card34 InitWithT:CardType10 andS:CardSuitD];
        [_allCards addObject:card34];
        Card * card35 = [[Card alloc] init];
        [card35 InitWithT:CardType10 andS:CardSuitH];
        [_allCards addObject:card35];
        Card * card36 = [[Card alloc] init];
        [card36 InitWithT:CardType10 andS:CardSuitS];
        [_allCards addObject:card36];
        Card * card37 = [[Card alloc] init];
        [card37 InitWithT:CardTypeJ andS:CardSuitC];
        [_allCards addObject:card37];
        Card * card38 = [[Card alloc] init];
        [card38 InitWithT:CardTypeJ andS:CardSuitD];
        [_allCards addObject:card38];
        Card * card39 = [[Card alloc] init];
        [card39 InitWithT:CardTypeJ andS:CardSuitH];
        [_allCards addObject:card39];
        Card * card40 = [[Card alloc] init];
        [card40 InitWithT:CardTypeJ andS:CardSuitS];
        [_allCards addObject:card40];
        Card * card41 = [[Card alloc] init];
        [card41 InitWithT:CardTypeQ andS:CardSuitC];
        [_allCards addObject:card41];
        Card * card42 = [[Card alloc] init];
        [card42 InitWithT:CardTypeQ andS:CardSuitD];
        [_allCards addObject:card42];
        Card * card43 = [[Card alloc] init];
        [card43 InitWithT:CardTypeQ andS:CardSuitH];
        [_allCards addObject:card43];
        Card * card44 = [[Card alloc] init];
        [card44 InitWithT:CardTypeQ andS:CardSuitS];
        [_allCards addObject:card44];
        Card * card45 = [[Card alloc] init];
        [card45 InitWithT:CardTypeK andS:CardSuitC];
        [_allCards addObject:card45];
        Card * card46 = [[Card alloc] init];
        [card46 InitWithT:CardTypeK andS:CardSuitD];
        [_allCards addObject:card46];
        Card * card47 = [[Card alloc] init];
        [card47 InitWithT:CardTypeK andS:CardSuitH];
        [_allCards addObject:card47];
        Card * card48 = [[Card alloc] init];
        [card48 InitWithT:CardTypeK andS:CardSuitS];
        [_allCards addObject:card48];
        Card * card49 = [[Card alloc] init];
        [card49 InitWithT:CardTypeA andS:CardSuitC];
        [_allCards addObject:card49];
        Card * card50 = [[Card alloc] init];
        [card50 InitWithT:CardTypeK andS:CardSuitD];
        [_allCards addObject:card50];
        Card * card51 = [[Card alloc] init];
        [card51 InitWithT:CardTypeK andS:CardSuitH];
        [_allCards addObject:card51];
        Card * card52 = [[Card alloc] init];
        [card52 InitWithT:CardTypeK andS:CardSuitS];
        [_allCards addObject:card52];
        
    }
    return self;
}
-(void) startGame {
    
    
    NSInteger count = [_allCards count];
    NSInteger index = arc4random_uniform(count);
    
    Card * card1 = [[Card alloc] init];
    card1 = [_allCards objectAtIndex: index];
    
    [_allCards removeObjectAtIndex: index];

    count = [_allCards count];
    index = arc4random_uniform(count);
    Card * card2 = [[Card alloc] init];
    card2 = [_allCards objectAtIndex:index];
    [_allCards removeObjectAtIndex: index];
    
    count = [_allCards count];
    index = arc4random_uniform(count);
    Card * card3 = [[Card alloc] init];
    card3 = [_allCards objectAtIndex: index];
    [_allCards removeObjectAtIndex: index];
  
   
    [_myCards addObject: card1];    // creare array with elem card1,card2
    [_myCards addObject: card2];
    [_dealerCards addObject: card3];
    [self printMy];
    [self printDealer];
}
-(void) hitMe {
    
    NSInteger count = [_allCards count];
    NSInteger index = arc4random_uniform(count);
    Card * cardx = [[Card alloc] init];
    cardx = [_allCards objectAtIndex: index];
    [_allCards removeObjectAtIndex: index];
    [self.myCards addObject: cardx];

}
- (BOOL)hitDealer {
    NSInteger dealerScore = [self _calcScoreFor:self.dealerCards];
    if(dealerScore>17) {
        return NO;
    }
      NSInteger count = [_allCards count];
      NSInteger index = arc4random_uniform(count);
      Card * cardx = [[Card alloc] init];
      cardx = [_allCards objectAtIndex: index];
      [_allCards removeObjectAtIndex: index];
      [self.dealerCards addObject:cardx];
    return YES;
}
-(BOOL) iHaveBlackJack {
    NSInteger myScore = [self _calcScoreFor:self.myCards];
       if(myScore==21) {
           return YES;
       }
;
       return NO;
}

-(BOOL) delaerHasBlackJack {
    NSInteger dealerScore = [self _calcScoreFor:self.dealerCards];
       if(dealerScore==21) {
           return YES;
       }
       return NO;
}

-(BOOL) iHaveMore {
    NSInteger myScore = [self _calcScoreFor:self.myCards];
       if(myScore>21) {
           return YES;
       }
       return NO;
}


-(BOOL) dealerHasMore {
    NSInteger dealerScore = [self _calcScoreFor:self.dealerCards];
       if(dealerScore>21) {
           return YES;
       }
       return NO;
}

-(BOOL) scoreEqual {
    NSInteger dealerScore = [self _calcScoreFor:self.dealerCards];
    NSInteger myScore = [self _calcScoreFor:self.myCards];
       if(dealerScore==myScore ) {
           return YES;
       }
       return NO;
}

-(BOOL) iHaveHigherScore {
    NSInteger dealerScore =[self.dealerCards _calcScore];
    NSInteger myScore = [self _calcScoreFor:self.myCards];
    if(dealerScore<myScore) {
        return YES;
    }
    return NO;
}
-(void) printMy {
    NSLog(@"You have: %@",[self _getCardNames:self.myCards]);
}
-(void) printDealer {
    NSLog(@"Dealer has: %@",[self _getCardNames:self.dealerCards]);
}

-(NSString *) _getCardNames:(NSArray *) cards{
    return [cards _getCardNames];
}
-(NSInteger) _calcScoreFor:(NSArray*) cards {
    return [cards _calcScore];
}

@end
