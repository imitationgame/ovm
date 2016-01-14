#import "appdel.h"

@interface mhome:NSObject

-(NSInteger)count;
-(CGSize)sizeforitem:(NSInteger)item width:(CGFloat)width;
-(void)registercels:(UICollectionView*)col;
-(UICollectionViewCell*)dequeuecel:(UICollectionView*)col index:(NSIndexPath*)index;
-(BOOL)selectable:(NSInteger)item;
-(UIViewController*)controller:(NSInteger)item;

@end