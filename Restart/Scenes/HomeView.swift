//
//  HomeView.swift
//  Restart
//
//  Created by Burak Özdemir on 12.03.2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 16) {
            Spacer()
                ZStack {
                    Circle()
                        .stroke(Color.gray.opacity(0.1), lineWidth: 40)
                        
                    Circle()
                        .stroke(Color.gray.opacity(0.1), lineWidth: 80)
                        
                    Image("character-2")
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: 320, alignment: .center)
                .padding()
                Text("The time that leads to mastery is dependent on the intensity of our focus.")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.black)
            } //: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        } //: VSTACK
    }
}

#Preview {
    HomeView()
}
