
import UIKit

final class RideViewLayout: UIView, NibLoadable {
    
    @IBOutlet weak var progressView: UIProgressView!
    
    func show(viewModel: RideViewModel) {
        self.progressView.setProgress(viewModel.progress, animated: true)
    }
}
