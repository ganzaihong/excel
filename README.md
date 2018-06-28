# excel
create a excel list
设置4个控件等宽高等间距
[arrs mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedSpacing:2 leadSpacing:0 tailSpacing:0];
    [arrs mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(0);
    }];
