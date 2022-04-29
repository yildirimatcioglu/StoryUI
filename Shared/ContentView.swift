//
//  ContentView.swift
//  Shared
//
//  Created by Tolga İskender on 28.04.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var storyData = StoryViewModel()
 //   @State private var isPresented  = false
    var body: some View {
        NavigationView {
            Button {
                storyData.stories[0].isSeen = true
                storyData.currentStory = storyData.stories[0].id
                storyData.showStory = true
            } label: {
                Text("click")
            }
            .fullScreenCover(isPresented: $storyData.showStory) {
                StoryView()
                    .environmentObject(storyData)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
