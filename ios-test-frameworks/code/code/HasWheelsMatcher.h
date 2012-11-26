#import <OCHamcrestIOS/OCHamcrestIOS.h>

@interface HasWheelsMatcher : HCBaseMatcher

+ (id)hasWheels;

@end


OBJC_EXPORT id<HCMatcher> hasWheels(void);