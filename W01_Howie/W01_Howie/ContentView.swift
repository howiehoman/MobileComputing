//
//  ContentView.swift
//  W01_Howie
//
//  Created by student on 11/09/25.
//

import SwiftUI

struct Student {
    var name: String
    var year: Int
    func display() -> String {
        "\(name), \(year)"
    }
}

enum Userstatus {case offline, online, busy}

struct ContentView: View {
    let userName = "Howie"
    let scores = [69,99,100]
    let student = Student(name: "Howie Homan", year: 2)
    let status: Userstatus = .online
    
    var badge: String{
        scores.allSatisfy{ $0 >= 65} ? "✅" : "❌"
    }
    
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, \(userName)!")
                .font(.largeTitle)
            
            Text("Student: \(student.display())")
            
            Text("Status: \(status == .online ? "🟢 Online" : "❌ Offline")")
            
            Text("Scores: \(badge)")
        }
        
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.gray.opacity(0.2), .gray.opacity(0.4)]),
                               startPoint: .top,
                               endPoint: .bottom)
                    .ignoresSafeArea()

                VStack(spacing: 24) {
                    Image("Photo on 11-09-25 at 13.24")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white.opacity(0.8), lineWidth: 4)
                        )
                        .shadow(radius: 10)

                    VStack(spacing: 8) {
                        Text("Hi, I'm Howie!")
                            .font(.title)
                            .fontWeight(.semibold)

                        Text("20 years old")
                            .font(.body)
                            .foregroundColor(.secondary)

                        Text("🫨🥹😎")
                            .font(.largeTitle)
                    }
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)

                    Spacer()
                }
                .padding(.top, 60)
            }
        
//            HStack {
//                Text("🌏")
//                    .font(.system(size: 80))
//                Text("🌍")
//                    .font(.system(size: 80))
//                Text("🌎")
//                    .font(.system(size: 80))
//            }//            HStack {
//                Text("🌏")
//                    .font(.system(size: 80))
//                Text("🌍")
//                    .font(.system(size: 80))
//                Text("🌎")
//                    .font(.system(size: 80))
//            }
//            HStack {
//                Text("🌏")
//                    .font(.system(size: 80))
//                Text("🌍")
//                    .font(.system(size: 80))
//                Text("🌎")
//                    .font(.system(size: 80))
//            }
            
            
        
//            Text("Hello, world!")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .padding(.horizontal)
//            
//            Text("Declarative UI")
//                .font(.headline)
//            
//            
//            Image
//                  .foregroundStyle(.yellow)
//                .imageScale(.large)
//                .font(.system(size: 100))
//                .padding()
//                .overlay(content: {
//                    Circle().strokeBorder(.gray.opacity(0.3) ,lineWidth: 2)
//                    
//                }
//                         )
            //var angka1 <- variable
            //let angka2 <- constant
            
        }
       
    }
    //let name = "Alice"
    //var age = 20
    //func greet() {
      //  print("Hello, \(name), age\(age)")
   // }

#Preview {
    ContentView()
}
