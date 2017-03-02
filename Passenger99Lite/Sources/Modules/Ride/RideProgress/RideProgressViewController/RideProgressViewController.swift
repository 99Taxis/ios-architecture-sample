import UIKit
import SnapKit

// MARK: - delegate

protocol RideProgressViewControllerDelegate: class {
    func wantsToShowRideCompletion(rideProgressController: RideProgressViewController)
}

// MARK: - class

final class RideProgressViewController: UIViewController {

    weak var delegate: RideProgressViewControllerDelegate?
    
    fileprivate let presenter: RideProgressPresenterType
    fileprivate lazy var rideView: RideProgressViewLayout = {
        let rideView = RideProgressViewLayout.loadFromNib()
        rideView.delegate = self
        return rideView
    }()
    
    init(presenter: RideProgressPresenterType) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.presenter.viewDidLoad()
    }
}

// MARK: - ui setup

extension RideProgressViewController {
    
    fileprivate func setupUI() {
        self.addSubviews()
    }
    
    private func addSubviews() {
        self.view.addSubview(self.rideView)
        self.rideView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
    }
}

// MARK: - ride view

extension RideProgressViewController: RideProgressViewType {
    
    func show(viewModel: RideProgressViewModel) {
        self.rideView.show(viewModel: viewModel)
    }
    
    func didFinishProgress() {
        self.delegate?.wantsToShowRideCompletion(rideProgressController: self)
    }
}

// MARK: ride view delegate

extension RideProgressViewController: RideProgressViewLayoutDelegate {
    
    func wantsToShowTips() {
        self.delegate?.wantsToShowRideCompletion(rideProgressController: self)
    }
}
