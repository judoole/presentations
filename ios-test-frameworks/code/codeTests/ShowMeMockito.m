#import "ShowMeMockito.h"
#import "Mercedes.h"

#define HC_SHORTHAND

#import <OCHamcrestIOS/OCHamcrestIOS.h>

#define MOCKITO_SHORTHAND

#import <OCMockitoIOS/OCMockitoIOS.h>
#import "HasWheelsMatcher.h"

@implementation ShowMeMockito
- (void)test_mockito_the_wheels_off {
    Mercedes *mercedes = mock([Mercedes class]);

    [given([mercedes numberOfWheels]) willReturn:@0];

    assertThat(mercedes, isNot(hasWheels()));
}

- (void)test_hamcrest_matcher {
    NSString *string = mock([NSString class]);

    [given([string componentsSeparatedByString:@","]) willReturn:@[@"Hello"]];

    NSArray *arrayMocked = [string componentsSeparatedByString:@","];
    NSArray *arrayNicelyNull = [string componentsSeparatedByString:@"smokk"];

    assertThat(arrayMocked, hasCount(equalToUnsignedInt(1)));
    assertThat(arrayNicelyNull, nilValue());
}
@end