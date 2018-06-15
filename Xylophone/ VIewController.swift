//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
   var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
       
        playSound(tag: sender.tag)
        
    }
    
    func playSound(tag: Int) {
        print(tag);
        let fileName = "note\(tag)"
         let url = Bundle.main.url(forResource: fileName, withExtension: "wav")
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url!)
            
            guard let player = player else {return}
            
            player.prepareToPlay()
            player.play()
        }
            
        catch let error
        {
            print(error.localizedDescription)
        }
        
    }
    
  

}

