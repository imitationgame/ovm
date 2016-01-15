#import "clocations.h"

@implementation clocations
{
    BOOL updateinitial;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:NSLocalizedString(@"locations_main_title", nil)];
    [[analytics singleton] trackscreen:ga_screen_locations];
    
    updateinitial = NO;
    self.mapspan = MKCoordinateSpanMake(0.02, 0.02);
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if(!self.locations.controller)
    {
        [self.locations load:self];
        [self.locations.mapview setDelegate:self];
    }
    
    [self locationscheck];
    
    [self.navigationController.interactivePopGestureRecognizer setEnabled:NO];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [self.navigationController.interactivePopGestureRecognizer setEnabled:YES];
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
            
            self.locationmanager = [[CLLocationManager alloc] init];
            [self.locationmanager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
            [self.locationmanager setDistanceFilter:80];
            [self.locationmanager setDelegate:self];
            
            if([self.locationmanager respondsToSelector:@selector(requestWhenInUseAuthorization)])
            {
                [self.locationmanager requestWhenInUseAuthorization];
            }
            else
            {
                [self.locations.mapview setShowsUserLocation:YES];
            }
            
            break;
            
        case kCLAuthorizationStatusDenied:
            break;
        case kCLAuthorizationStatusRestricted:
            break;
    }
}

#pragma mark public

-(void)centeruser
{
    [self.locations.mapview setRegion:MKCoordinateRegionMake(self.userlocation, self.mapspan) animated:YES];
}

-(void)centerlocation:(mlocationsitem*)item
{
    [self.locations.mapview setRegion:MKCoordinateRegionMake(item.coordinate, self.mapspan) animated:YES];
    [self.locations.mapview selectAnnotation:item animated:YES];
}

#pragma -
#pragma mark map delegate

-(void)mapView:(MKMapView*)mapview didUpdateUserLocation:(MKUserLocation*)userlocation
{
    self.userlocation = userlocation.coordinate;
    
    if(!updateinitial)
    {
        updateinitial = YES;
        
        [self centeruser];
    }
}

-(void)mapView:(MKMapView*)mapview didSelectAnnotationView:(MKAnnotationView*)view
{
    if(view.annotation != mapview.userLocation)
    {
        [self.locations.collection selectItemAtIndexPath:[NSIndexPath indexPathForItem:[(mlocationsitem*)view.annotation index] inSection:0] animated:YES scrollPosition:UICollectionViewScrollPositionNone];
        
    }
}

-(void)mapView:(MKMapView*)mapview didDeselectAnnotationView:(MKAnnotationView*)view
{
    [self.locations.collection reloadData];
}

-(void)locationManager:(CLLocationManager*)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    if(status == kCLAuthorizationStatusAuthorizedAlways || status == kCLAuthorizationStatusAuthorizedWhenInUse)
    {
        [self.locations.mapview setShowsUserLocation:YES];
    }
}

@end