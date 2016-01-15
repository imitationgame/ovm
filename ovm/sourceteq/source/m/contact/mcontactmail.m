#import "mcontactmail.h"

@implementation mcontactmail

#pragma mark -
#pragma mark contact del

-(NSString*)title
{
    return NSLocalizedString(@"contact_cel_mail", nil);
}

-(void)selected
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto:contact@ovmx.org"]];
    
    [[analytics singleton] trackevent:ga_event_email action:ga_action_optin label:@""];
}

@end