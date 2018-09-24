//
//  ViewController.swift
//  Simon
//
//  Created by REGALADO-MORALES,ARM ADRIAN on 9/19/18.
//  Copyright © 2018 REGALADO-MORALES,ARM ADRIAN. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    
    
    @IBOutlet var colorDisplays: [UIView]!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var colorsFrame: UIView!
    
    var sound: AVAudioPlayer?
    var timer = Timer()
    var pattern = [Int]()
    var index = 0
    var playerTurn = false
    var gameOver = true
    
    
    @IBAction func onStartButtonTapped(_ sender: Any) {
    }
    
    @IBAction func onColorTapped(_ sender: UITapGestureRecognizer) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func playSound(fileName: String){
            if let path = Bundle.main.path(forResource: fileName, ofType: "wav"){
                let url = URL(fileURLWithPath: path)
                do{
                    self.sound
                }
            }
        }
        
        
        
        
        
        
    }



}

