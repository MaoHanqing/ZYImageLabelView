//
//  ZYImageLabelView.h
//  ZYImageLabelView
//
//  Created by 毛汉卿 on 2016/12/7.
//  Copyright © 2016年 毛汉卿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYImageLabelView : UIView
@property (nonatomic,strong) UIImage *image;
@property (nonatomic,copy)    NSString *text;
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UILabel *label;
@property (nonatomic,assign) CGSize imagesize;
// edge for superView
@property (nonatomic,assign) UIEdgeInsets labelEdge;
@property (nonatomic,assign) UIEdgeInsets imageEdge;

/*
 待完善
// image's edge for label
@property (nonatomic,assign) CGFloat labelRight;
@property (nonatomic,assign) CGFloat labelTop;
@property (nonatomic,assign) CGFloat labelBottom;
@property (nonatomic,assign) CGFloat labelLeft;
// label's edge for image
@property (nonatomic,assign) CGFloat imageRight;
@property (nonatomic,assign) CGFloat imageTop;
@property (nonatomic,assign) CGFloat imageBottom;
@property (nonatomic,assign) CGFloat imageLeft;
 */
@end
