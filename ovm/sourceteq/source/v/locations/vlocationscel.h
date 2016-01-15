#import "appdel.h"

@class mlocationsitem;

@interface vlocationscel:UICollectionViewCell

-(void)config:(mlocationsitem*)item;

@property(weak, nonatomic)mlocationsitem *item;
@property(weak, nonatomic)UILabel *lbl;
@property(weak, nonatomic)UIView *background;

@end