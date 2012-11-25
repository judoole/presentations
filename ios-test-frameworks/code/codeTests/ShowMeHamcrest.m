#import "ShowMeHamcrest.h"
#import "Mercedes.h"
#import "Speedboat.h"

#define HC_SHORTHAND

#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import "HasWheels.h"


@implementation ShowMeHamcrest

- (void)test_some_text_shit {
    assertThat(@"Hello", equalTo(@"Hello"));
    assertThat(@"Hello world", containsString(@"world"));
    assertThat(@"Hello mom, this is awesome", stringContainsInOrder(@"mom", @"is", @"awesome", nil));
}

- (void)test_object_stuff {
    Mercedes *mercedes = [[Mercedes alloc] init];

    assertThat(mercedes, instanceOf([Mercedes class]));
    assertThat(mercedes, hasProperty(@"name", @"Mercedes-Benz W169"));
}

- (void)test_numbers {
    assertThat(@3, greaterThan(@2));
}

- (void)test_arrays {
    NSArray *array = [NSArray arrayWithObjects:@"a", @"b", @"c", nil];

    assertThat(array, hasItem(@"a"));
    assertThat(array, isNot(hasItem(@"X")));
    assertThat(array, hasItem(equalToIgnoringCase(@"A")));
    assertThat(array, hasItems(@"b", @"a", nil));

}

- (void)test_custom_matcher {
    Vehicle *car = [[Mercedes alloc] init];
    Vehicle *boat = [[Speedboat alloc] init];

    assertThat(car, hasWheels());
    assertThat(boat, isNot(hasWheels()));
}

@end
