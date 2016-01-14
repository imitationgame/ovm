#import "appdel.h"
#import "mmenuprotocol.h"

@interface mmenu:NSObject

-(NSInteger)count;
-(id<mmenuprotocol>)item:(NSInteger)item;

@end