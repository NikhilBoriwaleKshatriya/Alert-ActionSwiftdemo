//
//  ViewController.swift
//  Alert&ActionSwiftdemo
//
//  Created by nikhil boriwale on 5/4/18.

//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnalertaction(_ sender: Any) {
        let alert = UIAlertController(title:"Mytitle", message:"my message here", preferredStyle: .alert)
        alert.addTextField{ (textfield) in
            textfield.placeholder = "enter name"
        }
        let cancelbtn = UIAlertAction(title:"cancel",style:.cancel){(action)in
            print("cancel btn")
            print(alert.textFields?.first?.text)
            
        }
        let okbtn = UIAlertAction(title:"cancel",style: .default){(action)in
            print("okbtn btn")
            
            
        }
        let destructivebtn = UIAlertAction(title:"cancel",style: .destructive){(action)in
            print("destructive btn")
            
            
        }
        present(alert, animated: true, completion: nil)
        alert.addAction(cancelbtn)
        alert.addAction(okbtn)
        alert.addAction(destructivebtn)
    }
    @IBAction func btnactionsheet(_ sender: Any) {
      
        let sheet = UIAlertController(title:"Mytitle", message:"my message here",preferredStyle :.actionSheet)
        
        let cancelbtn = UIAlertAction(title:"cancel",style:.cancel){(action)in
            print("cancel btn")
            
            
        }
        let okbtn = UIAlertAction(title:"cancel",style: .default){(action)in
            print("okbtn btn")
            
            
        }
        let destructivebtn = UIAlertAction(title:"cancel",style: .destructive){(action)in
            print("destructive btn")
            
            
        }
        present(sheet, animated: true, completion: nil)
        sheet.addAction(cancelbtn)
        sheet.addAction(okbtn)
        sheet.addAction(destructivebtn)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

