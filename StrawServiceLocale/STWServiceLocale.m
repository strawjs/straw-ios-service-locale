#import "STWServiceLocale.h"

@implementation STWServiceLocale

- (NSString *)name
{
    return @"locale";
}

- (BOOL)isBackgroundJob:(NSString *)method
{
    return YES;
}

- (void)getLanguage:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context
{
    [context succeedWithString:[[NSLocale preferredLanguages] objectAtIndex:0]];
}

@end
