//
//  HomeView.swift
//  Restart
//
//  Created by Burak Özdemir on 12.03.2025.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - PROPERTIES
    
    @State private var isAnimating: Bool = false
    @State private var isRepeatAnimating: Bool = false
    @State private var isOnboardingViewActive: Bool = false
    
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
                        .padding()
                        .offset(y: isRepeatAnimating ? 35 : -35)
                        .animation(
                            Animation
                                .easeInOut(duration: 4)
                                .repeatForever(),
                            value: isAnimating
                        )
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
                withAnimation {
                    isOnboardingViewActive = true
                }
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
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                isAnimating = true
                isRepeatAnimating = true
            })
        })
    }
}

#Preview {
    HomeView()
}
