//
//  SPBattertStatusCollectCell.m
//  Alarm
//
//  Created by ganzaihong on 2018/6/12.
//  Copyright © 2018年 Sspaas. All rights reserved.
//

#import "SPBattertStatusCollectCell.h"
int  const batteryStatusCellHeight = 100;
@interface SPBattertStatusCollectCell()
/**
 * title
 */
@property(nonatomic,strong)UILabel *titleL;

/**
 * 电压
 */
@property(nonatomic,strong)UILabel *voltageL;

/**
 * 温度
 */
@property(nonatomic,strong)UILabel *temperatureL;

/**
 * 内阻
 */
@property(nonatomic,strong)UILabel *resistanceL;
/**
 * bgview
 */
@property(nonatomic,strong)UIView *bgView;
@end

@implementation SPBattertStatusCollectCell
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self addBaseUI];
         [self addMasonry];
    }
    return self;
}

-(void)setStatusModel:(SPBatteryStatusModel *)statusModel
{
    _statusModel = statusModel;
    
    _titleL.text = statusModel.title;
    _voltageL.text = statusModel.voltage;
    _resistanceL.text = statusModel.resistance;
    _temperatureL.text = statusModel.temperature;
}

#pragma mark - # addBaseUI
-(void)addBaseUI{
    _bgView = [[UIView alloc]init];
    _bgView.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:_bgView];
    
    
    _titleL = [[UILabel alloc]init];
    _titleL.text =  @"第20节";
    _titleL.textAlignment = NSTextAlignmentCenter;
    [_titleL setFont:[UIFont boldSystemFontOfSize:13]];
    [self.contentView addSubview:_titleL];
    _titleL.backgroundColor = [UIColor lightGrayColor];
    
    
    
    _voltageL = [[UILabel alloc]init];
    _voltageL.text = @"电压 V";
    [_voltageL setFont:[UIFont systemFontOfSize:10]];
    [self.contentView addSubview:_voltageL];
     _voltageL.textAlignment = NSTextAlignmentCenter;
    _voltageL.backgroundColor = [UIColor whiteColor];
    
    _temperatureL = [[UILabel alloc]init];
    _temperatureL.text = @"温度℃";
    [_temperatureL setFont:[UIFont systemFontOfSize:10]];
    [self.contentView addSubview:_temperatureL];
    _temperatureL.backgroundColor = [UIColor whiteColor];
     _temperatureL.textAlignment = NSTextAlignmentCenter;
    
    
    _resistanceL = [[UILabel alloc]init];
    _resistanceL.text = @"电压 mM";
    [_resistanceL setFont:[UIFont systemFontOfSize:10]];
    [self.contentView addSubview:_resistanceL];
     _resistanceL.textAlignment = NSTextAlignmentCenter;
    _resistanceL.backgroundColor = [UIColor whiteColor];
  
  
}

/**
 *  mas_distributeViewsAlongAxis 设置多个控件等高或者等宽 ,垂直或者水平方向
 *
 *  param withFixedSpacing    水平或者垂直方向间隔
 *  param leadSpacing   头距离
 *  param tailSpacing   尾距离
 */
-(void)addMasonry{
   
    NSArray * arrs = @[self.titleL,self.voltageL,self.temperatureL,self.resistanceL];
    [arrs mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedSpacing:2 leadSpacing:0 tailSpacing:0];
    [arrs mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
    }];
    
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.mas_equalTo(self.titleL);
        make.right.mas_equalTo(self.titleL.mas_right).offset(2);
    }];
    
}


@end
