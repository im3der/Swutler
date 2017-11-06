//
//  MKPolygon+Helper.swift
//  AbelKit
//
//  Created by Steve Stomp on 29/10/2017.
//

import UIKit
import MapKit

extension MKPolygon {
    
    public func contains(coordinate: CLLocationCoordinate2D) -> Bool {
        
        var inside = false
        
        let polygonRenderer = MKPolygonRenderer(polygon: self)
        let currentMapPoint: MKMapPoint = MKMapPointForCoordinate(coordinate)
        let polygonViewPoint: CGPoint = polygonRenderer.point(for: currentMapPoint)
        
        if polygonRenderer.path.contains(polygonViewPoint) {
            inside = true
        }
        
        return inside
    }
}

