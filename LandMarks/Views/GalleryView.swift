

import SwiftUI

struct GalleryView: View {
        
    var body: some View {
        
        NavigationStack {
            
            List(allLandmarks) { currentLandmark in
                
                NavigationLink {
                    DetailView(item: currentLandmark)
                } label: {
                    GalleryItemView(item: currentLandmark)
                }
                
            }
            .navigationTitle("Landmarks")
                        
        }
    }
}

#Preview {
    GalleryView()
}
