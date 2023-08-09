//
//  RestaurantLocation.swift
//  LittleLemonReservationAppFinalProject
//
//  Created by Alex Tran on 8/8/23.
//

import Foundation

struct RestaurantLocation:Hashable {
  let city:String
  let neighborhood:String
  let phoneNumber:String
  
  init(city:String = "",
       neighborhood:String = "",
       phoneNumber:String = "") {
    self.city = city
    self.neighborhood = neighborhood
    self.phoneNumber = phoneNumber
  }
}

