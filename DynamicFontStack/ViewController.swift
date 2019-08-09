//
//  ViewController.swift
//  DynamicFontStack
//
//  Created by Pisit W on 9/8/2562 BE.
//  Copyright © 2562 confusians. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //1
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        //2
        if previousTraitCollection?.preferredContentSizeCategory != traitCollection.preferredContentSizeCategory {
            let contentSize = traitCollection.preferredContentSizeCategory
            if contentSize.isAccessibilityCategory {
                stackView.axis = .vertical
                stackView.alignment = .leading
                stackView.spacing = 2
            } else {
                stackView.axis = .horizontal
                stackView.alignment = .center
                stackView.spacing = 6
            }
        }
    }

}

