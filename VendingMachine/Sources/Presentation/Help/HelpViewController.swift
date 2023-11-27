import UIKit
import SnapKit
import Then

final class HelpViewController: UIViewController {
    
    private let backgroundImageView = UIImageView().then{
        $0.image = UIImage(named: "HelpBackground.png")
    }
    
    private lazy var goBackButton = UIButton().then{
        $0.setTitle("돌아가기", for: .normal)
        $0.setTitleColor(UIColor(rgb: 0x000000), for: .normal)
        $0.backgroundColor = UIColor(rgb: 0xFFFFFF)
        $0.titleLabel?.font = .Vending(size: 35, family: .bold)
        $0.layer.cornerRadius = 40
        $0.clipsToBounds = true
        $0.addTarget(self, action: #selector(goBackButtonTapped), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        view.addSubview(backgroundImageView)
        view.addSubview(goBackButton)
        
        setLayout()
    
    }
    
    func setLayout(){
        self.backgroundImageView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        self.goBackButton.snp.makeConstraints{
            $0.height.equalTo(80)
            $0.width.equalTo(270)
            $0.bottom.equalToSuperview().inset(357)
            $0.centerX.equalToSuperview()
        }
    }
    
    @objc func goBackButtonTapped(_ sender: UIButton){
        self.navigationController?.popToRootViewController(animated: true)
    }
}

