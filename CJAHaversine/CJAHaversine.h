//
//  CJAHaversine.h
//  CJAHaversine
//
//  Created by Carl Jahn on 02.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

extern double const kHaversineDistanceError;

/**
 Check if a given latitude and longitude are valid
 
 @param lat Latitude in decimal degrees,  e.g. 37.30925
 @param lon Longitude in decimal degrees, e.g. -122.0436444
 
 @return <code>YES</code> if the latitude and longitude are valid; otherwise, <code>NO</code>.
*/
extern BOOL CJAHaversineLocationIsValid(double lat, double lon);


/**
 Calculates the distance between the two locations 

 @param lat1 Latitude in decimal degrees,  e.g. 37.30925
 @param lon1 Longitude in decimal degrees, e.g. -122.0436444

 @param lat2 Latitude in decimal degrees,  e.g. 37.429167
 @param lon2 Longitude in decimal degrees, e.g. -122.138056
 
 @return returns the distance between the two locations; otherwise <code>-1</code>
*/
extern double CJAHaversineDistanceBetweenLocations(double lat1, double lon1, double lat2, double lon2);

/**
 Calculates the distance between the two locations
 
 @param lat1 Latitude in decimal degrees,  e.g. 37.30925
 @param lon1 Longitude in decimal degrees, e.g. -122.0436444
 
 @param lat2 Latitude in decimal degrees,  e.g. 37.429167
 @param lon2 Longitude in decimal degrees, e.g. -122.138056
 
 @return returns the distance between the two locations in meters; otherwise <code>-1</code>
*/
extern double CJAHaversineMetersBetweenLocations(double lat1, double lon1, double lat2, double lon2);

/**
 Calculates the distance between the two locations
 
 @param lat1 Latitude in decimal degrees,  e.g. 37.30925
 @param lon1 Longitude in decimal degrees, e.g. -122.0436444
 
 @param lat2 Latitude in decimal degrees,  e.g. 37.429167
 @param lon2 Longitude in decimal degrees, e.g. -122.138056
 
 @return returns the distance between the two locations in kilometers; otherwise <code>-1</code>
*/
extern double CJAHaversineKilometersBetweenLocations(double lat1, double lon1, double lat2, double lon2);

/**
 Calculates the distance between the two locations
 
 @param lat1 Latitude in decimal degrees,  e.g. 37.30925
 @param lon1 Longitude in decimal degrees, e.g. -122.0436444
 
 @param lat2 Latitude in decimal degrees,  e.g. 37.429167
 @param lon2 Longitude in decimal degrees, e.g. -122.138056
 
 @return returns the distance between the two locations in feets; otherwise <code>-1</code>
*/
extern double CJAHaversineFeetsBetweenLocations(double lat1, double lon1, double lat2, double lon2);

/**
 Calculates the distance between the two locations
 
 @param lat1 Latitude in decimal degrees,  e.g. 37.30925
 @param lon1 Longitude in decimal degrees, e.g. -122.0436444
 
 @param lat2 Latitude in decimal degrees,  e.g. 37.429167
 @param lon2 Longitude in decimal degrees, e.g. -122.138056
 
 @return returns the distance between the two locations in miles; otherwise <code>-1</code>
*/
extern double CJAHaversineMilesBetweenLocations(double lat1, double lon1, double lat2, double lon2);


#ifdef __CORELOCATION__

/**
 Calculates the distance between the two locations
 
 @param first First CLLocation, e.g. (CLLocationCoordinate2D){37.30925, -122.0436444}
 @param second Second CLLocation, e.g. (CLLocationCoordinate2D){37.30925, -122.0436444}
 
 @return returns the distance between the two locations; otherwise <code>-1</code>
*/
extern double CJAHaversineDistanceBetweenCLLocations(CLLocationCoordinate2D first, CLLocationCoordinate2D second);


/**
 Calculates the distance between the two locations
 
 @param first First CLLocation, e.g. (CLLocationCoordinate2D){37.30925, -122.0436444}
 @param second Second CLLocation, e.g. (CLLocationCoordinate2D){37.30925, -122.0436444}
 
 @return returns the distance between the two locations in kilometers; otherwise <code>-1</code>
*/
extern double CJAHaversineKilometersBetweenCLLocations(CLLocationCoordinate2D first, CLLocationCoordinate2D second);

/**
 Calculates the distance between the two locations
 
 @param first First CLLocation, e.g. (CLLocationCoordinate2D){37.30925, -122.0436444}
 @param second Second CLLocation, e.g. (CLLocationCoordinate2D){37.30925, -122.0436444}
 
 @return returns the distance between the two locations in meters; otherwise <code>-1</code>
*/
extern double CJAHaversineMetersBetweenCLLocations(CLLocationCoordinate2D first, CLLocationCoordinate2D second);


/**
 Calculates the distance between the two locations
 
 @param first First CLLocation, e.g. (CLLocationCoordinate2D){37.30925, -122.0436444}
 @param second Second CLLocation, e.g. (CLLocationCoordinate2D){37.30925, -122.0436444}
 
 @return returns the distance between the two locations in miles; otherwise <code>-1</code>
*/
extern double CJAHaversineMilesBetweenCLLocations(CLLocationCoordinate2D first, CLLocationCoordinate2D second);

/**
 Calculates the distance between the two locations
 
 @param first First CLLocation, e.g. (CLLocationCoordinate2D){37.30925, -122.0436444}
 @param second Second CLLocation, e.g. (CLLocationCoordinate2D){37.30925, -122.0436444}
 
 @return returns the distance between the two locations in feet; otherwise <code>-1</code>
*/
extern double CJAHaversineFeetsBetweenCLLocations(CLLocationCoordinate2D first, CLLocationCoordinate2D second);

#endif