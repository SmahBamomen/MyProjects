//
//  ImageLoading.swift
//  Profile
//
//  Created by samah on 28/01/1444 AH.
//

import SwiftUI

struct ImageLoading: View {
    let imageURL : String
    let imageWidth : Double
    let imageHeight : Double
    var body: some View {
        AsyncImage(url: URL(string: imageURL), transaction: .init(animation: .spring(response: 1.6))) { phase in
                   switch phase {
                   case .empty:
                       ProgressView()
                           .progressViewStyle(.circular)
                   case .success(let image):
                       image
                           .resizable().frame(width: imageWidth, height: imageHeight)
                           .aspectRatio(contentMode: .fit).background(RoundedRectangle(cornerRadius: 4.0))
                           .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                   case .failure:
                       Text("Failed fetching image. Make sure to check your data connection and try again.")
                           .foregroundColor(.red)
                   @unknown default:
                       Text("Unknown error. Please try again.")
                           .foregroundColor(.red)
                   }
               }
    }
}

