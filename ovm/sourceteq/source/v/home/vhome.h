#import "appdel.h"

@class vlogo;
@class mhome;

@interface vhome:UIView<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property(weak, nonatomic)vlogo *logo;
@property(strong, nonatomic)mhome *model;
@property(weak, nonatomic)UICollectionView *collection;

@end