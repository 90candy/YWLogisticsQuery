//
//  YWLogisticModel.m
//  YWLogisticsInformation
//
//  Created by Candy on 17/12/19.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "YWLogisticModel.h"
#import "YWConfigFile.h"

@interface YWLogisticModel ()

@property (assign, nonatomic)CGFloat tempHeight;
@end

@implementation YWLogisticModel

- (CGFloat)height {
    
    if (_tempHeight == 0) {
        
        NSDictionary * dict=[NSDictionary dictionaryWithObject: [UIFont systemFontOfSize:12] forKey:NSFontAttributeName];
        
        CGRect rect=[self.dsc boundingRectWithSize:CGSizeMake(YWScreenWidth - YW_leftSpace - 2*YW_rightSpace, CGFLOAT_MAX) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
        
        _tempHeight = rect.size.height + 50;;
    }
    
    return _tempHeight;
}
@end
