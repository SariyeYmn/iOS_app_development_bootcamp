import UIKit
import AVFoundation
// AVFoundation görsel ve işitsel temel modülü ifade eder


class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        sender.alpha = 0.5
        
        //Dispatch Queue ile gecikmeli işlem
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7){
            sender.alpha = 1.0
        }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName , withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
