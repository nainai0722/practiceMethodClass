//
//  originalTableView.m
//  practiceMethodClass
//
//  Created by apple on 2018/05/29.
//  Copyright © 2018年 com.nainai0722. All rights reserved.
//

#import "originalTableView.h"

@implementation originalTableView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* CellIdentifier = @"Cell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    /*
     //storyboadでひもづけしてないときに自己生成でリユースにひもづける
     UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
     if(!cell){
     cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
     }*/
    cell.textLabel.text = @"test";
    cell.clipsToBounds = YES;//frameサイズ外を描画しない
    return cell;
}
@end
