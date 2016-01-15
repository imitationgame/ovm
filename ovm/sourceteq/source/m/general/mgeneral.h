#import <Foundation/Foundation.h>

// analytics

typedef NS_ENUM(NSInteger, ga_screen)
{
    ga_screen_home,
    ga_screen_about,
    ga_screen_services,
    ga_screen_locations,
    ga_screen_contact
};

typedef NS_ENUM(NSInteger, ga_event)
{
    ga_event_apprate,
    ga_event_phonecall,
    ga_event_email,
    ga_event_web
};

typedef NS_ENUM(NSInteger, ga_action)
{
    ga_action_optin
};