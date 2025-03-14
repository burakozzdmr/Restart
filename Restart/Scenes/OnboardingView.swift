//
//  OnboardingView.swift
//  Restart
//
//  Created by Burak Özdemir on 12.03.2025.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    @State private var isOnboardingViewActive: Bool = false
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                // MARK: - HEADER
                
                VStack(spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60, weight: .heavy))
                        .foregroundStyle(.white)
                    Text("""
                        It's not how much we give but
                        how much love we put into giving
                        """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .italic()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                } //: HEADER
                
                
                // MARK: - CENTER
                
                ZStack {
                    Circle()
                        .stroke(Color.white.opacity(0.4), lineWidth: 40)
                        .frame(width: 260, height: 260, alignment: .center)
                    Circle()
                        .stroke(Color.white.opacity(0.4), lineWidth: 80)
                        .frame(width: 260, height: 260, alignment: .center)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }//: CENTER ZSTACK
                
                // MARK: - FOOTER
                
                ZStack {
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .offset(x: 20)
                        
                    
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        Spacer()
                    }
                    
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 25, weight: .black))
                                .foregroundStyle(.white)
                        } //: ZSTACK
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }
                        Spacer()
                    } //: HSTACK
                } //: FOOTER
                .frame(height: 80, alignment: .center)
                .padding()
            } //: VSTACK
        } //: ZSTACK
    }
}

#Preview {
    OnboardingView()
}
