#import "appdel.h"

@interface mhometitle:NSObject<mhomeprotocol>

-(instancetype)init:(NSString*)title fontsize:(CGFloat)fontsize;

@property(copy, nonatomic)NSString *title;
@property(nonatomic)CGFloat fontsize;

@end