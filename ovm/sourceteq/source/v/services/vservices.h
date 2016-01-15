#import "appdel.h"

@class mservices;

@interface vservices:UIView<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property(strong, nonatomic)mservices *model;

@end