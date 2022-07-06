import UIKit

class CategoryItemCollectionViewCell: UICollectionViewCell {
    private lazy var imageBanner: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.image = UIImage(named: "foto7")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleImage: UILabel = {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        title.text = "Músicas Típicas"
        title.textColor = .magentaEKO
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    private lazy var subTitle: UILabel = {
        let subTitle = UILabel()
        subTitle.font = UIFont.systemFont(ofSize: 12)
        subTitle.text = "Povo Kayapó"
        subTitle.textColor = .magentaEKO
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        return subTitle
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildLayout()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CategoryItemCollectionViewCell: ViewCode {
    func configureViews() {
        backgroundColor = .clear
    }
    
    func buildViewHierarchy() {
        contentView.addSubview(imageBanner)
        contentView.addSubview(titleImage)
        contentView.addSubview(subTitle)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            imageBanner.topAnchor.constraint(equalTo: topAnchor),
            imageBanner.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageBanner.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageBanner.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            titleImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            titleImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleImage.bottomAnchor.constraint(equalTo: subTitle.topAnchor, constant: -4)
        ])
        NSLayoutConstraint.activate([
            subTitle.leadingAnchor.constraint(equalTo: titleImage.leadingAnchor),
            subTitle.trailingAnchor.constraint(equalTo: trailingAnchor),
            subTitle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
}