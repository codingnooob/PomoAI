//
//  ContentView.swift
//  PomoAI
//
//  Created by Ty on 2024-11-12.
//

import SwiftUI
struct ContentView: View {
    @State var geo: CGSize = .zero
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Button(action: { } ) {
                        Text("Start")
                          .font(.system(size: 17))
                          .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .tint(.green)
                    .controlSize(.large)
                    .buttonBorderShape(.automatic)
                }
                .fixedSize(horizontal: true, vertical: false)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .fixedSize(horizontal: true, vertical: false)
            .frame(width: geo.width * 0.8, alignment: .topLeading)
            .offset(y: 103)
        }
        .frame(minWidth: UIScreen.main.bounds.width, maxWidth: .infinity, minHeight: UIScreen.main.bounds.height, maxHeight: .infinity, alignment: .topLeading )
        .saveSize(in: $geo)
        .ignoresSafeArea()
    }
}

/// Allows for percentage based layouts
struct SizeCalculator: ViewModifier {
    @Binding var size: CGSize
    func body(content: Content) -> some View {
        content.background(
            GeometryReader { proxy in
                Color.clear.onAppear { size = proxy.size }
            }
        )
    }
}
extension View {
    func saveSize(in size: Binding<CGSize>) -> some View {
        modifier(SizeCalculator(size: size))
    }
}
#Preview {
    ContentView()
}

// (v.11558437083) SwiftUI v4.0
