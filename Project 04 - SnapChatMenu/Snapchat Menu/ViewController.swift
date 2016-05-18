//
//  ViewController.swift
//  Snapchat Menu
//
//  Created by Allen on 16/1/10.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.sharedApplication().statusBarHidden = true

        let leftView: LeftView = LeftView(nibName: "LeftView", bundle: nil)
        let centerView: CameraView = CameraView(nibName: "CameraView", bundle: nil)
        let rightView: RightView = RightView(nibName: "RightView", bundle: nil)

        
        addChildViewController(leftView)
        scrollView.addSubview(leftView.view)
        leftView.didMoveToParentViewController(self)
        
        addChildViewController(rightView)
        scrollView.addSubview(rightView.view)
        rightView.didMoveToParentViewController(self)
        
        addChildViewController(centerView)
        scrollView.addSubview(centerView.view)
        centerView.didMoveToParentViewController(self)
        
        var centerViewFrame: CGRect = centerView.view.frame
        centerViewFrame.origin.x = view.frame.width
        centerView.view.frame = centerViewFrame
        
        var rightViewFrame: CGRect = rightView.view.frame
        rightViewFrame.origin.x = 2 * view.frame.width
        rightView.view.frame = rightViewFrame
 
        
        scrollView.contentSize = CGSizeMake(view.frame.width * 3, view.frame.size.height)
    }
}

