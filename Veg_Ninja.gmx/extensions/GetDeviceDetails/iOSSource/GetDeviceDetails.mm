#import "GetDeviceDetails.h"

@implementation GetDeviceDetails

- (NSString *) GetDeviceID
{
	return [[UIDevice currentDevice] identifierForVendor].UUIDString;
}

@end