import UIKit

protocol RideProgressViewLayoutDelegate: class {
    func wantsToShowTips()
}

final class RideProgressViewLayout: UIView, NibLoadable {
    
    weak var delegate: RideProgressViewLayoutDelegate?
    
    @IBOutlet private weak var progressView: UIProgressView!
    @IBOutlet private weak var tipButton: UIButton!
    @IBOutlet private weak var label: UILabel!
    
    func show(viewModel: RideProgressViewModel) {
        self.label.text = viewModel.description
        self.progressView.setProgress(viewModel.progress, animated: true)
        self.tipButton.isHidden = viewModel.tipButtonHidden
    }
    
    @IBAction func tipButtonHandler(_ sender: UIButton) {
        self.delegate?.wantsToShowTips()
    }
}
