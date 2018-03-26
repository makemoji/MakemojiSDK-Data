#import <Foundation/Foundation.h>

@interface MEData : NSObject {
    NSString *sdkKey;
}
    
@property (nonatomic, retain) NSString *sdkKey;
    
+ (id)sharedManager;
    
@end
