#include <Preferences/PSSpecifier.h>
#include <Preferences/PSListController.h>

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

@interface PSGGeneralController : PSListController
@end

@interface PSUIGeneralController : PSListController
@end