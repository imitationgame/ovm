#import "appdel.h"

@class vlocations;

@interface clocations:UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>

@property(weak, nonatomic)vlocations *locations;

@end