//
//  ViewController.swift
//  BGS_task1.1
//
//  Created by Oleg Kalistratov on 25.05.22.
//

import UIKit

final class ImageViewController: UIViewController {
    
    private var imageView = ImageView()
    private var arrayImages:[Any] = [] {
        didSet {
//            self.arrayImages.sort(by: { $0[0] < $1[0] })
        }
    }
    
    override func loadView() {
        super.loadView()
        self.view = imageView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRequest()
    }
    
    private func getRequest() {
        guard let url = URL(string: NetworkConstants.url) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data else { return }
            guard error == nil else { return }
            
            switch (response as? HTTPURLResponse)?.statusCode {
            case (0..<200)?, (400...)?:
                print("ERROR")
                return
            default:
                break
            }
            
            do {
                let dictImages =  try JSONDecoder().decode(Images.self, from: data)
                let arrayValues = dictImages.values.map({$0})
                
                var array: [Any] = [arrayValues[0].userName, arrayValues[0].userURL, arrayValues[0].photoURL, arrayValues[0].colors]
                self.arrayImages.append(array)
                print(self.arrayImages)
            } catch {
                print(error)
            }
        }.resume()
    }
    
}
