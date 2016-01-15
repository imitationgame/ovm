#import "appdel.h"

@interface mlocationsitem:NSObject<MKAnnotation>

-(instancetype)init:(NSString*)atitle symbol:(NSString*)symbol lat:(NSNumber*)lat lon:(NSNumber*)lon index:(NSInteger)index;

@property(copy, nonatomic)NSString *symbol;
@property(nonatomic)double latitude;
@property(nonatomic)double longitude;
@property(nonatomic)NSInteger index;

@end