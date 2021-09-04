//
//  ImageModel.h
//  UserInterfaceExample
//
//  Created by Eric Larson on 9/2/20.
//  Copyright © 2020 Eric Larson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageModel : NSObject

-(UIImage*)getImageWithName:(NSString*)name;

-(UIImage*)getImageWithIndex:(NSInteger)index;

-(NSInteger)numberOfImages;

-(NSString*)getImageNameForIndex:(NSInteger)index;

+(ImageModel*)sharedInstance;

@end

NS_ASSUME_NONNULL_END
