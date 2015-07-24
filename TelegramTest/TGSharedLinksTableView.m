//
//  TGSharedLinksTableView.m
//  Telegram
//
//  Created by keepcoder on 24.07.15.
//  Copyright (c) 2015 keepcoder. All rights reserved.
//

#import "TGSharedLinksTableView.h"
#import "TGSharedLinkRowView.h"
#import "SharedLinksHistoryFilter.h"
#import "MessageTableItemText.h"
@implementation TGSharedLinksTableView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

-(Class)rowViewClass {
    return [TGSharedLinkRowView class];
}
-(Class)historyFilter {
    return [SharedLinksHistoryFilter class];
}

-(BOOL)acceptMessageItem:(MessageTableItem *)item {
    return [item isKindOfClass:[MessageTableItemText class]];
}

-(int)heightWithItem:(MessageTableItemText *)item {
    return item.webpage.descSize.height+30;
}

-(void)reloadWithString:(NSString *)string {
    
}

- (void)prepareItem:(MessageTableItemText *)item {
  //  [item.webpage makeSize:NSWidth(self.scrollView)-24];
}

@end
