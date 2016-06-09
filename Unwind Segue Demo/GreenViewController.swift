//
//  GreenViewController.swift
//  Unwind Segue Demo
//
//  Created by jesse calkin on 6/8/16.
//  Copyright © 2016 Shoshin Boogie. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindToGreenViewController(segue: UIStoryboardSegue) {}

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let identifier = segue.identifier else { return }
        print(identifier)
    }

    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
    guard let navigationController = navigationController else { return true }

        if identifier == "PushRed" && navigationController.childViewControllers.filter({ $0.isKindOfClass(RedViewController) }).count > 0 {
            performSegueWithIdentifier("unwindRed", sender: self)
            return false
        } else if identifier == "PushBlue" && navigationController.childViewControllers.filter({ $0.isKindOfClass(BlueViewController) }).count > 0 {
            performSegueWithIdentifier("unwindBlue", sender: self)
            return false
        }

        return true
    }
}
