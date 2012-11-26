@protocol HCMatcher;

@interface FilterMatcher : NSObject
@end

OBJC_EXPORT

NSArray *filter(id actual, id <HCMatcher> matcher);