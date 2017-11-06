//
//  MKMapRect+Helper.swift
//  AbelKit
//
//  Created by Steve Stomp on 30/10/2017.
//

import MapKit

extension MKMapRect {
    public init(coordinates: [CLLocationCoordinate2D]) {
        self = coordinates.map({ MKMapPointForCoordinate($0) }).map({ MKMapRect(origin: $0, size: MKMapSize(width: 0, height: 0)) }).reduce(MKMapRectNull, MKMapRectUnion)
    }
}
