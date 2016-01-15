#import "appdel.h"

@interface maboutitem:NSObject

-(instancetype)init:(NSString*)title descr:(NSString*)descr;
-(CGFloat)heightforwidth:(CGFloat)width;

@property(strong, nonatomic)NSMutableAttributedString *string;

@end