#import "appdel.h"

@class vlocations;

@interface clocations:UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>

@property(weak, nonatomic)vlocations *locations;
@property(strong, nonatomic)CLLocationManager *locationmanager;
@property(nonatomic)MKCoordinateSpan mapspan;
@property(nonatomic)CLLocationCoordinate2D userlocation;

@end