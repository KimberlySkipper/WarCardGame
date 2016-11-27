//
//  ViewController.swift
//  WarCardGame
//
//  Created by Kimberly Skipper on 11/25/16.
//  Copyright © 2016 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(sender: AnyObject)
    {
    
        //randomize left number from 0 to 12
        let leftNumber = Int(arc4random_uniform(13))
        
        //Set the left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        //randomize the right number from 0 to 12
        let rightNumber = Int(arc4random_uniform(13))
        
        //set right image
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        //Compare the cards
        if  leftNumber > rightNumber
        {
            //left card wins
            
            //Increment the score
            leftScore += 1
            
            //Update the label
            leftScoreLabel.text = String(leftScore)
        }
        
        else if leftNumber == rightNumber
        {
            // it's a tie
        }
        else
        {
            //right card wins
            
            //increment the score
            rightScore += 1
            
            //Update the label
            rightScoreLabel.text = String(rightScore)
            
        }

    }
    
    
}

