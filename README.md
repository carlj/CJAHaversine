#CJAHaversine
Calculate the distance betweens two GPS coordinates with the [Haversine Formular](http://en.wikipedia.org/wiki/Haversine_formula)

##Installation
* Drag & Drop `CJAHaversine.h` and `CJAHaversine.h` to your project

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

You can also use the CLLocationCoordinate2D struct from the CoreLocation framework:
``` objc
//Calculate the distance between two CLLocationCoordinate2D in kilometers
distance = CJAHaversineMilesBetweenCLLocations(first, second);

//Calculate the distance between two CLLocationCoordinate2D in kilometers
distance = CJAHaversineFeetsBetweenCLLocations(first, second);

//Calculate the distance between two CLLocationCoordinate2D in kilometers
distance = CJAHaversineKilometersBetweenLocations(lat1, lon1, lat2, lon2);

//Calculate the distance between two CLLocationCoordinate2D in kilometers
distance = CJAHaversineMetersBetweenLocations(lat1, lon1, lat2, lon2);
```

##Docs

##License
Released under the [MIT license](LICENSE).