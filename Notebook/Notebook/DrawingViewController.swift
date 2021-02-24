//
//  DrawingViewController.swift
//  Notebook
//
//  Created by Niklas Kuuva on 20/2/21.
//

import UIKit
import PencilKit

class DrawingViewController: UIViewController, PKToolPickerObserver {

    var datasystem = DataSystem()
    var toolPicker: PKToolPicker!
    @IBOutlet weak var canvasView: PKCanvasView!
    override func viewDidLoad() {
        super.viewDidLoad()
        canvasView.drawing = datasystem.getDrawing(id: 1)
        toolPicker = PKToolPicker()
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        toolPicker.addObserver(self)
        canvasView.becomeFirstResponder()
    }
    

}
