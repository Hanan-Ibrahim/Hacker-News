//
//  ContentView.swift
//  HackerNews
//
//  Created by Hanoudi on 1/3/21.
//  Copyright © 2021 Hanan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //MARK:- Variable
    //Subscribe to networkManager to be able to read whats published on its
    //observable property
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                //Create a navLink to be able to go to webView view as of detailed view 
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("HACKER NEWS")
}
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

