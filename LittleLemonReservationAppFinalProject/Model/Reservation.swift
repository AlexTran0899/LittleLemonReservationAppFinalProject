//
//  Reservation.swift
//  LittleLemonReservationAppFinalProject
//
//  Created by Alex Tran on 8/8/23.
//

import Foundation

struct Reservation {
  var id = UUID()
  var restaurant:RestaurantLocation
  var customerName:String
  var customerEmail:String
  var customerPhoneNumber:String
  var reservationDate:Date
  var party:Int
  var specialRequests:String
  
  init(restaurant:RestaurantLocation = RestaurantLocation(),
       customerName: String = "",
       customerEmail: String = "",
       customerPhoneNumber: String = "",
       reservationDate:Date = Date(),
       party:Int = 1,
       specialRequests:String = "") {
    self.restaurant = restaurant
    self.customerName = customerName
    self.customerEmail = customerEmail
    self.customerPhoneNumber = customerPhoneNumber
    self.reservationDate = reservationDate
    self.party = party
    self.specialRequests = specialRequests
  }
}
