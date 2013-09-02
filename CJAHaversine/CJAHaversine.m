//
//  CJAHaversine.m
//  CJAHaversine
//
//  Created by Carl Jahn on 02.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "CJAHaversine.h"

double const kHaversineDistanceError = -1;

double const kRadPerDegress       = 0.0174532925199433; // (M_PI / 180.0)

double const kEarthRadius         = 6371.0; // Earht Radius in Kilometers
double const kRadiusInMiles       = 3956.0; // Earht Radius in Miles

double const kMetersPerKilometers = 1000.0; // 1 Kilometer = 1000 Meters
double const kFeetsPerMiles       = 5282.0; // 1 Mile      = 5282 Feets


BOOL CJAHaversineLocationIsValid( double lat, double lon) {

  if (lat > 90 || lat < -90 ) {
    return NO;
  }
    
  if (lon > 180 || lon < -180 ) {
    return NO;
  }
  
  return YES;
}

double CJAHaversineDistanceBetweenLocations( double lat1, double lon1, double lat2, double lon2 ) {
  
  if ( !CJAHaversineLocationIsValid( lat1, lon1 ) || !CJAHaversineLocationIsValid( lat2, lon2 ) ) {

    return kHaversineDistanceError;
  }
  
  double nDLat = (lat2 - lat1) * kRadPerDegress;
  double nDLon = (lon2 - lon1) * kRadPerDegress;
  double nA = pow ( sin(nDLat/2), 2 ) + cos(lat1 * kRadPerDegress) * cos(lat2 * kRadPerDegress) * pow ( sin(nDLon/2), 2 );
  
  return 2 * atan2( sqrt(nA), sqrt( 1 - nA ) );
}

double CJAHaversineKilometersBetweenLocations ( double lat1, double lon1, double lat2, double lon2 ) {
  
  double distance = CJAHaversineDistanceBetweenLocations(lat1, lon1, lat2, lon2) ;
  
  if ( distance < 0 ) {
    return kHaversineDistanceError;
  }
  
  return distance * kEarthRadius;
}

double CJAHaversineMetersBetweenLocations ( double lat1, double lon1, double lat2, double lon2 ) {
  
  double distance = CJAHaversineKilometersBetweenLocations(lat1, lon1, lat2, lon2) ;
  
  if ( distance < 0 ) {
    return kHaversineDistanceError;
  }
  
  return distance * kMetersPerKilometers;
}

double CJAHaversineMilesBetweenLocations ( double lat1, double lon1, double lat2, double lon2 ) {

  double distance = CJAHaversineDistanceBetweenLocations(lat1, lon1, lat2, lon2) ;
  
  if ( distance < 0 ) {
    return kHaversineDistanceError;
  }
  
  return distance * kRadiusInMiles;
}

double CJAHaversineFeetsBetweenLocations ( double lat1, double lon1, double lat2, double lon2 ) {
  
  double distance = CJAHaversineMilesBetweenLocations(lat1, lon1, lat2, lon2) ;
  
  if ( distance < 0 ) {
    return kHaversineDistanceError;
  }
  
  return distance * kFeetsPerMiles;
}



#ifdef __CORELOCATION__

double CJAHaversineDistanceBetweenCLLocations(CLLocationCoordinate2D first, CLLocationCoordinate2D second) {
  
  double distance = CJAHaversineDistanceBetweenLocations(first.latitude, first.longitude, second.latitude, second.longitude);
  
  if ( distance < 0 ) {
    return kHaversineDistanceError;
  }
  
  return distance;
}

double CJAHaversineKilometersBetweenCLLocations(CLLocationCoordinate2D first, CLLocationCoordinate2D second) {
  
  double distance = CJAHaversineDistanceBetweenCLLocations(first, second);
  
  if ( distance < 0 ) {
    return kHaversineDistanceError;
  }
  
  return distance * kEarthRadius;
}

double CJAHaversineMetersBetweenCLLocations(CLLocationCoordinate2D first, CLLocationCoordinate2D second) {
  
  double distance = CJAHaversineKilometersBetweenCLLocations(first, second);
  
  if ( distance < 0 ) {
    return kHaversineDistanceError;
  }
  
  return distance * kMetersPerKilometers;
}

double CJAHaversineMilesBetweenCLLocations(CLLocationCoordinate2D first, CLLocationCoordinate2D second) {
  
  double distance = CJAHaversineDistanceBetweenCLLocations(first, second);
  
  if ( distance < 0 ) {
    return kHaversineDistanceError;
  }
  
  return distance * kRadiusInMiles;
}

double CJAHaversineFeetsBetweenCLLocations(CLLocationCoordinate2D first, CLLocationCoordinate2D second) {
  
  double distance = CJAHaversineMilesBetweenCLLocations(first, second);
  
  if ( distance < 0 ) {
    return kHaversineDistanceError;
  }
  
  return distance * kFeetsPerMiles;
}

#endif