//
//  ContentView.swift
//  H4KOR News
//
//  Created by adrian garcia on 8/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(" ")
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("WHATEVER")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iphone 13 pro max")
    }
}
