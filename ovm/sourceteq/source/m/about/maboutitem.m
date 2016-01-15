#import "maboutitem.h"

@implementation maboutitem

-(instancetype)init:(NSString*)title descr:(NSString*)descr
{
    self = [super init];

    NSDictionary *attrtitle = @{NSForegroundColorAttributeName:[UIColor colorWithWhite:0 alpha:0.85], NSFontAttributeName:[UIFont fontWithName:fontboldname size:20]};
    NSDictionary *attrdescr = @{NSForegroundColorAttributeName:[UIColor colorWithWhite:0 alpha:0.6], NSFontAttributeName:[UIFont fontWithName:fontname size:18]};
    
    self.string = [[NSMutableAttributedString alloc] init];
    [self.string appendAttributedString:[[NSAttributedString alloc] initWithString:title attributes:attrtitle]];
    [self.string appendAttributedString:[[NSAttributedString alloc] initWithString:@"\n" attributes:attrdescr]];
    [self.string appendAttributedString:[[NSAttributedString alloc] initWithString:descr attributes:attrdescr]];
    
    return self;
}

#pragma mark public

-(CGFloat)heightforwidth:(CGFloat)width
{
    return ceilf([self.string boundingRectWithSize:CGSizeMake(width - 40, 1000) options:stringdrawing context:nil].size.height) + 40;
}

@end