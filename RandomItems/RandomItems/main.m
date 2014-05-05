//
//  main.m
//  RandomItems
//
//  Created by Raymon Atienza on 2014-05-05.
//  Copyright (c) 2014 Raymon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, inserObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the items array ...
        for (NSString *item in items) {
            // Log the description of item
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
                                           valueInDollars:100
                                             serialNumber:@"A1B2C"];
        
        // This creates an NSString, "Red Sofa" and gives it to the BNRItem
        //[item setItemName:@"Red Sofa"];
        //item.itemName = @"Red Sofa";
        
        // This creates an NSString, "A1B2C" and gives it to the BNRItem
        //[item setSerialNumber:@"A1B2C"];
        //item.serialNumber = @"A1B2C";
        
        // This sends the value 100 to be used as the valueInDollars of the BNRItem
        //[item setValueInDollars:100];
        //item.valueInDollars = 100;
        
        // The %@ token is replaced with the result of sending
        // the description message to the corresponding argument
        NSLog(@"%@", item);
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithNoName = [[BNRItem alloc] init];
        NSLog(@"%@", itemWithNoName);
        
        // Destroy the mutable array object
        items = nil;
    }
    return 0;
}

