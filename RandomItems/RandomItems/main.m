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
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        // For every item in the items array ...
        for (NSString *item in items) {
            // Log the description of item
            NSLog(@"%@", item);
        }
        
        // Destroy the mutable array object
        items = nil;
    }
    return 0;
}

