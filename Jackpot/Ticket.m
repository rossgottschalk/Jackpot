//
//  Ticket.m
//  Jackpot
//
//  Created by Ross Gottschalk on 7/27/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "Ticket.h"

@interface Ticket()

@property (strong, nonatomic) NSMutableArray *picks;



@end

@implementation Ticket

- (instancetype) init
{
    self = [super init];
    if (self)
    {
        _picks = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (Ticket *)ticketwithQuickPick
{
    Ticket *aTicket = [[Ticket alloc] init];
    //for (int i = 0; i<6; i++)
    
    {
        [aTicket createPick];
    }
    //aTicket.picks = [NSMutableArray arrayWithObjects:@"12", @"14", @"23", @"25", @"47", nil];
    return aTicket;
}

-(void)createPick
{
    //
    do {
        int randomInt = arc4random_uniform(53) + 1;
        //create random number
        NSString *randomNumberString = [NSString stringWithFormat:@"%d", randomInt];
        //convert random number into a string
        BOOL rejectNumber = NO;
        
        for (NSString *numberInString in self.picks)
        {
            if (numberInString.intValue == randomInt)
            {
              rejectNumber = YES;
            }
        }
        
        if (!rejectNumber)
        {
            [self.picks addObject: randomNumberString];
        }
    }
    while (self.picks.count <6);
}
//int randomInt = arc4random_uniform(53) + 1;
//create random number
//NSString *randomNumberString = [NSString stringWithFormat:@"%d", randomInt];
//convert random number into a string
//[self.picks addObject:randomNumberString];
//we're essentially still doing "aTicket.picks = ....@"12", @"14...." just down here now
-(NSString *)description
{
    NSMutableString *ticketAsString = [[NSMutableString alloc] init];
    for (NSString *aPick in self.picks)
    {
        [ticketAsString appendString:aPick];
        [ticketAsString appendString:@" "];
    }
    return ticketAsString;
}

@end
