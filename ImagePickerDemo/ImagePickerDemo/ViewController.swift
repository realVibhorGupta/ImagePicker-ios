//
//  ViewController.swift
//  ImagePickerDemo
//
//  Created by Vibhor Gupta on 8/10/17.
//  Copyright © 2017 Vibhor Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //let imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //imagePicker.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
        
        
    }
    
    
    @IBAction func openAlertViewController(_ sender: UIButton) {
        let controller = UIAlertController()
        controller.title = "this is a test Alert"
        controller.message = "this is a test message"
        
       
        
        
        let okAction  = UIAlertAction(title : "ok", style : UIAlertAction.Style.default){
            action in self.dismiss(animated: true, completion: nil)

        }
        controller.addAction(okAction)
        self.present(controller, animated: true, completion: nil)
        
    }
    
    
    @IBAction func openImagePicker(_ sender: UIButton) {
        let image = UIImage()
        let  controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }
    
    
}

