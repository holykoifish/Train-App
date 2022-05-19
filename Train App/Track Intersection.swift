//
//  Track Intersection.swift
//  Train App
//
//  Created by Hazel Dodds on 4/11/22.
//

import Foundation
import MapKit

class TrainTrackIntersection: NSObject, MKAnnotation {
  let title: String?
  let locationName: String?
  let coordinate: CLLocationCoordinate2D
    

  init(
	title: String?,
	locationName: String?,
	coordinate: CLLocationCoordinate2D
  ) {
	self.title = title
	self.locationName = locationName
	self.coordinate = coordinate
	  
	super.init()
  }

	 var subtitle: String? {
	return locationName

	}
    var image: UIImage {
        return UIImage(systemName: "tram")!
    }
    var color: UIColor {
        return UIColor(red: 0.15, green: 0.31, blue: 0.08, alpha: 1.00)
    }
}

