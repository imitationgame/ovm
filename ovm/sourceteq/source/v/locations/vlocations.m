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
    
    CGFloat itemwidth = 54;
    CGFloat itemheight = 44;
    
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    [flow setHeaderReferenceSize:CGSizeZero];
    [flow setFooterReferenceSize:CGSizeZero];
    [flow setItemSize:CGSizeMake(itemwidth, itemheight)];
    [flow setMinimumInteritemSpacing:0];
    [flow setMinimumLineSpacing:0];
    [flow setScrollDirection:UICollectionViewScrollDirectionVertical];
    [flow setSectionInset:UIEdgeInsetsZero];
    
    UICollectionView *collection = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flow];
    [collection setBackgroundColor:[UIColor clearColor]];
    [collection setScrollEnabled:NO];
    [collection setBounces:NO];
    [collection setClipsToBounds:YES];
    [collection setDataSource:self];
    [collection setDelegate:self];
    [collection registerClass:[vlocationscel class] forCellWithReuseIdentifier:celid];
    [collection setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    self.collection = collection;
    
    [self addSubview:mapview];
    [self addSubview:collection];
    
    NSDictionary *views = @{@"map":mapview, @"col":collection};
    NSDictionary *metrics = @{@"colwidth":@(itemwidth), @"colheight":@(itemheight * ([self.locations count] + 0))};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[map]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[map]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[col(colwidth)]" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-80-[col(colheight)]" options:0 metrics:metrics views:views]];
}

#pragma mark -
#pragma mark col del

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)col
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView*)col numberOfItemsInSection:(NSInteger)section
{
    return [self.locations count];
}

-(UICollectionViewCell*)collectionView:(UICollectionView*)col cellForItemAtIndexPath:(NSIndexPath*)index
{
    vlocationscel *cel = [col dequeueReusableCellWithReuseIdentifier:celid forIndexPath:index];
    [cel config:[self.locations item:index.item]];
    
    return cel;
}

@end