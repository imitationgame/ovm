#import "appdel.h"

@class mcontact;

@interface vcontact:UIView<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property(strong, nonatomic)mcontact *model;

@end