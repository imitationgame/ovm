#import "appdel.h"

@class vlogo;

@interface vhome:UIView<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property(weak, nonatomic)vlogo *logo;
@property(weak, nonatomic)UICollectionView *collection;

@end