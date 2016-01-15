#import "appdel.h"

@interface mlocationsitem:NSObject

-(instancetype)init:(NSString*)title symbol:(NSString*)symbol lat:(NSNumber*)lat lon:(NSNumber*)lon;

@property(copy, nonatomic)NSString *title;
@property(copy, nonatomic)NSString *symbol;
@property(nonatomic)double latitude;
@property(nonatomic)double longitude;

@end