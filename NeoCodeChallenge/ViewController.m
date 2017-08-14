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
         self.Temperature.text = weather.mainDescription;
         self.weatherDescription.text = weather.weatherDescription;
//         
         
     } failure:^(NSString *errorMsg) {
        
     }];


}




@end
