//
//  ImageView.swift
//  BGS_task1.1
//
//  Created by Oleg Kalistratov on 25.05.22.
//

import UIKit

final class ImageView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
