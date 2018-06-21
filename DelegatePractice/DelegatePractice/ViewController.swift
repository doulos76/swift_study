//
//  ViewController.swift
//  DelegatePractice
//
//  Created by dave on 21/06/2018.
//  Copyright © 2018 dave. All rights reserved.
//
// This is Protocol & Delegate Example

import UIKit

class ViewController: UIViewController {
  
  // MARK:- Property
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var displayLabel: UILabel!
  @IBOutlet weak var dataPicker: UIPickerView!
  
  var colorList = ["Red", "Green", "Blue"]
  
  // MARK:- View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // textField의 Delegate로 ViewController 자신을 선언
    textField.delegate = self
    // dataPikcer의 Delegate,DataSource로 ViewController 자신으로 설정
    dataPicker.delegate = self
    dataPicker.dataSource = self
  }
  
  // MARK:- IBAction
  
  /// ButtonTouch
  /// Button을 터치하면 textField에 있는 글짜가 displayLabe에 표시됨
  /// - Parameter sender: UIButton
  @IBAction func buttonTouched(_ sender: UIButton) {
    displayLabel.text = textField.text
    textField.resignFirstResponder()
  }
  
}

// UITextFieldDelegate Protocol채택
extension ViewController: UITextFieldDelegate {
  
  /// textFieldShouldReturn
  ///
  /// - Parameter textField: textField
  /// - Returns: return key `true`일 때 실행
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    displayLabel.text = textField.text
    textField.resignFirstResponder()
    return true
  }
}

// UIPickerViewDataSource,Delegate Protocol 채택 및 구현
extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return colorList.count
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return colorList[row] // colorList array의 각 항목을 가져와서 PickerView의 title에 표시
  }
}























