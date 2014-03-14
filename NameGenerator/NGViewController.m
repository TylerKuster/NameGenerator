//
//  NGViewController.m
//  NameGenerator
//
//  Created by Tyler Kuster on 3/13/14.
//  Copyright (c) 2014 TylerKuster. All rights reserved.
//

#import "NGViewController.h"

@interface NGViewController ()

@property (nonatomic) iCarousel* carousel;
@property (nonatomic) UIView* test;

@end

@implementation NGViewController
//----------------------------------------------------------------------------
#pragma mark - Init
//----------------------------------------------------------------------------
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setUp];
}
//----------------------------------------------------------------------------
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
//----------------------------------------------------------------------------
- (void)setUp
{
    _carousel = [[iCarousel alloc] initWithFrame: [[self view] bounds]];
    [_carousel setDelegate:self];
    [_carousel setDataSource:self];
    [_carousel setBounceDistance:0.075f];
    [_carousel setDecelerationRate:0.5f];
    [_carousel setType:iCarouselTypeLinear];
    [_carousel setVertical:YES];
    
    [[self view] addSubview:_carousel];
}
//----------------------------------------------------------------------------
#pragma mark - iCarousel Delegate Methods
//----------------------------------------------------------------------------
- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    //return the total number of items in the carousel
    return 3;
}
//----------------------------------------------------------------------------
- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view
{
    _test = [[UIView alloc] initWithFrame: [[self view] bounds]];
    
    int intIndex = (int)index;
    intIndex++;
    
    switch (index)
    {
        case 0:
        {
            [_test setBackgroundColor: [UIColor blackColor]];
            break;
        }
        case 1:
        {
            [_test setBackgroundColor: [UIColor redColor]];
            break;
        }
        case 2:
        {
            [_test setBackgroundColor: [UIColor purpleColor]];
            break;
        }
        default:
            break;
    }
    return _test;
}
//----------------------------------------------------------------------------
- (void)carouselCurrentItemIndexDidChange:(iCarousel *)carouselA
{
    switch ((int)[_carousel currentItemIndex])
    {
        case 0:
        {
            break;
        }
        case 1:
        {
            break;
        }
        case 2:
        {
            break;
        }
        default:
            break;
    }
}
//----------------------------------------------------------------------------
- (CGFloat)carousel:(iCarousel *)carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value
{
    if (option == iCarouselOptionSpacing)
    {
        return value * 1.0f;
    }
    return value;
}
//----------------------------------------------------------------------------
@end
