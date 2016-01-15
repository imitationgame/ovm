#import "vlocations.h"

@implementation vlocations

-(instancetype)init
{
    self = [super init];
    [self setBackgroundColor:[UIColor whiteColor]];
    
    return self;
}

-(void)dealloc
{
    [self.mapview setShowsUserLocation:NO];
}

#pragma mark public

-(void)load:(clocations*)controller
{
    self.controller = controller;
    self.locations = [[mlocations alloc] init];
    
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
}

#pragma mark -
#pragma mark col del

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)col
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView*)col numberOfItemsInSection:(NSInteger)section
{
    return 0;
}

-(UICollectionViewCell*)collectionView:(UICollectionView*)col cellForItemAtIndexPath:(NSIndexPath*)index
{
    vlocationscel *cel = [col dequeueReusableCellWithReuseIdentifier:celid forIndexPath:index];
    [cel config:];
    
    return cel;
}

@end