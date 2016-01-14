#import "mmenuservices.h"

@implementation mmenuservices

#pragma mark -
#pragma mark menu protocol

-(Class)controller
{
    return [UIViewController class];
}

-(NSString*)title
{
    return NSLocalizedString(@"home_menu_services", nil);
}

-(NSString*)image
{
    return @"";
}

@end