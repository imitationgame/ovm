#import "appdel.h"

@class mmenu;

@interface vhomecelmenu:UICollectionViewCell<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property(strong, nonatomic)mmenu *model;
@property(weak, nonatomic)UICollectionView *collection;

@end