
import UIKit

final class RideProgressViewLayout: UIView, NibLoadable {
    
    @IBOutlet weak var progressView: UIProgressView!
    
    func show(viewModel: RideProgressViewModel) {
        self.progressView.setProgress(viewModel.progress, animated: true)
    }
}
