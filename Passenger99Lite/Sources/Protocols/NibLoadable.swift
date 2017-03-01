
import UIKit

protocol NibLoadable {
    static var nibName: String { get }
    static func loadFromNib() -> Self
}

extension NibLoadable where Self: UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
    
    static func loadFromNib() -> Self {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        guard let view = nib.instantiate(withOwner: nil, options: nil).first as? Self else {
            fatalError("The nib \(nib) expected its root view to be of type \(self)")
        }
        return view
    }
}
