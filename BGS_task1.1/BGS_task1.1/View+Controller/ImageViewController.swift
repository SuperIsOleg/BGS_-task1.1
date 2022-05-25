//
//  ViewController.swift
//  BGS_task1.1
//
//  Created by Oleg Kalistratov on 25.05.22.
//

import UIKit

class ImageViewController: UIViewController {
    
    private var imageView = ImageView()
    
    override func loadView() {
        super.loadView()
        self.view = imageView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

