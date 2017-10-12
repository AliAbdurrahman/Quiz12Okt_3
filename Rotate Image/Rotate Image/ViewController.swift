//
//  ViewController.swift
//  Rotate Image
//
//  Created by Rizki Syaputra on 10/12/17.
//  Copyright © 2017 Rizki Syaputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imagePreview: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnrotate(_ sender: Any) {
        UIView.animate(withDuration: 2.0, animations: {
            self.imagePreview.transform = CGAffineTransform(rotationAngle: (180.0 * .pi) / 180.0)
    })
    }
    @IBAction func btnRotate(_ sender: Any) {
        imagePreview.transform = CGAffineTransform.identity.translatedBy(x: 100, y: 300).rotated(by: CGFloat.pi / 4).scaledBy(x: -1, y: 2)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

