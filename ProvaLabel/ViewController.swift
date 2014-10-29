//
//  ViewController.swift
//  ProvaLabel
//
//  Created by Antonino on 12/10/14.
//  Copyright (c) 2014 Antonino. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate {
    
    //@IBOutlet var adBannerView: ADBannerView! //connect in IB connection inspector with your ADBannerView
    var adBannerView:ADBannerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adBannerView = ADBannerView(adType: .Banner)
        canDisplayBannerAds = true
        adBannerView.delegate = self
        adBannerView.hidden = true //hide until ad loaded
    }
    
    func bannerViewWillLoadAd(banner: ADBannerView!) {
        NSLog("bannerViewWillLoadAd")
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        NSLog("bannerViewDidLoadAd")
        self.adBannerView.hidden = false //now show banner as ad is loaded
        //adBannerView.center = CGPointMake(view.center.x, view.center.y)
        
    }
    
    func bannerViewActionDidFinish(banner: ADBannerView!) {
        NSLog("bannerViewActionDidFinish")
        
        //optional resume paused game code
        
    }
    
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        NSLog("bannerViewActionShouldBegin")
        
        //optional pause game code
        
        return true
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        NSLog("didFailToReceiveAdWithError")
    }


    
    
    
    
    
    
    
    
//---------------------------------------------------------------------
    
//    var bannerView:ADBannerView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        
//        var myView = UIView(frame: CGRectMake(50, 50, 200, 100))
//        myView.backgroundColor = UIColor.grayColor()
//        view.addSubview(myView)
//        
//        var label = UILabel(frame: CGRectMake(20, 10, 100, 15))
//        label.text = "prova"
//        myView.addSubview(label)
//        
//        if ADBannerView.instancesRespondToSelector("initWithAdType:") == true {
//            bannerView = ADBannerView(adType: ADAdType.Banner)
//        }
//        else {
//            bannerView = ADBannerView()
//        }
//        
//        bannerView.delegate = self;
//        view.addSubview(bannerView)
//        
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    override func viewDidAppear(animated: Bool) {
//        super.viewDidAppear(animated)
//        layoutAnimated(false)
//    }
//    
////    - (void)layoutAnimated:(BOOL)animated {
////    CGRect contentFrame = self.view.bounds;
////    if (contentFrame.size.width < contentFrame.size.height) {
////    _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierPortrait;
////    } else {
////    _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierLandscape;
////    }
////    
////    CGRect bannerFrame = _bannerView.frame;
////    if (_bannerView.bannerLoaded) {
////    contentFrame.size.height -= _bannerView.frame.size.height;
////    bannerFrame.origin.y = contentFrame.size.height;
////    } else {
////    bannerFrame.origin.y = contentFrame.size.height;
////    }
////    
////    [UIView animateWithDuration:animated ? 0.25 : 0.0 animations:^{
////    _contentView.frame = contentFrame;
////    [_contentView layoutIfNeeded];
////    _bannerView.frame = bannerFrame;
////    }];
////    }
//    func layoutAnimated(animated:Bool) {
//        var contentFrame = self.view.bounds
//        var bannerFrame = bannerView.frame
//        if bannerView.bannerLoaded {
//            contentFrame.size.height -= bannerView.frame.size.height;
//            bannerFrame.origin.y = contentFrame.size.height;
//        } else {
//            bannerFrame.origin.y = contentFrame.size.height;
//        }
//        UIView.animateWithDuration(animated ? 0.25 : 0.0, animations: {
//            self.view.frame = contentFrame
//            self.view.layoutIfNeeded()
//            self.bannerView.frame = bannerFrame
//        })
//        
//    }
//    
//    override func viewDidLayoutSubviews() {
//        println("viewDidLayoutSubviews")
//        layoutAnimated(UIView.areAnimationsEnabled())
//    }
//    
//    func bannerViewDidLoadAd(banner: ADBannerView!) {
//        println("bannerViewDidLoadAd")
//        layoutAnimated(true)
//    }
//    
//    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
//        println("didFailToReceiveAdWithError")
//        layoutAnimated(true)
//    }
//    
//    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
//        println("bannerViewActionShouldBegin")
//        return true
//    }
    

}

