//
//  UIImage+Color.h
//  DYCategory
//
//  Created by zdy on 2017/1/9.
//  Copyright © 2017年 lianlian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)

+ (UIImage *)imageWithSize:(CGSize)size stockColor:(UIColor *)color cornerRadius:(CGFloat)radius;
+ (UIImage *)imageWithSize:(CGSize)size stockColor:(UIColor *)color fillColor:(UIColor *)fillColor cornerRadius:(CGFloat)radius;
@end
