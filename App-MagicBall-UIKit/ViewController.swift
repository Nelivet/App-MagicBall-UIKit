//
//  ViewController.swift
//  App-MagicBall-UIKit
//
//  Created by Ivette Fernandez on 19/01/24.
//


// imageView.image = ballArray[2]
// ------
// imageView.image = ballArray[Int.random(in:0...4)]

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1") , #imageLiteral(resourceName: "ball2") , #imageLiteral(resourceName: "ball3") , #imageLiteral(resourceName: "ball3") , #imageLiteral(resourceName: "ball5")]
    var tapGesture: UITapGestureRecognizer? // Declare the gesture as an instance variable

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
          super.viewDidLoad()

        // Change the background image
          let backgroundImage = UIImage(named: "font1")
          view.backgroundColor = UIColor(patternImage: backgroundImage!)
        
          //-----
        myLabel.text = "Ask And Touch The Cat"
        myLabel.font = UIFont.systemFont(ofSize: 29.0)
        
        //------
        imageView.image = UIImage(named: "image1")
        imageView.isUserInteractionEnabled = true
        
        // Add a touch gesture to the imageView
        tapGesture = UITapGestureRecognizer(target: self, action:#selector(imageViewTapped))
        if let tapGesture = tapGesture {
        imageView.addGestureRecognizer(tapGesture)
               }

        // Adjust the size of the image
        let scaleFactor: CGFloat = 1.8 // value of img
        imageView.transform = CGAffineTransform(scaleX: scaleFactor, y: scaleFactor)
        
        myButton.isHidden = true // I don't show the button
      
      }
    
  
    @objc func imageViewTapped() {
        askButtonPressed(myButton)
        imageView.isUserInteractionEnabled = false // Disable interaction after first touch
      }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
    
        // Change the background image
                let backgroundImage = UIImage(named: "image3")
                view.backgroundColor = UIColor(patternImage: backgroundImage!)
                
        myLabel.text = "Ask Me Anything..."
        myLabel.font = UIFont.systemFont(ofSize: 33.0)
        let scaleFactor: CGFloat = 1.3 // value of img
        imageView.transform = CGAffineTransform(scaleX: scaleFactor, y: scaleFactor)
        
        let ball = Int.random(in:0...4)
        imageView.image = ballArray[ball]
        myButton.isHidden = false
      

     
    }
    
    

    
}

