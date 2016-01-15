#import "appdel.h"
#import "mcontactprotocol.h"

@interface mcontact:NSObject

-(NSInteger)count;
-(id<mcontactprotocol>)item:(NSInteger)item;

@end