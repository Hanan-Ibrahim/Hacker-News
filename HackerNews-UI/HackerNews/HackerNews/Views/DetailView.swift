//
//  DetailView.swift
//  HackerNews
//
//  Created by Hanoudi on 1/4/21.
//  Copyright © 2021 Hanan. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    //because in hits, the url may be null
    let url: String?
    
    var body: some View {
        //webViews are not part of SwiftUI yet, we use UIKit to help us display a webView
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

