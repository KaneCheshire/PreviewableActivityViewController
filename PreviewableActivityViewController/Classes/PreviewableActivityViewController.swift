//
//  PreviewableActivityViewController.swift
//  Ride
//
//  Created by Kane Cheshire on 20/09/2017.
//  Copyright © 2017 Kane Cheshire. All rights reserved.
//

import UIKit

/// A `UIActivityViewController` that provides the ability to show a preview
/// of the image being shared.
///
/// The preview is shown on top of the dimmed out window that the system displays
/// when `UIActivityViewController` is presented.
open class PreviewableActivityViewController: UIActivityViewController {
    
    /// Set the `previewImageView`s image to be your preview before
    /// presenting the view controller to the user.
    let previewImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 9
        imageView.alpha = 0
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    /// The duration of the simple fade-in animation when showing the preview view.
    /// Defaults to 0.2 seconds.
    open var animationDuration: TimeInterval = 0.2
    
    /// The ratio of the preview view's height in relation to its width.
    /// Defaults to 0.5, i.e half the width.
    open var heightToWidthRatio: CGFloat = 0.5
    
    /// The size of the margin, in points, between the preview view and the
    /// top of the activity view controller's main view.
    open var previewImageViewBottomMargin: CGFloat = 8
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showPreviewView()
    }
    
    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        hidePreviewView()
    }
    
}

private extension PreviewableActivityViewController {
    
    func showPreviewView() {
        view.window?.addSubview(previewImageView)
        pinPreviewView()
        UIView.animate(withDuration: animationDuration) {
            self.previewImageView.alpha = 1
        }
    }
    
    func pinPreviewView() {
        NSLayoutConstraint.activate([
            previewImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            previewImageView.rightAnchor.constraint(equalTo: view.rightAnchor),
            previewImageView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: -previewImageViewBottomMargin),
            previewImageView.heightAnchor.constraint(equalTo: previewImageView.widthAnchor, multiplier: heightToWidthRatio)
            ])
    }
    
    func hidePreviewView() {
        UIView.animate(withDuration: animationDuration, animations: {
            self.previewImageView.alpha = 0
        }) { _ in
            self.previewImageView.removeFromSuperview()
        }
    }
    
}

