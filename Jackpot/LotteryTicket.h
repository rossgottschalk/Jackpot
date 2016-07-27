//
//  LotteryTicket.h
//  Jackpot
//
//  Created by Ross Gottschalk on 7/26/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryTicket : NSObject

+ (instancetype)quickPickTicket;
+ (instancetype)ticketUsingArray:(NSArray *)quickPick;
-(NSMutableArray *) quickPick;

@end
