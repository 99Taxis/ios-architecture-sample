
import UIKit

final class RideProgressViewLayout: UIView, NibLoadable {
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var tipButton: UIButton!
    @IBOutlet weak var label: UILabel!
    
    func show(viewModel: RideProgressViewModel) {
        self.progressView.setProgress(viewModel.progress, animated: true)
    }
    
    @IBAction func tipButtonHandler(_ sender: UIButton) {
        
    }
}
