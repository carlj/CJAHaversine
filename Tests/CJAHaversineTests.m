//
//  CJAHaversineTests.m
//  CJAHaversineTests
//
//  Created by Carl Jahn on 02.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "CJAHaversineTests.h"
#import <CoreLocation/CoreLocation.h>
#import "CJAHaversine.h"

// Cupertino - Infinity Loop
double const lat1 = 37.30925;
double const lon1 = -122.0436444;

// Palo Alto
double const lat2 = 37.429167;
double const lon2 = -122.138056;

CLLocationCoordinate2D const first = (CLLocationCoordinate2D){lat1, lon1};
CLLocationCoordinate2D const second = (CLLocationCoordinate2D){lat2, lon2};

@implementation CJAHaversineTests

- (void)testLocationValidation {
  
  BOOL validLocation = NO;
  
  //Test valid location
  validLocation = CJAHaversineLocationIsValid(lat1, lon1);
  STAssertTrue(validLocation, @"Given location isnt valid");

  validLocation = CJAHaversineLocationIsValid(lat2, lon2);
  STAssertTrue(validLocation, @"Given location isnt valid");

  //Test invalid locations
  validLocation = CJAHaversineLocationIsValid(100, lon1);
  STAssertFalse(validLocation, @"Given location is valid");
  
  validLocation = CJAHaversineLocationIsValid(-100, lon1);
  STAssertFalse(validLocation, @"Given location is valid");

  validLocation = CJAHaversineLocationIsValid(lat1, -190);
  STAssertFalse(validLocation, @"Given location is valid");
  
  validLocation = CJAHaversineLocationIsValid(lat1, 190);
  STAssertFalse(validLocation, @"Given location is valid");
  
  validLocation = CJAHaversineLocationIsValid(-100, -190);
  STAssertFalse(validLocation, @"Given location is valid");
  
  validLocation = CJAHaversineLocationIsValid(100, 190);
  STAssertFalse(validLocation, @"Given location is valid");
}



- (void)testLocationDistanceInMetricSystem {
  double distance = kHaversineDistanceError;
  
  distance = CJAHaversineKilometersBetweenLocations(lat1, lon1, lat2, lon2);
  STAssertEqualsWithAccuracy(distance, 15.72, 0.1, @"Failed to calculate distance in kilometers");
  
  distance = CJAHaversineMetersBetweenLocations(lat1, lon1, lat2, lon2);
  STAssertEqualsWithAccuracy(distance, 15729.0, 1.0, @"Failed to calculate distance in meters");
}

- (void)testLocationDistanceInImperialSystem {
  double distance = kHaversineDistanceError;

  distance = CJAHaversineMilesBetweenLocations(lat1, lon1, lat2, lon2);
  STAssertEqualsWithAccuracy(distance, 9.76, 0.1, @"Failed to calculate distance in miles");
  
  distance = CJAHaversineFeetsBetweenLocations(lat1, lon1, lat2, lon2);
  STAssertEqualsWithAccuracy(distance, 51588.0, 1.0, @"Failed to calculate distance in feets");
}

- (void)testLocationDistanceWithCoreLocationsInMetricSystem {

  double distance = kHaversineDistanceError;

  distance = CJAHaversineKilometersBetweenCLLocations(first, second);
  STAssertEqualsWithAccuracy(distance, 15.72, 0.1, @"Failed to calculate distance in miles");
  
  distance = CJAHaversineMetersBetweenCLLocations(first, second);
  STAssertEqualsWithAccuracy(distance, 15729.0, 1.0, @"Failed to calculate distance in feets");
}

- (void)testLocationDistanceWithCoreLocationsInImperialSystem {
  double distance = kHaversineDistanceError;
    
  distance = CJAHaversineMilesBetweenCLLocations(first, second);
  STAssertEqualsWithAccuracy(distance, 9.76, 0.1, @"Failed to calculate distance in miles");
  
  distance = CJAHaversineFeetsBetweenCLLocations(first, second);
  STAssertEqualsWithAccuracy(distance, 51588.0, 1.0, @"Failed to calculate distance in feets");
}

- (void)testNotValidLocationCalculation {
  double distance = kHaversineDistanceError;
  
  distance = CJAHaversineKilometersBetweenLocations(-100, lon1, lat2, lon2);
  STAssertEqualsWithAccuracy(distance, kHaversineDistanceError, 0.1, @"Failed to calculate distance in kilometers");
  
  distance = CJAHaversineMetersBetweenLocations(-100, lon1, lat2, lon2);
  STAssertEqualsWithAccuracy(distance, kHaversineDistanceError, 1.0, @"Failed to calculate distance in meters");
  
  distance = CJAHaversineMilesBetweenLocations(-100, lon1, lat2, lon2);
  STAssertEqualsWithAccuracy(distance, kHaversineDistanceError, 0.1, @"Failed to calculate distance in miles");
  
  distance = CJAHaversineFeetsBetweenLocations(-100, lon1, lat2, lon2);
  STAssertEqualsWithAccuracy(distance, kHaversineDistanceError, 1.0, @"Failed to calculate distance in feets");
  
  
  distance = CJAHaversineKilometersBetweenLocations(-100, lon1, lat2, lon2);
  STAssertEqualsWithAccuracy(distance, kHaversineDistanceError, 0.1, @"Failed to calculate distance in kilometers");
             
  distance = CJAHaversineMetersBetweenLocations(-100, lon1, lat2, lon2);
  STAssertEqualsWithAccuracy(distance, kHaversineDistanceError, 1.0, @"Failed to calculate distance in meters");

  CLLocationCoordinate2D f1 = (CLLocationCoordinate2D){-100, lon1};
  distance = CJAHaversineMilesBetweenCLLocations(f1, second);
  STAssertEqualsWithAccuracy(distance, kHaversineDistanceError, 0.1, @"Failed to calculate distance in miles");
  
  distance = CJAHaversineFeetsBetweenCLLocations(f1, second);
  STAssertEqualsWithAccuracy(distance, kHaversineDistanceError, 1.0, @"Failed to calculate distance in feets");

  distance = CJAHaversineKilometersBetweenCLLocations(f1, second);
  STAssertEqualsWithAccuracy(distance, kHaversineDistanceError, 0.1, @"Failed to calculate distance in kilometers");
  
  distance = CJAHaversineMetersBetweenCLLocations(f1, second);
  STAssertEqualsWithAccuracy(distance, kHaversineDistanceError, 1.0, @"Failed to calculate distance in meters");

}

@end
