#import "SWGBrand.h"

@implementation SWGBrand

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"ocpc": @"ocpc", @"link": @"link", @"qr": @"qr", @"url": @"url", @"image": @"image", @"flowers": @"flowers", @"extracts": @"extracts", @"edibles": @"edibles", @"products": @"products", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ocpc", @"link", @"qr", @"url", @"image", @"flowers", @"extracts", @"edibles", @"products", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
