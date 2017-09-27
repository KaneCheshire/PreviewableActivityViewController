//
//  ViewController.swift
//  PreviewableActivityViewController
//
//  Created by Kane Cheshire on 09/27/2017.
//  Copyright (c) 2017 Kane Cheshire. All rights reserved.
//

import UIKit
import PreviewableActivityViewController

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presentActivityViewController()
    }
    
    private func presentActivityViewController() {
        let image = UIImage()
        let controller = PreviewableActivityViewController(activityItems: [image], applicationActivities: nil)
        controller.previewImageView.image = image
        present(controller, animated: true)
    }
    
}

