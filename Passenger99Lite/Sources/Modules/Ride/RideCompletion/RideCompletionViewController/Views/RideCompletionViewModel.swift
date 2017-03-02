
import Foundation

struct RideCompletionViewModel: Equatable {
    fileprivate let tips: [Tip]
    let selectedIndex: Int
    var count: Int {
        return tips.count
    }
    
    var description: String {
        let tip = self.tips[self.selectedIndex]
        return tip.description
    }
    
    init(tips: [Tip], selectedIndex: Int) {
        self.tips = tips
        self.selectedIndex = selectedIndex
    }
    
    func getTipValueAt(index: Int) -> String {
        let tip = self.tips[index]
        return "R$ \(tip.value)"
    }
}

extension RideCompletionViewModel {
    func viewModelWith(selectedIndex: Int) -> RideCompletionViewModel{
        return RideCompletionViewModel(tips: self.tips, selectedIndex: selectedIndex)
    }
}

func ==(lhs: RideCompletionViewModel, rhs: RideCompletionViewModel) -> Bool {
    let equalSelectedIndex = lhs.selectedIndex == rhs.selectedIndex
    let equalTip = lhs.tips == rhs.tips
    return equalSelectedIndex && equalTip
}
