#CJAHaversine
Calculate the distance betweens two GPS coordinates with the [Haversine Formular](http://en.wikipedia.org/wiki/Haversine_formula).  
  
As of iOS 7 release, you can use the [MKDistanceFormatter](https://developer.apple.com/library/ios/documentation/MapKit/Reference/MKDistanceFormatter_class/Reference/Reference.html) Class to calculate the distance between two locations.

[![Build Status](https://travis-ci.org/carlj/CJAHaversine.png?branch=master)](https://travis-ci.org/carlj/CJAHaversine)
[![Coverage Status](https://coveralls.io/repos/carlj/CJAHaversine/badge.png?branch=master)](https://coveralls.io/r/carlj/CJAHaversine?branch=master)

##Installation
* Drag & Drop `CJAHaversine.h` and `CJAHaversine.m` to your project

If you want to use the `CLLocationCoordinate2D` functions:
* Add the `CoreLocation` framework to your target
* Import `<CoreLocation/CoreLocation.h>` to your targets `...-Prefix.pch` file

##Usage
calculate the distance in the imperial system:
``` objc
//Calculate the distance between two location in kilometers
distance = CJAHaversineMilesBetweenLocations(lat1, lon1, lat2, lon2);

//Calculate the distance between two location in meters
distance = CJAHaversineFeetsBetweenLocations(lat1, lon1, lat2, lon2);
```

calculate the distance in the metric system:
``` objc
//Calculate the distance between two location in kilometers
distance = CJAHaversineKilometersBetweenLocations(lat1, lon1, lat2, lon2);

//Calculate the distance between two location in meters
distance = CJAHaversineMetersBetweenLocations(lat1, lon1, lat2, lon2);
```

You can also use the `CLLocationCoordinate2D` struct from the `CoreLocation` framework:
``` objc
//Calculate the distance between two `CLLocationCoordinate2D` in miles
distance = CJAHaversineMilesBetweenCLLocations(first, second);

//Calculate the distance between two `CLLocationCoordinate2D` in feets
distance = CJAHaversineFeetsBetweenCLLocations(first, second);

//Calculate the distance between two `CLLocationCoordinate2D` in kilometers
distance = CJAHaversineKilometersBetweenCLLocations(first, second);

//Calculate the distance between two `CLLocationCoordinate2D` in meters
distance = CJAHaversineMetersBetweenCLLocations(first, second);
```

##License
Released under the [MIT license](LICENSE).
