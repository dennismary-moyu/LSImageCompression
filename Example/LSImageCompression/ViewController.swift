//
//  ViewController.swift
//  LSImageCompression
//
//  Created by dennismary on 08/16/2022.
//  Copyright (c) 2022 dennismary. All rights reserved.
//

import UIKit
import LSImageCompression

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let image = UIImage.init(named: "urls_3") else { return }
        print(image.pngData()!)
        
        let imageData = image.compressToData()
        print(imageData)
        
        imageView.image = image.compressToImage()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

