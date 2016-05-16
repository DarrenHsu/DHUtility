//
//  CGPoint+Utility.m
//  DHUtility
//
//  Created by Dareen Hsu on 5/11/16.
//  Copyright © 2016 Dareen Hsu. All rights reserved.
//

#import "CGPoint+Utility.h"

double dist(CGPoint a, CGPoint b) {
    double dx = a.x - b.x;
    double dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy)
}