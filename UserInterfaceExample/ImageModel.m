//
//  ImageModel.m
//  UserInterfaceExample
//
//  Created by Eric Larson on 9/2/20.
//  Copyright © 2020 Eric Larson. All rights reserved.
//

#import "ImageModel.h"

@implementation ImageModel

@property (strong, nonatomic) NSArray* imageNames;

@synthesize imageNames = _imageNames;

+(ImageModel*)sharedInstance{
    static ImageModel* _sharedInstance = nil;
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        _sharedInstance = [[ImageModel alloc] init];
    } );
    return _sharedInstance;
}

-(NSArray*) imageNames{
    if(!_imageNames)
        _imageNames = @[@"Bill",@"Eric",@"Jeff"];
    
    return _imageNames;
}


-(UIImage*)getImageWithName:(NSString*)name{
    UIImage* image = nil;
    
    image = [UIImage imageNamed:name];
    
    return image;
}

-(UIImage*)getImageWithIndex:(NSInteger)index{
    UIImage* image = nil;
    
    image = (UIImage*)imageNames[index];

    return image;
}

-(NSInteger)numberOfImages:{
    return imageNames.count;
}

-(NSString*)getImageNameForIndex(NSInteger)index{
    UIImage* image = nil;
    
    image = (UIImage*)imageNames[index];
    let name = image.name;
    return name;
}

@end
