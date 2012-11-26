#import "ShowMeMockito.h"
#import "Mercedes.h"
#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

#define MOCKITO_SHORTHAND
#import <OCMockitoIOS/OCMockitoIOS.h>
#import "HasWheelsMatcher.h"

@implementation ShowMeMockito
-(void)test_mockito_the_wheels_off{
    Mercedes *mercedes = mock([Mercedes class]);

    [given([mercedes numberOfWheels]) willReturn:@0];

    assertThat(mercedes, isNot(hasWheels()));
}
@end