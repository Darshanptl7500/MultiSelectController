//
//  CollectionFlowLayout.m
//  OptionSelection
//
//  Created by Darshan Patel on 7/1/15.
//  Copyright (c) 2015 Darshan Patel. All rights reserved.
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 Darshan Patel
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import "MultiSelectFlowLayout.h"

@implementation MultiSelectFlowLayout
- (NSArray *) layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *answer = [super layoutAttributesForElementsInRect:rect];
    
    for(int i = 0; i < [answer count]; ++i) {
        
        if (i==0) {
            UICollectionViewLayoutAttributes *currentLayoutAttributes = answer[i];
            CGRect frame = currentLayoutAttributes.frame;
            frame.origin.x =2;
            currentLayoutAttributes.frame = frame;
            
        }else
        {
            UICollectionViewLayoutAttributes *currentLayoutAttributes = answer[i];
            UICollectionViewLayoutAttributes *prevLayoutAttributes = answer[i - 1];
            NSInteger maximumSpacing = 4;
            NSInteger origin = CGRectGetMaxX(prevLayoutAttributes.frame);
            if(origin + maximumSpacing + currentLayoutAttributes.frame.size.width < self.collectionViewContentSize.width) {
                CGRect frame = currentLayoutAttributes.frame;
                frame.origin.x = origin + maximumSpacing;
                frame.origin.y = prevLayoutAttributes.frame.origin.y;
                currentLayoutAttributes.frame = frame;
            }else
            {
                CGRect frame = currentLayoutAttributes.frame;
                frame.origin.x = 2;
                currentLayoutAttributes.frame = frame;
            }
        }
        
    }
    
    
    return answer;
}
@end
