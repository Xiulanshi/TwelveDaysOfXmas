//
//  main.m
//  12DaysofXmas-Arrays
//
//  Created by Xiulan Shi on 6/14/15.
//  Copyright (c) 2015 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // song name...
        NSLog(@"The Twelve Days of Christmas");
        // no 'and' on first day!!!...
        NSArray *firstGift = @[@"a Partridge in a Pear Tree\n"];
        
        NSArray *days = @[@"First", @"Second", @"Third", @"Fourth", @"Fifth", @"Sixth", @"Seventh", @"Eighth", @"Ninth", @"Tenth", @"Elventh", @"Twelfth"];
        
        NSArray *gifts = @[@"and a Partridge in a Pear Tree\n", @"Two Turtle Doves\n", @"Three French Hens\n", @"Four Calling Birds\n", @"Five Golden Rings\n", @"Six Grease a-Laying\n", @"Seven Swans a-Swimming\n", @"Eight Maids a-Milking\n", @"Nine ladies Dancing\n", @"Ten Lords a-Leaping\n", @"Eleven Pipers Piping\n", @"Twelve Drummers Drumming\n"];
        //first day...
        NSLog(@"\nOn the %@ day of Christmas my true love sent to me \n%@", days[0], firstGift[0]);
        //run a For Loop through each item of days array...
        for(int i=0; i<12; i++) {
            //we don't want to display day[0], let's start on the second one...
            if(i>0){
                NSLog(@"\nOn the %@ day of Christmas my true love sent to me \n", days[i]);
                //we want to display gifts from the current day index, so if we are in day[2], we want to display gift[2],gift[1],gift[0],this is why we write j=i where i is the day index and j is the gift index...
                for(int j=i; j >= 0; j--){
                    NSLog(@"%@ \n", gifts[j]);
                }
            }
        }
        
    }
    return 0;
}
