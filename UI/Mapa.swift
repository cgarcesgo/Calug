//
//  Mapa.swift
//  UI
//
//  Created by Usuario on 15/10/15.
//  Copyright © 2015 Twelve Group. All rights reserved.
//

import Foundation

import UIKit
import GoogleMaps

class Mapa: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var camera = GMSCameraPosition.cameraWithLatitude(-33.86,
            longitude: 151.20, zoom: 6)
        var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        var marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }
}