//
//  LocationManager.swift
//  UberClone
//
//  Created by Tharanga on 2024-10-19.
//

import CoreLocation

class LocationManager: NSObject,ObservableObject{
    private let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
        // Request a user’s location once
        //locationManager.requestLocation()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard !locations.isEmpty else { return }
        locationManager.stopUpdatingLocation()
    }
}
