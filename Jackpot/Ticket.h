//
//  Ticket.h
//  Jackpot
//
//  Created by Ross Gottschalk on 7/27/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ticket : NSObject


@property (assign) NSNumber *randomNumber;

+(Ticket *)ticketwithQuickPick;


@end
