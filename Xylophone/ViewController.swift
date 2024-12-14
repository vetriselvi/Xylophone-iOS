//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        
        //        print(sender.currentTitle)
        
        
        let keyName = sender.currentTitle!
        let backColor = sender.backgroundColor
        

        sender.alpha = 0.5
        playSound(soundString: keyName)
        
        //Schedules a work item for execution at the specified time, and returns immediately.

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            sender.alpha = 1
        }
        
        }
       
     
  
    func playSound(soundString: String) {
        
        
        let url = Bundle.main.url(forResource: soundString, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
                
    }
    
    
}








/*
import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cKeyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        
        //bundle - interacts with the resource stored in the disk - using main bundle to locate the audio file
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")!

        do {
            
            //enables audio playback even when the phone is on silent
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            //AVAudioPlayer - Audio player object: prepareToPlay(), play()
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }

            player.prepareToPlay()
            player.play()

        } catch let error as NSError {
            print(error.description)
        }
    }


    

}
*/
