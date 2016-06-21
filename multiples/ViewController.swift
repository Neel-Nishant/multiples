//
//  ViewController.swift
//  multiples
//
//  Created by Neel Nishant on 21/06/16.
//  Copyright © 2016 Neel Nishant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//variables
    var mul=0
    var no=10
    var muli=0
    var mulres=0
//outlets
    @IBOutlet weak var logo:UIImageView!
    @IBOutlet weak var playbtn:UIButton!
    @IBOutlet weak var txt:UITextField!
    
    @IBOutlet weak var lbl:UILabel!
    @IBOutlet weak var addbtn:UIButton!
    
//functions
    @IBAction func onPressingPlay(sender:UIButton!)
    {
        if(txt.text != "" && txt.text != nil)
        {
            logo.hidden=true
            playbtn.hidden=true
            txt.hidden=true
            
            lbl.hidden=false
            addbtn.hidden=false
            
            mul = Int(txt.text!)!
            mulres=0
            lbl.text="Press Add to add"
            
            }
    }
    @IBAction func onPressingAdd(sender:UIButton!)
    {
        muli += 1;
        update()
        mulres+=mul

        if isGameOver(){
            restart()
        }
        

    }
    func update()
    {
        lbl.text="\(mulres) + \(mul) = \(mulres+mul)"

    }
    func isGameOver()->Bool
    {
        if(muli>=no)
        {return true}
        else {return false}
    }
    func restart(){
        mulres=0
        muli=0;
        txt.text=""
        logo.hidden=false
        playbtn.hidden=false
        txt.hidden=false
        
        lbl.hidden=true
        addbtn.hidden=true


    }

}

