//
//  ViewController.swift
//  Train App
//
//  Created by Hazel Dodds on 2/4/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
   
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.98, green: 0.95, blue: 0.90, alpha: 1.00)
           
            // Ask for Authorisation from the User.
        self.locationManager.requestAlwaysAuthorization()

        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()

        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
        mapView.showsUserLocation = true
        mapView.setUserTrackingMode(MKUserTrackingMode.follow, animated: true)
		mapView.delegate = self
//intersctions
		let centralIntersection = TrainTrackIntersection(title: "Central", locationName: "In front of GCHS", coordinate: CLLocationCoordinate2D(latitude: 42.351213, longitude: -88.043750))
		let downtownIntersection = TrainTrackIntersection(title: "Downtown", locationName: "In downtown Grayslake", coordinate: CLLocationCoordinate2D (latitude: 42.344323, longitude: -88.038340))
//adds annotations to map then apllies IntersectionMarkerView to them
mapView.addAnnotation(centralIntersection)
mapView.addAnnotation(downtownIntersection)
        mapView.register(
          IntersectionMarkerView.self,
          forAnnotationViewWithReuseIdentifier:
            MKMapViewDefaultAnnotationViewReuseIdentifier)

	}
    //gets users location & zooms in then prints it
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        print("locations = \(locValue.latitude) \(locValue.longitude)")
    }
    
    
}

    
