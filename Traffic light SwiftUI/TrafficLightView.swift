//
//  TrafficLightView.swift
//  Traffic light SwiftUI
//
//  Created by Кирилл on 12.05.2022.
//

import SwiftUI

struct TrafficLightView: View {
    
    @State private var counter = 0
        
        var body: some View {
               
            ZStack {
                Color(.gray)
                    .ignoresSafeArea()
                VStack {
                    Color(.red)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .opacity(counter == 1 ? 1 : 0.3)
                        .padding(10)
                    Color(.yellow)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .opacity(counter == 2 ? 1 : 0.3)
                        .padding(10)
                    Color(.green)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .opacity(counter == 3 ? 1 : 0.3)
                        .padding(10)
                    Spacer()
                    Button(action: tapNext) {
                        Text("NEXT")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color.blue))
                    }
                }
                .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
            }
        }
        private func tapNext() {
            counter += 1
            if counter == 4 {
                counter = 1
            }
        }
    }

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
