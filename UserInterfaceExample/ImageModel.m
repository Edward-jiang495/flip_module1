//
//  ImageModel.m
//  UserInterfaceExample
//
//  Created by Eric Larson on 9/2/20.
//  Copyright © 2020 Eric Larson. All rights reserved.
//

#import "ImageModel.h"

@interface ImageModel ()

@property (strong, nonatomic) NSArray* imageNames;
@property (strong, nonatomic) NSMutableDictionary* imageNamesToImage;

@end

@implementation ImageModel

//@synthesize imageNames = _imageNames;
//@synthesize imageNamesToImage = _imageNamesToImage;

+(ImageModel*)sharedInstance{
    static ImageModel* _sharedInstance = nil;
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        _sharedInstance = [[ImageModel alloc] init];
    } );
    
    return _sharedInstance;
}

-(NSArray*) imageNames{
    if(!_imageNames){
        _imageNames = @[@"Bill",@"Eric",@"Jeff",@"wallpaper1",@"wallpaper2",@"wallpaper3"];
    }
    return _imageNames;
}

-(NSMutableDictionary*) imageNamesToImage{
    if(!_imageNamesToImage){
        NSArray* imageNameList = @[@"Bill",@"Eric",@"Jeff",@"wallpaper1",@"wallpaper2",@"wallpaper3"];
        _imageNamesToImage = [NSMutableDictionary dictionary];
        for(int a=0; a<imageNameList.count; a =a+1){
            NSString* name = (NSString*)imageNameList[a];
            UIImage* image = nil;
            image = [UIImage imageNamed:name];
            [_imageNamesToImage setObject:image forKey:name];
        }
    }
    
    return _imageNamesToImage;
}

-(UIImage*)getImageWithName:(NSString*)name{
    UIImage* image = nil;
    
    image = [self.imageNamesToImage objectForKey: name];
    //old code
    //image = [UIImage imageNamed:name];
    
    return image;
}

-(UIImage*)getImageWithIndex:(NSInteger)index{
    UIImage* image = nil;
    NSString* name =@"";
    name = (NSString*)self.imageNames[index];
    image = [self.imageNamesToImage objectForKey: name];
    
    return image;
}

-(NSInteger)numberOfImages{
    return self.imageNames.count;
}

-(NSString*)getImageNameForIndex:(NSInteger)index{
    
    NSString* name = (NSString*) self.imageNames[index];
    
    return name;
    
}

@end
