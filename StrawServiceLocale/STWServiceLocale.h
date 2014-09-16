#import <Foundation/Foundation.h>
#import <Straw/Straw.h>

@interface STWServiceLocale : NSObject <STWService>

- (void)getLanguage:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context;

@end
