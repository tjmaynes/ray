//
//  Location.swift
//  TodoApp
//
//  Created by TJ Maynes on 10/23/16.
//  Copyright © 2016 TJ Maynes. All rights reserved.
//

import CoreLocation

struct Location: Equatable {
  let name: String
  let coordinate: CLLocationCoordinate2D?

  init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
    self.name = name
    self.coordinate = coordinate
  }
}

func == (lhs: Location, rhs: Location) -> Bool {
  if lhs.coordinate?.longitude != rhs.coordinate?.longitude {
    return false
  }

  if lhs.coordinate?.latitude != rhs.coordinate?.latitude {
    return false
  }

  if lhs.name != rhs.name {
    return false
  }

  return true
}
