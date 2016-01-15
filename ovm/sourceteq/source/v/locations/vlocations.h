#import "appdel.h"

@class clocations;

@interface vlocations:UIView

-(instancetype)init:(clocations*)controller;

@property(weak, nonatomic)clocations *controller;
@property(weak, nonatomic)MKMapView *mapview;

@end