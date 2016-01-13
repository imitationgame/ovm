#import "appdel.h"

@class vlogo;

@interface vhome:UIView<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property(weak, nonatomic)vlogo *logo;

@end