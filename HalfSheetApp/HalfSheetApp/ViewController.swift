//
//  ViewController.swift
//  HalfSheetApp
//
//  Created by Matt Banach on 9/22/17.
//  Copyright © 2017 Gametime. All rights reserved.
//

import UIKit
import GTSheet

class ViewController: UIViewController, HalfSheetPresentationProtocol {

    var transitionManager: HalfSheetPresentationManager!

    @IBAction func showPlainVC() {
        presentUsingHalfSheet(
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PlainVC")
        )
    }

    @IBAction func showVCWithHat() {
        presentUsingHalfSheet(
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HatParentVC")
        )
    }
    
    @IBAction func showScrollingNC() {
        presentUsingHalfSheet(
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ScrollingNC")
        )
    }
}

extension ViewController: HalfSheetCompletionProtocol {
    func didDismiss() {
        print("dismissed!")
    }
}
