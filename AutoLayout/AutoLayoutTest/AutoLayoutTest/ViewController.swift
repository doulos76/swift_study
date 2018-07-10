//
//  ViewController.swift
//  AutoLayoutTest
//
//  Created by dave on 25/06/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  weak var testView: UIView!
  
  override func loadView() {
    super.loadView()
    
    let testView = UIView(frame: .zero)
    testView.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(testView)
    NSLayoutConstraint.activate([
      testView.widthAnchor.constraint(equalToConstant: 64),
      testView.widthAnchor.constraint(equalTo: testView.heightAnchor),
      testView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      testView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
      ])
    self.testView = testView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.testView.backgroundColor = .red
    
    let frameBasedView = UIView()
    frameBasedView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
    frameBasedView.backgroundColor = .red
    self.view.addSubview(frameBasedView)
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}

