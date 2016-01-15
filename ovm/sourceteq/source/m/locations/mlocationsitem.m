#import "mlocationsitem.h"

@implementation mlocationsitem

-(instancetype)init:(NSString*)title symbol:(NSString*)symbol lat:(NSNumber*)lat lon:(NSNumber*)lon;
{
    self = [super init];
    
    self.title = title;
    self.symbol = symbol;
    self.latitude = lat.doubleValue;
    self.longitude = lon.doubleValue;
    
    return self;
}

@end