//
//  BooksPDFViewController.swift
//  FunZone
//
//  Created by admin on 6/1/22.
//

import UIKit
import PDFKit

class BooksPDFViewController: UIViewController {
    var bookName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pdfView = PDFView(frame: view.bounds)
        pdfView.autoScales = true
        let filePath = Bundle.main.url(forResource: bookName, withExtension: "pdf")
        pdfView.document = PDFDocument(url: filePath!)
        
        view.addSubview(pdfView)
    }
}
