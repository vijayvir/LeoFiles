//
//  ViewController.swift
//  LeoFilesDemo
//
//  Created by tecH on 10/07/19.
//  Copyright © 2019 vijayvir Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnFiles: LeoFilesUIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnFiles.withClosureDidPickDocumentAt { (arg0) in
            
            let (directory, filenameOnly, ext) = arg0
            print(directory , "filenameOnly  " , filenameOnly , "ext  "  , ext)
            }.withClosureDidDocumentMenuWasCancelled {
                print("Cancel")
            }.withClosureDidTapCancelImagePicker {
                 print("Cancel")
            }.withClosureDidFinishPickingAnUIImaget({ (image, arg0 ) in
                
                let (directory, filenameOnly, ext) = arg0
                    print(directory , "filenameOnly  " , filenameOnly , "ext  "  , ext)
            })
            
            .withStop()
        
        
 
    }


}

