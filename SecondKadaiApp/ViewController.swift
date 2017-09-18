//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Ratnesh Kumar on 2017/09/18.
//  Copyright © 2017年 ratonesshu_kuma_ru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    var textFieldString = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        // 遷移先のResultViewControllerで宣言しているnameに値を代入して渡す
        resultViewController.name = textField.text!
        
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }


}

