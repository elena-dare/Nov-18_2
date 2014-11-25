//
//  View.swift
//  Nov 18_2
//
//  Created by Elena Da Re on 11/23/14.
//  Copyright (c) 2014 Elena Da Re. All rights reserved.
//

import UIKit

class View: UIView {
	
	let allViews: [UIView] = [FishView(), TextView()];
	
	var index: Int = 0; //index is the array property, which view is displayed first
	
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder);
		//Make the array views the same size as this View.
		allViews[index].frame = bounds;
		addSubview(allViews[index]);
	}
	
	override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
		let newIndex: Int = 1 - index;	//to pass from one view to another
		
		//Make allViews[newIndex] the same size as this View.
		allViews[newIndex].frame = bounds;
		
		UIView.transitionFromView(allViews[index], toView: allViews[newIndex], duration: 2.25, options: UIViewAnimationOptions.TransitionCurlUp, completion: nil);
		
		index = newIndex;
	}

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
	
	

}
