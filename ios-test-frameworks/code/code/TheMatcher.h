#import <Foundation/Foundation.h>

@interface TheMatcher : NSObject

@end

OBJC_EXPORT

bool the(id actual, id <HCMatcher> matcher);