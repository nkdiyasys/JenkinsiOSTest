//
//  ViewController.swift
//  JenkinsiOSTest
//
//  Created by Nithin Kumar on 4/9/20.
//  Copyright © 2020 Diya Systems. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var pdfView: PDFView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //1
    pdfViewFunc()
    }
    
    func pdfViewFunc() {
        
        
        guard let path = Bundle.main.url(forResource: "sample", withExtension: "pdf") else { return }

        if let document = PDFDocument(url: path) {
            pdfView.document = document
        }
        
    }
    
    @IBAction func clickEmail(_ sender: Any) {
        if let emailField = textField.text {
            let isValid = isValidEmail(email: emailField)
            print(isValid)
        }
        
    }
    func isValidEmail(email : String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
}

