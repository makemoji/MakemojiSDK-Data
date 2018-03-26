#import "MEData.h"

@implementation MEData
    
@synthesize sdkKey;
    
#pragma mark Singleton Methods
    
+ (id)sharedManager {
    static MEData *sharedMEData = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMEData = [[self alloc] init];
    });
    return sharedMEData;
}
    
- (id)init {
    if (self = [super init]) {
        sdkKey = @"";
    }
    return self;
}

@end
