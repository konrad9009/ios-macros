//
//  Macros.h
//
//  Created by konrad9009 on 06/06/15.
//  Copyright (c) 2015 konrad9009. All rights reserved.
//

/*
 VIEW_INIT_WITH_BLOCK
 Convenient way to setup custom views
 */
#define VIEW_INIT_WITH_BLOCK(block) \
- (instancetype)initWithFrame:(CGRect)frame {\
  self = [super initWithFrame:frame];\
  if (self) {\
    block\
  }\
  return self;\
}\
- (id)initWithCoder:(NSCoder *)coder {\
  self = [super initWithCoder:coder];\
  if (self) {\
    block\
  }\
  return self;\
}