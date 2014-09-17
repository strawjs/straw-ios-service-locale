#import <XCTest/XCTest.h>
#import "STWServiceLocale.h"

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>


@interface STWServiceLocaleTest : XCTestCase

@end

@implementation STWServiceLocaleTest


- (void)testName
{
    id<STWService> service = [[STWServiceLocale alloc] init];

    XCTAssertEqual(@"locale", [service name], "the service name is locale");
}

- (void)testIsBackgroundJob
{
    id<STWService> service = [[STWServiceLocale alloc] init];

    XCTAssert([service isBackgroundJob:@"getLanguage"], "getLanguage service method is a background job");
}

- (void)testGetLanguage
{
    STWServiceLocale *service = [[STWServiceLocale alloc] init];

    id<STWServiceCallContext> serviceCallContext = mockProtocol(@protocol(STWServiceCallContext));

    [service getLanguage:@{} withContext:serviceCallContext];

    [verifyCount(serviceCallContext, times(1)) succeedWithString:[[NSLocale preferredLanguages] objectAtIndex:0]];
}

@end
