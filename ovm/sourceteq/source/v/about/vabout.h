#import "appdel.h"

@class mabout;

@interface vabout:UIView<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property(strong, nonatomic)mabout *model

@end