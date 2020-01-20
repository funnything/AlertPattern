//
//  ViewController.swift
//  AlertPattern
//
//  Created by Yosaku Toyama on 2020/01/20.
//  Copyright © 2020 Yosaku Toyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func alertTextText() {
        show("title", "message", .alert)
    }
    
    @IBAction func alertTextEmpty() {
        show("title", "", .alert)
    }
    
    @IBAction func alertTextNil() {
        show("title", nil, .alert)
    }
    
    @IBAction func alertEmptyText() {
        show("", "message", .alert)
    }
    
    @IBAction func alertEmptyEmpty() {
        show("", "", .alert)
    }
    
    @IBAction func alertEmptyNil() {
        show("", nil, .alert)
    }
    
    @IBAction func alertNilText() {
        show(nil, "message", .alert)
    }
    
    @IBAction func alertNilEmpty() {
        show(nil, "", .alert)
    }
    
    @IBAction func alertNilNil() {
        show(nil, nil, .alert)
    }

    @IBAction func actionSheetTextText() {
        show("title", "message", .actionSheet)
    }

    @IBAction func actionSheetTextEmpty() {
        show("title", "", .actionSheet)
    }
    
    @IBAction func actionSheetTextNil() {
        show("title", nil, .actionSheet)
    }
    
    @IBAction func actionSheetEmptyText() {
        show("", "message", .actionSheet)
    }
    
    @IBAction func actionSheetEmptyEmpty() {
        show("", "", .actionSheet)
    }
    
    @IBAction func actionSheetEmptyNil() {
        show("", nil, .actionSheet)
    }
    
    @IBAction func actionSheetNilText() {
        show(nil, "message", .actionSheet)
    }
    
    @IBAction func actionSheetNilEmpty() {
        show(nil, "", .actionSheet)
    }
    
    @IBAction func actionSheetNilNil() {
        show(nil, nil, .actionSheet)
    }

    func show(_ title: String?, _ message: String?, _ style: UIAlertController.Style) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: style)
        ac.addAction(UIAlertAction(title: "First action", style: .default))
        ac.addAction(UIAlertAction(title: "Second action", style: .default))
        ac.addAction(UIAlertAction(title: "Destructive", style: .destructive))
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(ac, animated: true)
    }
}

