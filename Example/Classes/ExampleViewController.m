//
//  ExampleViewController.m
//  CJAHaversine
//
//  Created by Carl Jahn on 02.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "ExampleViewController.h"

#import "CJAHaversine.h"

double const lat1 = 37.30925;
double const lon1 = -122.0436444;

double const lat2 = 37.429167;
double const lon2 = -122.138056;

CLLocationCoordinate2D const first = (CLLocationCoordinate2D){lat1, lon1};
CLLocationCoordinate2D const second = (CLLocationCoordinate2D){lat2, lon2};


@implementation ExampleViewController


- (void)viewDidLoad {
  [super viewDidLoad];

  self.view.backgroundColor = [UIColor whiteColor];


  double distance = kHaversineDistanceError;
  
  //Imperial Functions//

  //Calculate the distance between two location in kilometers
  distance = CJAHaversineMilesBetweenLocations(lat1, lon1, lat2, lon2);
  
  //Calculate the distance between two location in meters
  distance = CJAHaversineFeetsBetweenLocations(lat1, lon1, lat2, lon2);

  //Calculate the distance between two CLLocationCoordinate2D in kilometers
  distance = CJAHaversineMilesBetweenCLLocations(first, second);
  
  //Calculate the distance between two CLLocationCoordinate2D in kilometers
  distance = CJAHaversineFeetsBetweenCLLocations(first, second);
  
  
  //Metric Functions
  
  //Calculate the distance between two location in kilometers
  distance = CJAHaversineKilometersBetweenLocations(lat1, lon1, lat2, lon2);

  //Calculate the distance between two location in meters
  distance = CJAHaversineMetersBetweenLocations(lat1, lon1, lat2, lon2);

  //Calculate the distance between two CLLocationCoordinate2D in kilometers
  distance = CJAHaversineKilometersBetweenLocations(lat1, lon1, lat2, lon2);
  
  //Calculate the distance between two CLLocationCoordinate2D in kilometers
  distance = CJAHaversineMetersBetweenLocations(lat1, lon1, lat2, lon2);

  
  
}

@end
