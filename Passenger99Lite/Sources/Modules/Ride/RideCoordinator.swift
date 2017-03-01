
import UIKit

final class RideCoordinator {
    
    private unowned let window: UIWindow
    private var navigationController: UINavigationController!
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let repository = RideRepository()
        let presenter = RidePresenter(repository: repository)
        let rideViewController = RideViewController(presenter: presenter)
        presenter.view = rideViewController
        
        self.navigationController = UINavigationController(rootViewController: rideViewController)
        self.window.rootViewController = self.navigationController
        self.window.makeKeyAndVisible()
    }
}
