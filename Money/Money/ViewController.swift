//
//  ViewController.swift
//  Money
//
//  Created by Whitney Lauren on 7/2/15.
//  Copyright (c) 2015 Whitney Lauren. All rights reserved.
//

import UIKit
//import iAd
import MoPub

class ViewController: UIViewController , MPInterstitialAdControllerDelegate {
    
    // TODO: Replace this test id with your personal ad unit id
    var interstitial: MPInterstitialAdController = MPInterstitialAdController(forAdUnitId: "77ce0b65cf81438eb255695afe3b1904")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.interstitial.delegate = self
        self.interstitial.loadAd()
       
        //Below is for using iAd instead 
        // let bannerView = ADBannerView()
        
        //puts iAd at bottom of screen
       // bannerView.frame.origin.y = view.frame.height - bannerView.frame.height
    
       // view.addSubview(bannerView)
       
    }
    
    // Present the ad only after it has loaded and is ready
    func interstitialDidLoadAd(interstitial: MPInterstitialAdController) {
        if (interstitial.ready) {
            interstitial.showFromViewController(self)
        }
    }

}

