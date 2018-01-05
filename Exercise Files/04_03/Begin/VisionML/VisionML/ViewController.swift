//
//  ViewController.swift
//  VisionML
//
//  Created by Brian Advent on 27.09.17.
//  Copyright © 2017 Brian Advent. All rights reserved.
//

import UIKit
import AVFoundation
import Vision

class ViewController: UIViewController {
    
    @IBOutlet weak var previewView: PreviewView!
    @IBOutlet weak var objectTextView: UITextView!
    
    
    // Live Camera Properties
    let captureSession = AVCaptureSession()
    var captureDevice:AVCaptureDevice!
    var devicePosition: AVCaptureDevice.Position = .back
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareCamera()
    }
    
    
}
