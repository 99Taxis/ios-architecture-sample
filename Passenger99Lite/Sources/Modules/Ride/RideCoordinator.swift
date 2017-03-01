
import UIKit

final class RideCoordinator {
    
    unowned let window: UIWindow
    var navigationController: UINavigationController!
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let rideViewController = RideViewController()
        self.navigationController = UINavigationController(rootViewController: rideViewController)
        self.window.rootViewController = self.navigationController
        self.window.makeKeyAndVisible()
    }
}
