//
//  ViewController.swift
//  ImageSlider
//
//  Created by sdt5 on 2015. 10. 19..
//  Copyright © 2015년 tacademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var i = 0
    var array = ["GOPRO.jpg", "HHG01.jpg", "MOMENT.jpg", "PH250.jpg", "RX100M4.jpg"]
    
    @IBOutlet weak var photoView: UIImageView!
    
    @IBAction func showNext(sender: AnyObject) {
        i++
        if (i == 5){
            i = 0
        }
        photoView.image = UIImage(named: array[i])
    }
    
    @IBAction func showPrevious(sender: AnyObject) {
        i--
        if (i == -1){
            i = 4
        }
        photoView.image = UIImage(named: array[i])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

