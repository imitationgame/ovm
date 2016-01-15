#import "mlocationsitem.h"

@implementation mlocationsitem

@synthesize title;
@synthesize coordinate;

-(instancetype)init:(NSString*)atitle symbol:(NSString*)symbol lat:(NSNumber*)lat lon:(NSNumber*)lon index:(NSInteger)index
{
    self = [super init];
    
    title = atitle;
    self.symbol = symbol;
    self.latitude = lat.doubleValue;
    self.longitude = lon.doubleValue;
    self.index = index;
    coordinate = CLLocationCoordinate2DMake(self.latitude, self.longitude);
    
    return self;
}

@end