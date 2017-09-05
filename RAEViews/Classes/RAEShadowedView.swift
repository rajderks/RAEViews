import UIKit

@IBDesignable
class RAEShadowedView: UIView
{
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet(color) {
            layer.borderColor = color?.cgColor
        }
    }
    
    @IBInspectable var shadowOffsetX:CGFloat = 0
    @IBInspectable var shadowOffsetY:CGFloat = 0
    @IBInspectable var shadowColor: UIColor?
    {
        didSet(color) {
            self.layer.shadowColor = color?.cgColor
        }
    }
    @IBInspectable var shadowOpacity:Float = 0
    {
        didSet {
            self.layer.shadowOpacity = shadowOpacity
        }
    }
    @IBInspectable var shadowRadius:CGFloat = 0
    {
        didSet(radius) {
            self.layer.shadowRadius = radius
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize.init(width: self.shadowOffsetX, height: self.shadowOffsetY)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize.init(width: self.shadowOffsetX, height: self.shadowOffsetY)
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.layer.shadowOffset = CGSize.init(width: self.shadowOffsetX, height: self.shadowOffsetY)
//        self.layer.shadowColor = self.shadowColor?.cgColor
//        self.layer.shadowOpacity = Float(self.shadowOpacity)
//        self.layer.shadowRadius = self.shadowRadius
//        self.layer.borderColor = self.borderColor?.cgColor
//        self.layer.borderWidth = self.borderWidth
//        self.layer.cornerRadius = self.cornerRadius
//        self.layer.masksToBounds = false
//        self.layer.shadowOffset = CGSize.init(width: self.shadowOffsetX, height: self.shadowOffsetY)
//        self.layer.shadowRadius = self.shadowRadius
//        self.layer.shadowOpacity = Float(self.shadowOpacity)
//        self.layer.shadowColor = self.shadowColor!.cgColor
    }
}
