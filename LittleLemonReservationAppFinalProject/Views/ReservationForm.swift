//
//  ReservationForm.swift
//  LittleLemonReservationAppFinalProject
//
//  Created by Alex Tran on 8/9/23.
//

import SwiftUI

struct ReservationForm: View {
  var restaurant:RestaurantLocation
  @Binding var reservation:Reservation
  
  var body: some View {
    Form {
      Section("Contact Info") {
        TextField("Fullname", text: $reservation.customerName)
        TextField("Email", text: $reservation.customerEmail)
        TextField("Phone Number", text: $reservation.customerPhoneNumber)
      }
      Section("Reservation details") {
        DatePicker("Please select a date", selection: $reservation.reservationDate)
          .datePickerStyle(.graphical)
        Stepper("Party size: \(reservation.party)", value: $reservation.party)
      }
      Section("Special Request") {
        TextField("additonal info", text: $reservation.specialRequests)
      }
    }.navigationTitle("Resevation Form")
      .navigationBarTitleDisplayMode(.large)
      .onDisappear {
        reservation.restaurant = restaurant
      }
  }
}

struct ReservationForm_Previews: PreviewProvider {
  static var previews: some View {
    ReservationForm(restaurant: RestaurantLocation(),reservation: .constant(Reservation()))
  }
}
