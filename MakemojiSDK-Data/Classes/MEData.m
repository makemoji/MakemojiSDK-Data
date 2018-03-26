#import "MEData.h"
#import <AdSupport/AdSupport.h>

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

-(void)sendEmojiEvent:(NSDictionary *)dictionary {
    NSString * deviceId = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    
    if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled] == YES) {
        deviceId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    }
    
    NSString *model = [[UIDevice currentDevice] name];
    if ([model isEqualToString:@"iPhone Simulator"]) { deviceId = @"SIMULATOR"; }
    NSURL *url = [NSURL URLWithString:@"https://api.makemoji.com/tracking/data"];

    NSData *JSONData = [NSJSONSerialization dataWithJSONObject:dictionary
                                                       options:0
                                                         error:nil];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"POST";
    request.HTTPBody = JSONData;
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[JSONData length]] forHTTPHeaderField:@"Content-Length"];
    [request setValue:[[MEData sharedManager] sdkKey] forHTTPHeaderField:@"makemoji-sdkkey"];
    [request setValue:deviceId forHTTPHeaderField:@"makemoji-deviceid"];
    
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request
                                                                 completionHandler:^(NSData *data,
                                                                                     NSURLResponse *response,
                                                                                     NSError *error)
                                  {
                                      //NSLog(@"%@", response);
                                      if (error)
                                      {
                                          NSLog(@"MEData Error: %@", error.localizedDescription);
                                      }
                                      
                                  }];
    [task resume];
    
}

@end
