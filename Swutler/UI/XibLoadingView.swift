//
//  XibLoadingView.swift
//  RestaurantKaart
//
//  Created by Joost van der Waal on 27/10/2017.
//  Copyright © 2017 Elements Interactive. All rights reserved.
//

import UIKit

open class XibLoadingView: UIView {

    var contentView : UIView?
    
    open var useXibSize : Bool { return false }
    
    var xibSize : CGSize = .zero

    override open var intrinsicContentSize: CGSize {
        if useXibSize {
            return xibSize
        }
        
        return contentView?.intrinsicContentSize ?? .zero
    }

    override open func sizeThatFits(_ size: CGSize) -> CGSize {
        if useXibSize {
            return xibSize
        }
        
        return contentView?.sizeThatFits(size) ?? .zero
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    private func xibSetup() {
        let view = loadViewFromXib()
        xibSize = view.frame.size
        view.frame = bounds
        addSubview(view)
        sendSubview(toBack: view)
        
        contentView = view
    }

    private func loadViewFromXib() -> UIView {
        let nib = UINib(nibName: String(describing: type(of:self)), bundle: Bundle(for: type(of:self)))
        if let cView = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            return cView
        }
        else {
            print("Unable to load custom view!")
            return UIView()
        }
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        contentView?.frame = bounds
    }
}
