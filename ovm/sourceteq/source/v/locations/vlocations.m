#import "vlocations.h"

@implementation vlocations

-(instancetype)init:(clocations*)controller
{
    self = [super init];
    [self setBackgroundColor:[UIColor whiteColor]];
    
    self.controller = controller;
    
    MKMapView *mapview = [[MKMapView alloc] init];
    [mapview setRotateEnabled:NO];
    [mapview setMapType:MKMapTypeStandard];
    [mapview setPitchEnabled:NO];
    [mapview setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    self.mapview = mapview;
    [self addSubview:mapview];
    
    NSDictionary *views = @{@"map":mapview};
    NSDictionary *metrics = @{};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[map]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[map]-0-|" options:0 metrics:metrics views:views]];
    
    return self;
}

-(void)dealloc
{
    [self.mapview setShowsUserLocation:NO];
}

@end