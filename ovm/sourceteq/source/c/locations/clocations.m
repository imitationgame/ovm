#import "clocations.h"

@implementation clocations

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:NSLocalizedString(@"locations_main_title", nil)];
    [[analytics singleton] trackscreen:ga_screen_locations];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

-(void)loadView
{
    self.view = [[vlocations alloc] init];
    self.locations = (vlocations*)self.view;
}

#pragma mark functionality

-(void)locationscheck
{
    switch([CLLocationManager authorizationStatus])
    {
        case kCLAuthorizationStatusAuthorizedAlways:
        case kCLAuthorizationStatusAuthorizedWhenInUse:
            
            [self.locations.mapview setShowsUserLocation:YES];
            
            break;
            
        case kCLAuthorizationStatusNotDetermined:
            
            locationmanager = [[CLLocationManager alloc] init];
            [locationmanager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
            [locationmanager setDistanceFilter:200];
            [locationmanager setDelegate:self];
            
            if([locationmanager respondsToSelector:@selector(requestWhenInUseAuthorization)])
            {
                [locationmanager requestWhenInUseAuthorization];
            }
            else
            {
                [mapview setShowsUserLocation:YES];
            }
            
            break;
            
        case kCLAuthorizationStatusDenied:
            break;
        case kCLAuthorizationStatusRestricted:
            break;
    }
}

@end