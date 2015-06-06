//
//  CustomView.m
//  ios-macros-example
//
//  Created by Konrad on 06/06/15.
//  Copyright (c) 2015 Konrad. All rights reserved.
//

#import "CustomView.h"
#import "Macros.h"

@implementation CustomView {
    UIColor *_customBackgroundColor;
}

VIEW_INIT_WITH_BLOCK(
  [self setupBackground];
)

- (void)setupBackground {
    self.backgroundColor = self.customBackgroundColor;
}

- (UIColor *)customBackgroundColor {
    if (!_customBackgroundColor) {
        _customBackgroundColor = [UIColor yellowColor];
    }
    return _customBackgroundColor;
}

- (void)setCustomBackgroundColor:(UIColor *)customBackgroundColor {
    _customBackgroundColor = customBackgroundColor;
    [self setupBackground];
}

- (void)prepareForInterfaceBuilder {
    [self setupBackground];
}

@end
