//
//  ZYImageLabelView.m
//  ZYImageLabelView
//
//  Created by 毛汉卿 on 2016/12/7.
//  Copyright © 2016年 毛汉卿. All rights reserved.
//

#import "ZYImageLabelView.h"
#import "Masonry.h"
@implementation ZYImageLabelView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
/*
-(void)setLabelTop:(CGFloat)labelTop{
    _labelTop =labelTop;
    
    [self.imageView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.label.mas_top).with.offset(-labelTop);
    }];
}
-(void)setLabelBottom:(CGFloat)labelBottom{
    _labelBottom = labelBottom;
    
    
    [self.imageView mas_updateConstraints:^(MASConstraintMaker *make) {
      
        make.top.equalTo(self.label.mas_bottom).with.offset(labelBottom);
    }];
    
}
-(void)setLabelRight:(CGFloat)labelRight{
    _labelRight = labelRight;
    [self.imageView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.label.mas_right).with.offset(labelRight);
    }];
}
-(void)setLabelLeft:(CGFloat)labelLeft{
    _labelLeft =labelLeft;
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.label.mas_left).with.offset(-labelLeft);
    }];
}
- (void)setImageTop:(CGFloat)imageTop{
    _imageTop = imageTop;
    [self.label mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.imageView.mas_top).offset(-imageTop);
    }];
}
-(void)setImageBottom:(CGFloat)imageBottom{
    _imageBottom = imageBottom;
    [self.label mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.imageView.mas_bottom).offset(imageBottom);
    }];

}
-(void)setImageLeft:(CGFloat)imageLeft{
    _imageLeft = imageLeft;
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.imageView.mas_left).offset(-imageLeft);
    }];
}
-(void)setImageRight:(CGFloat)imageRight{
    _imageRight = imageRight;
    [self.label mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imageView.mas_right).offset(imageRight);
    }];
}*/

-(void)setLabelEdge:(UIEdgeInsets)labelEdge{
    _labelEdge = labelEdge;
    [self.label mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.offset(labelEdge.top);
        make.bottom.offset(-labelEdge.bottom);
        make.right.offset(-labelEdge.right);
        make.left.offset(labelEdge.left);
    }];
}
-(void)setImageEdge:(UIEdgeInsets)imageEdge{
    _imageEdge = imageEdge;
    [self.imageView mas_remakeConstraints:^(MASConstraintMaker *make) {
        
        if (CGSizeEqualToSize(self.imagesize, CGSizeZero)) {
            make.top.offset(imageEdge.top).priorityMedium();
            make.bottom.offset(imageEdge.bottom).priorityMedium();
            make.left.offset(imageEdge.left).priorityMedium();
            make.right.offset(-imageEdge.right).priorityMedium();
        }else{
             make.size.mas_equalTo(self.imagesize);
            if (imageEdge.bottom) {
                make.bottom.offset(-imageEdge.bottom);
            }
            if (imageEdge.top) {
                make.top.offset(imageEdge.top);
            }
            if (imageEdge.left) {
                make.left.offset(imageEdge.left);
            }
            if (imageEdge.right) {
                make.right.offset(-imageEdge.right);
            }
        }
    }];
//    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
//      
//    }];
    
}
-(void)setImagesize:(CGSize)imagesize{
    _imagesize = imagesize;
    if (!UIEdgeInsetsEqualToEdgeInsets(self.imageEdge, UIEdgeInsetsZero)) {
        [self.imageView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(self.imagesize);
            if (self.imageEdge.bottom) {
                make.bottom.offset(-self.imageEdge.bottom);
            }
            if (self.imageEdge.top) {
                make.top.offset(self.imageEdge.top);
            }
            if (self.imageEdge.left) {
                make.left.offset(self.imageEdge.left);
            }
            if (self.imageEdge.right) {
                make.right.offset(-self.imageEdge.right);
            }
        }];
        return;
    }
    [self.imageView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(imagesize.width);
        make.height.mas_equalTo(imagesize.height);
    }];
}
-(void)setImage:(UIImage *)image{
    _image = image;
    self.imageView.image = image;
//    [self.imageView mas_updateConstraints:^(MASConstraintMaker *make) {
//        make.width.mas_equalTo(image.size.width);
//        make.height.mas_equalTo(image.size.height);
//    }];
}
-(void)setText:(NSString *)text{
    _text = text;
    self.label.text = text;
}
-(UIImageView *)imageView{
    if (!_imageView) {
        _imageView =[[UIImageView alloc]init];
        [self addSubview:_imageView];
        [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.offset(0);
            make.center.priorityLow();
            make.width.and.height.mas_greaterThanOrEqualTo(10);
        }];
    }
    return _imageView;
}
-(UILabel *)label{
    if (!_label) {
        _label =[[UILabel alloc]init];
        [self addSubview:_label];
        [_label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.offset(0).priorityLow();
            
            
            make.width.and.height.mas_greaterThanOrEqualTo(10);
        }];
        
    }
    return _label;
}
@end
