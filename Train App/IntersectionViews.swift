//
//  IntersectionViews.swift
//  Train App
//
//  Created by Hazel Dodds on 4/11/22.
//

import Foundation
import MapKit

class IntersectionMarkerView: MKMarkerAnnotationView {
  override var annotation: MKAnnotation? {
    willSet {
      // 1
      guard let intersection = newValue as? TrainTrackIntersection else {
        return
      }
      canShowCallout = true
      calloutOffset = CGPoint(x: -5, y: 5)
      rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        

      // 2
        markerTintColor = intersection.color
        glyphImage = intersection.image
      }
    }
  }

