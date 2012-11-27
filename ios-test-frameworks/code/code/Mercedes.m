//
// Created by judoole on 11/25/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Mercedes.h"


@implementation Mercedes {

}
- (id)init {
    self = [super init];
    if (self) {
        [self setName:@"Mercedes-Benz W169"];
        [self setNumberOfWheels:@4];
    }

    return self;
}
- (NSString *)description {
    return [NSString stringWithFormat: @"Mercedes: Name=%@, NumberOfWheels=%@", [self name], [self numberOfWheels]];
}

@end