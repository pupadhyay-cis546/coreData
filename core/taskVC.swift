//
//  taskVC.swift
//  core
//
//  Created by Upadhyay, Priyanka on 4/26/17.
//  Copyright © 2017 Upadhyay, Priyanka. All rights reserved.
//

import UIKit

class taskVC: UIViewController {


    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func addItem(_ sender: Any)
    {
        if (input.text) != ""
        {
            list.append(self.input.text!)
            self.input.text = ""
        }
        saveNotice()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func saveNotice()
    {
        let alertController = UIAlertController(title: "Task Saved!", message: "Task saved successfully", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
