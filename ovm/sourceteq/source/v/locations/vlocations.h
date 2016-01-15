#import "appdel.h"

@class clocations;
@class mlocations;

@interface vlocations:UIView<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

-(void)load:(clocations*)controller;

@property(weak, nonatomic)clocations *controller;
@property(strong, nonatomic)mlocations *locations;
@property(weak, nonatomic)MKMapView *mapview;
@property(weak, nonatomic)UICollectionView *collection;

@end