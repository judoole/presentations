#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import "TheMatcher.h"

@implementation TheMatcher {
}
@end

bool the(id actual, id <HCMatcher> matcher) {
    return [matcher matches:actual];
}

