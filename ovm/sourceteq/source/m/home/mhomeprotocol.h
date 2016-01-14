#import <UIKit/UIKit.h>

@protocol mhomeprotocol <NSObject>

-(CGFloat)height;
-(void)registercel:(UICollectionView*)col;
-(UICollectionViewCell*)dequeue:(UICollectionView*)col index:(NSIndexPath*)index;

@end