//
//  LocationFetcherView.swift
//  ShoppingCalc
//
//  Created by Alexis Diaz on 2/21/22.
//
import CoreLocation
import SwiftUI

struct LocationFetcherView: View {
    
    let locationFetcher = LocationFetcher()
    
    var body: some View {
        VStack {
            Button("Start Tracking Location") {
                self.locationFetcher.start()
            }
            
            Button("Read Location") {
                if let location = self.locationFetcher.lastKnownLocation {
                    print("Your location is \(location)")
                } else {
                    print("Your location is unknown")
                }
            }
        }
    }
}

struct LocationFetcherView_Previews: PreviewProvider {
    static var previews: some View {
        LocationFetcherView()
    }
}
