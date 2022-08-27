//
//  ProfileView.swift
//  Profile
//
//  Created by samah on 28/01/1444 AH.
//

import SwiftUI

struct ProfileView: View {
    @Binding var showProfile:Bool
    
    
    @ObservedObject  var profileData = FirebaseManager()
    var body: some View {
        VStack{
            Spacer()
            Image("memoji").resizable().frame(width: 200, height: 230)
            Text(profileData.aboutMe ).font(.footnote)
                .fontWeight(.medium)
                .padding([.leading, .bottom, .trailing])
         
           Spacer()
            HStack{
           
                Link(destination: URL(string: "https://github.com/SmahBamomen")!) {
                    Image("GitHub_Logo").resizable().frame(width: 80, height: 40)
                }
             
              Text("|")
                Button(action: {
                    let phone = "tel://"
                    let phoneNumberformatted = phone + profileData.phoneNum
                    guard let url = URL(string: phoneNumberformatted) else { return }
                    UIApplication.shared.open(url)
                   }) {
                    Image(systemName: "phone")
                   
                }
                Text("|")
                Button(action: {
                    let url = URL(string: "message://")
                       if let url = url {
                           if UIApplication.shared.canOpenURL(url) {
                               UIApplication.shared.open(url, options: [:], completionHandler: nil)
                           }
                       }

                        }) {
                            Image(systemName: "square.and.pencil")
                        }
               
            
                }
              
            }
      
            
            
        }
    }

