//
//  HamcrestShowMe.m
//  HamcrestShowMe
//
//  Created by Ole Christian Langfjæran on 11/24/12.
//  Copyright (c) 2012 Judoole. All rights reserved.
//

#import "HamcrestShowMe.h"
#import "Mercedes.h"
#import "Speedboat.h"

#define HC_SHORTHAND

#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import "HasWheels.h"


@implementation HamcrestShowMe

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
    NSArray *a = [NSArray arrayWithObjects:@"a", @"b", @"c", nil];

    assertThat(a, hasItem(@"a"));
    assertThat(a, isNot(hasItem(@"X")));
    assertThat(a, hasItem(equalToIgnoringCase(@"A")));
    assertThat(a, hasItems(@"b", @"a", nil));

}

- (void)test_custom_matcher {
    Vehicle *car = [[Mercedes alloc] init];
    Vehicle *boat = [[Speedboat alloc] init];
    assertThat(car, hasWheels());
    assertThat(boat, isNot(hasWheels()));
}

@end
