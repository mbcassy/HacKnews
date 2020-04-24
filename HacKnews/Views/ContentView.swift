//
//  ContentView.swift
//  HacKnews
//
//  Created by Cassy on 4/24/20.
//  Copyright © 2020 Cassy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: PostDetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
        .navigationBarTitle("HacKnews")
    
        }
        .onAppear {
            self.networkManager.getData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
