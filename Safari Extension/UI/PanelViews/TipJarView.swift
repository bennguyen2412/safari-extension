//
//  TipJarView.swift
//  Safari Extension
//
//  Created by tsnanh on 25/11/2023.
//

import SwiftUI

struct TipJarView: View {
  var body: some View {
    ScrollView {
      VStack {
        Image("hearts")
          .resizable()
          .frame(width: 100, height: 100)
          .padding()
        Text("If you like the project and want to support further development, I'd appreciate you consider making a donation of any amount. This would greatly help sustain this project and you can even do it more than once.")
          .multilineTextAlignment(.center)
          .lineLimit(Int.max)
          .padding(.bottom)
        Text("In return you will get my gratitude and unlock additional settings for the extension, whichever amount you choose.")
          .multilineTextAlignment(.center)
          .lineLimit(Int.max)
          .padding(.bottom)
        
        VStack {
          Button {
            
          } label: {
            Text("đ249.000 Pizza Sized Tip")
          }
          .padding(.bottom)
          Button {
            
          } label: {
            Text("đ129.000 Pie Sized Tip")
          }
          .padding(.bottom)
          Button {
            
          } label: {
            Text("đ79.000 Coffee Sized Tip")
          }
          .padding(.bottom)
          Button {
            
          } label: {
            Text("đ49.000 Coffee Sized Tip")
          }
          .padding(.bottom)
        }
        
        Spacer()
      }
      .padding(.init(top: 0, leading: 24, bottom: 0, trailing: 24))
    }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
}

#Preview {
  TipJarView()
}
