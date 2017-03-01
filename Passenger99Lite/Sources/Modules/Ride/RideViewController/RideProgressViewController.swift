
import UIKit
import SnapKit

// MARK: - class

final class RideProgressViewController: UIViewController {

    fileprivate let rideView = RideProgressViewLayout.loadFromNib()
    let presenter: RideProgressPresenterType
    
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
}