//
//  PostDetailView.swift
//  HacKnews
//
//  Created by Cassy on 4/24/20.
//  Copyright © 2020 Cassy. All rights reserved.
//

import SwiftUI

struct PostDetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(url: " ")
    }
}
