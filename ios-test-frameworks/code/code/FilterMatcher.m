#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import "FilterMatcher.h"


@implementation FilterMatcher {

}

@end

OBJC_EXPORT NSArray *filter(id actual, id <HCMatcher> matcher){
    NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
    for(id object in actual){
        if ([matcher matches:object]) [mutableArray addObject:object];
    }
    return mutableArray;
}