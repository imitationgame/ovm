#import "appdel.h"

@interface mhomebanners:NSObject<mhomeprotocol>

-(instancetype)init:(NSString*)flyer;

@property(strong, nonatomic)UIImage *image;

@end