//
//  ViewController.m
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 10/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "ViewController.h"
#import "ForecastApiManager.h"
#import "Forecast.h"
#import "Weather.h"
#import "City.h"
#import "MainInfo.h"
#import "Coord.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
     [[ForecastApiManager sharedManager]fetchForecast:^(id response) {
  
    self.forecastResponse = response;
    Weather *weather = self.forecastResponse.weatherForecast[0];
         
    NSLog(@"%@",response);
         
         self.cityName.text = _forecastResponse.cityName;
         self.mainDescription.text = weather.mainDescription;
         
         NSNumber  *celsius = @([_forecastResponse.mainInfo.temp integerValue] - 273.);
         
         self.Temperature.text = [NSString stringWithFormat:@"%@\u00B0C", celsius];
         
     } failure:^(NSString *errorMsg) {
        
     }];


}




@end
