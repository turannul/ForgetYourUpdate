#import <Preferences/PSSpecifier.h>
#import <Preferences/PSListController.h>
#import <Foundation/Foundation.h>
#include <objc/runtime.h>
#include <dlfcn.h>
#include <sys/stat.h>

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

@interface PSGGeneralController : PSListController
@end

@interface PSUIGeneralController : PSListController
@end