#import <Foundation/Foundation.h>
#import <Straw/Straw.h>

/**
 STWServiceLocale is a Locale service for Straw iOS.

 This service class provides the way to access to locale data through Straw Service Method call.
 */
@interface STWServiceLocale : NSObject <STWService>

/**
 Returns language code.

 @param params Straw Service call params
 @param context Straw Service call context
 */
- (void)getLanguage:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context;

@end
