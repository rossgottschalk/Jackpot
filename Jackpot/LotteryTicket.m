//
//  LotteryTicket.m
//  Jackpot
//
//  Created by Ross Gottschalk on 7/26/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "LotteryTicket.h"

@interface LotteryTicket ()
{
    NSMutableArray *quickPick;
}

@end

@implementation LotteryTicket

- (instancetype) init
{
    self = [super init];
    if (self)
    {
        quickPick = [[NSMutableArray alloc] init];
    }
    return self;
}

+(instancetype)quickPickTicket
{
    LotteryTicket *aTicket = [[LotteryTicket alloc] init];
    do
    {
        [aTicket createPick];
    }
    while (aTicket.quickPick.count < 6);
    
    return aTicket;
}

-(void) createPick
{
    int pickInt = arc4random() % 54 + 1;
    NSNumber* pickNumber = [NSNumber numberWithInt:pickInt];
    
    
}

@end