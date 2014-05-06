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
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

+ (instancetype)randomItem;

// Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

// Secondary initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name;

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;
@end
