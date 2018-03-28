//
//  ViewController.swift
//  navigationTest
//
//  Created by Катя Смолякова on 3/28/18.
//  Copyright © 2018 Катя Смолякова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
         switch segue.identifier! {
         case "slider":
         guard let vs = segue.destination as? SecondViewController
         else { return }
         vs.text = "\(Int(slider.value * 100))"
         break
         case "textField":
         guard let vs = segue.destination as? SecondViewController
         else { return }
         vs.text = textField.text
         default:
         break
        }
    }
}

