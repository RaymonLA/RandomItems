//
//  BNRItem.h
//  RandomItems
//
//  Created by Raymon Atienza on 2014-05-05.
//  Copyright (c) 2014 Raymon. All rights reserved.
//

#import <Foundation/Foundation.h>

// Header file declaration convention
// 1) Instance variables
// 2) Class Methods (+)
// 3) Initializers
// 4) Instance Methods (-)

@interface BNRItem : NSObject

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

+ (instancetype)randomItem;

// Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

// Secondary initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name;

@end
