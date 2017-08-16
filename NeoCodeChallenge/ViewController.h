//
//  ViewController.h
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 10/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Forecast.h"
#import "MainInfo.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *cityName;
@property (weak, nonatomic) IBOutlet UILabel *Temperature;
@property (weak, nonatomic) IBOutlet UILabel *mainDescription;
@property (strong,nonatomic)Forecast *forecastResponse;


@end

