//
//  URLImage.swift
//  SampleSwiftUI
//
//  Created by Aravindi on 2021-09-03.
//

import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    
    private var url: URL?
    private var cancellable: AnyCancellable?
    
    init(url: URL?) {
        self.url = url
    }
    
    func load() {
        guard let imageUrl = url else { return }
        
        cancellable = URLSession.shared.dataTaskPublisher(for: imageUrl)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .assign(to: \.image, on: self)
    }
    
    deinit {
        cancellable?.cancel()
    }
    
    func cancel() {
        cancellable?.cancel()
    }
}

struct URLImage<Placeholder: View>: View {
    @ObservedObject private var loader: ImageLoader
    
    private var placeholder: Placeholder?
    private var width: CGFloat
    private var height: CGFloat
    
    init(
        url: URL?,
        placeholder: Placeholder?,
        width: CGFloat = 20,
        height: CGFloat = 20
    ) {
        self.loader = ImageLoader(url: url)
        self.placeholder = placeholder
        self.width = width
        self.height = height
    }
    
    var body: some View {
        image
            .colorMultiply(.Grape40)
            .onAppear(perform: loader.load)
            .onDisappear(perform: loader.cancel)
    }
    
    private var image: some View {
        Group {
            if loader.image != nil {
                Image(uiImage: loader.image!)
                    .resizable()
                    .frame(width: width, height: height)
            } else {
                placeholder
            }
        }
    }
    
}
