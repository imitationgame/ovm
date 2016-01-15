#import "appdel.h"

@class vlocations;
@class mlocationsitem;

@interface clocations:UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>

-(void)centeruser;
-(void)centerlocation:(mlocationsitem*)item;

@property(weak, nonatomic)vlocations *locations;
@property(strong, nonatomic)CLLocationManager *locationmanager;
@property(nonatomic)MKCoordinateSpan mapspan;
@property(nonatomic)CLLocationCoordinate2D userlocation;

@end