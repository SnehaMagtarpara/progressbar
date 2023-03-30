//
//  ViewController.swift
//  slider
//
//  Created by R93 on 27/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressbar: UIProgressView!
    
    @IBOutlet weak var slidernumber: UILabel!
    @IBOutlet weak var slider: UISlider!
    var time = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
       progressbar.progress = 0.0
        
     
    }

    @IBAction func startAction(_ sender: UIButton) {

                  var a : Float = 0.0
                  self.progressbar.progress = a
                  time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in
                      a += 0.01
                      self.progressbar.progress = a
                      if self.progressbar.progress == 1.0
                      {
                          self.time.invalidate()
                      }
                  })
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        slidernumber.text = String(Int(slider.value))
    }
}

