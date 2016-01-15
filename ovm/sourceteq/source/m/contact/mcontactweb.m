#import "mcontactweb.h"

@implementation mcontactweb

#pragma mark -
#pragma mark contact del

-(NSString*)title
{
    return NSLocalizedString(@"contact_cel_web", nil);
}

-(void)selected
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.ovmx.org"]];
    
    [[analytics singleton] trackevent:ga_event_web action:ga_action_optin label:@""];
}

@end