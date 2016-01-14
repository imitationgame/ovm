#import "appdel.h"

@class maboutitem;

@interface mabout:NSObject

-(NSInteger)count;
-(maboutitem*)item:(NSInteger)item;

@end