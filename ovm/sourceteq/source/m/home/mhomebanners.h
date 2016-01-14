#import "appdel.h"

@interface mhomebanners:NSObject<mhomeprotocol>

-(instancetype)init:(NSString*)flyer;

@property(copy, nonatomic)NSString *flyer;

@end