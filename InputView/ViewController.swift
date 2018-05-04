//
//  ViewController.swift
//  InputView
//
//  Created by Kishikawa Katsumi on 2018/05/04.
//  Copyright © 2018 Kishikawa Katsumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(notification:)), name: .UIKeyboardDidShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: .UIKeyboardWillHide, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide(notification:)), name: .UIKeyboardDidHide, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChangeFrame(notification:)), name: .UIKeyboardWillChangeFrame, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidChangeFrame(notification:)), name: .UIKeyboardDidChangeFrame, object: nil)
    }

    @objc
    func keyboardWillShow(notification: Notification) {
        print(#function)
    }

    @objc
    func keyboardDidShow(notification: Notification) {
        print(#function)
    }

    @objc
    func keyboardWillHide(notification: Notification) {
        print(#function)
    }

    @objc
    func keyboardDidHide(notification: Notification) {
        print(#function)
    }

    @objc
    func keyboardWillChangeFrame(notification: Notification) {
        print(#function)
    }

    @objc
    func keyboardDidChangeFrame(notification: Notification) {
        print(#function)
    }

    @IBAction func toggleInputView(_ sender: Any) {
        if let _ = textField.inputView {
            textField.inputView = nil
        } else {
            let myInputView = UIView(frame: view.bounds)
            myInputView.frame.size.height = 275
            myInputView.backgroundColor = .blue
            textField.inputView = myInputView
        }
        textField.reloadInputViews()
    }
}
