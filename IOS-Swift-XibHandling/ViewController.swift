//
//  ViewController.swift
//  IOS-Swift-XibHandling
//
//  Created by Pooya on 2018-10-22.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewTop: UIView!
    @IBOutlet weak var viewMid: UIView!
    @IBOutlet weak var viewBot: UIView!
    
    var refrenceForViewTopGlobal : SubView?
    var refrenceForviewMidGlobal : SubView?
    var refrenceForviewBotGlobal : SubView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // update xib inside viewTop
        if let refrenceForViewTop = Bundle.main.loadNibNamed("SubView", owner: self
            , options: nil)?.first as? SubView {
            viewTop.addSubview(refrenceForViewTop)
            
            refrenceForViewTop.frame.size.height = viewTop.frame.size.height
            refrenceForViewTop.frame.size.width = viewTop.frame.size.width
            refrenceForViewTop.subViewDelegate = self
            //            parcticeSubViewRef.delegate = self
            refrenceForViewTopGlobal = refrenceForViewTop
        }
        //updatePracticeXib(type: .quizStart)

        // update xib inside viewMid
        if let refrenceForviewMid = Bundle.main.loadNibNamed("SubView", owner: self
            , options: nil)?.first as? SubView {
            viewMid.addSubview(refrenceForviewMid)
            
            refrenceForviewMid.frame.size.height = viewMid.frame.size.height
            refrenceForviewMid.frame.size.width = viewMid.frame.size.width
            refrenceForviewMid.subViewDelegate = self
            //            parcticeSubViewRef.delegate = self
            refrenceForviewMidGlobal = refrenceForviewMid
        }
        //updatePracticeXib(type: .quizStart)


        // update xib inside viewBot
        if let refrenceForviewBot = Bundle.main.loadNibNamed("SubView", owner: self
            , options: nil)?.first as? SubView {
            viewBot.addSubview(refrenceForviewBot)
            
            refrenceForviewBot.frame.size.height = viewBot.frame.size.height
            refrenceForviewBot.frame.size.width = viewBot.frame.size.width
            refrenceForviewBot.subViewDelegate = self
            //            parcticeSubViewRef.delegate = self
            refrenceForviewBotGlobal = refrenceForviewBot
        }
        //updatePracticeXib(type: .quizStart)

        
        refrenceForViewTopGlobal?.backgroundColor = UIColor.yellow
        refrenceForViewTopGlobal?.imageView.tag = 11
        refrenceForViewTopGlobal?.buttonView.setTitle("Top Tap", for: .normal)
        refrenceForViewTopGlobal?.imageView.image = UIImage(named: "apple")
        refrenceForviewMidGlobal?.backgroundColor = UIColor.lightGray
        refrenceForviewMidGlobal?.imageView.tag = 22
        refrenceForviewMidGlobal?.buttonView.setTitle("Mid Tap", for: .normal)
        refrenceForviewMidGlobal?.imageView.image = UIImage(named: "kiwi")
        refrenceForviewBotGlobal?.backgroundColor = UIColor.cyan
        refrenceForviewBotGlobal?.imageView.tag = 33
        refrenceForviewBotGlobal?.buttonView.setTitle("Bot Tap", for: .normal)
        refrenceForviewBotGlobal?.imageView.image = UIImage(named: "peach")

    }

}


extension ViewController : SubViewDelegate {
    func didTapOnMe(name: String, showMe updateMe: String) {
       
        print(name,updateMe)
        //TODO: Alert to show message
    }
}
