#import "HasWheels.h"

#import <OCHamcrest/HCDescription.h>


@implementation HasWheels

+ (id)hasWheels {
    return [[self alloc] init];
}

- (BOOL)matches:(id)item {
    return [[HCHasProperty hasProperty:@"numberOfWheels" value:HC_greaterThan(@0)] matches:item];
}

- (void)describeTo:(id <HCDescription>)description {
    [description appendText:@"wheels on Vehicle"];
}

@end

id <HCMatcher> hasWheels() {
    return [HasWheels hasWheels];
}