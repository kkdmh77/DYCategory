//
//  UIImage+Color.m
//  DYCategory
//
//  Created by zdy on 2017/1/9.
//  Copyright © 2017年 lianlian. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)
+ (UIImage *)imageWithSize:(CGSize)size stockColor:(UIColor *)color fillColor:(UIColor *)fillColor cornerRadius:(CGFloat)radius
{
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, YES, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, fillColor.CGColor);
    CGContextFillRect(context, rect);
    
    CGPathRef path = CGPathCreateWithRoundedRect(rect, radius, radius, nil);
    CGContextAddPath(context, path);
    
    CGContextDrawPath(context, kCGPathFill);
    CGPathRelease(path);
    
    /*
     画圆角矩形
     CGContextMoveToPoint(context, size.width, size.height-radius);  // 开始坐标右边开始
     CGContextAddArcToPoint(context, size.width, size.height, size.width-radius, size.height, radius);  // 右下角角度
     CGContextAddArcToPoint(context, 0, size.height, 0, size.height-radius, radius); // 左下角角度
     CGContextAddArcToPoint(context, 0, 0, size.width-radius, 0, radius); // 左上角
     CGContextAddArcToPoint(context, size.width, 0, size.width, size.height-radius, radius); // 右上角
     CGContextClosePath(context);
     CGContextDrawPath(context, kCGPathFillStroke);
     */
    
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return theImage;
}

+ (UIImage *)imageWithSize:(CGSize)size stockColor:(UIColor *)color cornerRadius:(CGFloat)radius
{
    return [UIImage imageWithSize:size stockColor:color fillColor:[UIColor whiteColor] cornerRadius:radius];
}

@end
