//
//  ViewController.swift
//  Photostream
//
//  Created by Bryant Detwiller on 10/9/15.
//  Copyright © 2015 Bryant Detwiller. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var store: PhotoStore!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchRecentPhotos()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

