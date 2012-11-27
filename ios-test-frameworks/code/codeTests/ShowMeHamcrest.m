#import "ShowMeHamcrest.h"
#import "Mercedes.h"
#import "Speedboat.h"

#define HC_SHORTHAND

#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import "HasWheelsMatcher.h"
#import "TheMatcher.h"
#import "FilterMatcher.h"


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
    assertThat(@3, allOf(greaterThan(@2), lessThan(@10), nil));
    assertThat(@3, isNot(allOf(greaterThan(@10), lessThan(@0), nil)));
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

    assertThat(car, hasProperty(@"numberOfWheels", greaterThan(@0)));

    //Nicer?
    assertThat(car, hasWheels());
    assertThat(boat, isNot(hasWheels()));
}

- (void)test_production_code_matching {
    bool *isSupermanEqual = the(@"Superman", is(equalTo(@"Superman")));
    assertThatBool(isSupermanEqual, equalToBool(true));

    bool *supermanNotEqualToLex = the(@"Superman", isNot(equalTo(@"Lex Luthor")));
    assertThatBool(supermanNotEqualToLex, equalToBool(true));
}

- (void)test_production_code_filtering {
    NSArray *array = [NSArray arrayWithObjects:@"a", @"b", @"c", nil];
    NSArray *filteredArray = filter(array, equalTo(@"a"));

    assertThat(filteredArray, allOf(hasItem(@"a"),
            hasCount(equalToUnsignedInteger(1)),
            nil));
}

@end
