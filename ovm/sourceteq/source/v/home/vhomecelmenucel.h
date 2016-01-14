#import "appdel.h"

@interface vhomecelmenucel:UICollectionViewCell

-(void)config:(NSString*)title image:(NSString*)image;

@property(weak, nonatomic)UIView *background;
@property(weak, nonatomic)UIImageView *icon;
@property(weak, nonatomic)UILabel *lbl;

@end