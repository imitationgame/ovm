#import "mmenuabout.h"

@implementation mmenuabout

#pragma mark -
#pragma mark menu protocol

-(Class)controller
{
    return [UIViewController class];
}

-(NSString*)title
{
    return NSLocalizedString(@"home_menu_about", nil);
}

-(NSString*)image
{
    return @"";
}

@end