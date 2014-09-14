//
//  ViewController.swift
//  Dropbox
//
//  Created by Kyle Pickering on 9/10/14.
//  Copyright (c) 2014 Kyle Pickering. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scroller: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scroller.contentSize = CGSizeMake(scroller.frame.width*3, scroller.frame.size.height)
        scroller.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView){
        var page = Int(scroller.contentOffset.x / 320)
        pageControl.currentPage = page

    }

}

