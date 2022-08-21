//
//  AddTaskController.swift
//  tasks
//
//  Created by Diomedeidae on 5/4/22.
//

import UIKit

protocol AddTask {
    func addTask(name:String)
}

class AddTaskController: UIViewController {

    
    @IBAction func addAction(_ sender: Any) {
        if taskNameOutlet.text != "" {
            delegate?.addTask(name: taskNameOutlet.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    @IBOutlet weak var taskNameOutlet: UITextField!
    
    var delegate: AddTask?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
}

