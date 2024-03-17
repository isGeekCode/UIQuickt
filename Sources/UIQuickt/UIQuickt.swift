// The Swift Programming Language
// https://docs.swift.org/swift-book
//
//  UIQuickt.swift
//  
//
//  Created by bang_hyeonseok aka GeekCode on 3/15/24.
//

#if canImport(SwiftUI)
import SwiftUI
#endif
import UIKit

// MARK: - UIViewController 확장
@available(iOS 13, *)
public extension UIViewController {
    func toPreview() -> some View {
        UIViewControllerRepresentablePreview(viewController: self)
    }
}

// MARK: - UIViewController 래퍼
@available(iOS 13, *)
public struct UIViewControllerRepresentablePreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    private var viewController: ViewController
    
    public init(viewController: ViewController) {
        self.viewController = viewController
    }
    
    public func makeUIViewController(context: Context) -> ViewController {
        viewController
    }
    
    public func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
}

// MARK: - UIView 확장
@available(iOS 13, *)
public extension UIView {
    func toPreview() -> some View {
        UIViewRepresentablePreview(view: self)
    }
}

// MARK: - UIView 래퍼
@available(iOS 13, *)
public struct UIViewRepresentablePreview<View: UIView>: UIViewRepresentable {
    private var view: View
    
    public init(view: View) {
        self.view = view
    }
    
    public func makeUIView(context: Context) -> View {
        view
    }
    
    public func updateUIView(_ uiView: View, context: Context) {}
}
