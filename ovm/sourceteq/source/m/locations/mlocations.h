#import "appdel.h"

@class mlocationsitem;

@interface mlocations:NSObject

-(NSInteger)count;
-(mlocationsitem*)item:(NSInteger)item;
-(NSArray*)asarray;

@end