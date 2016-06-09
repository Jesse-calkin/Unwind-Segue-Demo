//
//  RedViewController.swift
//  Unwind Segue Demo
//
//  Created by jesse calkin on 6/8/16.
//  Copyright © 2016 Shoshin Boogie. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let navigationController = navigationController, appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate {
            navigationController.delegate = appDelegate
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let identifier = segue.identifier else { return }
        print(identifier)
    }

    @IBAction func unwindToRedViewController(segue: UIStoryboardSegue) {}

    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        guard let navigationController = navigationController else { return true }

        if identifier == "PushGreen" && navigationController.childViewControllers.filter({ $0.isKindOfClass(GreenViewController) }).count > 0 {
            performSegueWithIdentifier("unwindGreen", sender: self)
            return false
        } else if identifier == "PushBlue" && navigationController.childViewControllers.filter({ $0.isKindOfClass(BlueViewController) }).count > 0 {
            performSegueWithIdentifier("unwindBlue", sender: self)
            return false
        }

        return true
    }
}
