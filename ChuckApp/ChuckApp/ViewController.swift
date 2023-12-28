//
//  ViewController.swift
//  ChuckApp
//
//  Created by MacBook on 01.06.2022.
//

import UIKit
import MessageUI

class ViewController: UIViewController, UINavigationControllerDelegate {
   
    

//    let mailController =  MFMailComposeViewController()
  //  let messageController =  MFMessageComposeViewController()

    
    
    @IBAction func pushMessageAction(_ sender: Any) {
        
        let activityController = UIActivityViewController(activityItems: [labelJokeText.text], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
        
    //    messageController.messageComposeDelegate = self
      //  messageController.body = labelJokeText.text!
        
        //self.present(messageController,animated: true, completion: nil)
    }
  /*
    @IBAction func pushMailAction(_ sender: Any) {
        mailController.setSubject("new joke from Chuck!")
        mailController.setMessageBody(labelJokeText.text!, isHTML: false)
        mailController.delegate = self
        self.present(mailController, animated: true, completion: nil)
    }
   */
    
    
    @IBOutlet weak var labelJokeText: UILabel!
    @IBAction func pushRefreshAction(_ sender: Any) {
        let model = Model()
        labelJokeText.text = model.loadJoke()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
/*

extension ViewController : MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController,
            didFinishWith result: MFMailComposeResult, error: Error?) {
        mailController.dismiss(animated: true, completion: {() -> Void in })
        
    
        
         enum MFMailComposeResult : Int {

            
            case cancelled = 0

            case saved = 1

            case sent = 2

            case failed = 3
        }
    }
    
}

extension ViewController : MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
        enum MessageComposeResult : Int {

            
            case cancelled = 0

            case sent = 1

            case failed = 2
        }
    }
    }
*/
