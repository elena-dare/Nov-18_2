//
//  FishView.swift
//  Nov 18_2
//
//  Created by Elena Da Re on 11/23/14.
//  Copyright (c) 2014 Elena Da Re. All rights reserved.
//

import UIKit

class FishView: UIView {
	
	let fish: UIImageView = UIImageView(image: UIImage(named: "fishimage.png"));
	
	override init() {
		super.init(frame: CGRectZero);
		//If the superview of this FishView changes size,
		//make this FishView change size with it.
		autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight;
	}
	
	
	required init(coder aDecoder: NSCoder) {
		
		super.init(coder: aDecoder)
		backgroundColor = UIColor.whiteColor();
		
	}
	
	override func drawRect(rect: CGRect) {
		
		let height: CGFloat = bounds.size.height;
		let size: CGFloat = bounds.size.width;
		
		
		//Add the background image fo the sea
		let image: UIImage? = UIImage(named: "sea2.png");
		if image == nil {
			println("could not find sea2.png");
			return;
		}
		
		//upper left corner of image
		let point: CGPoint = CGPointMake(0, 0);
		
		image!.drawAtPoint(point);
		
		
		//Start adding the fish
		
		for var i = 0; i < 20; ++i {
			
			// set up some constants for the animation
			let duration = 15.0
			let delay: NSTimeInterval = 2.0;
			//let delay =  NSTimeInterval( ((Int(rand()) %  900)+100.0) / 1000.0)
			
			//let dmin = 0.9
			//let dmax = 1.0
			//let delay: NSTimeInterval = NSTimeInterval( (arc4random() % (dmax - dmin + 1)) + dmin );
			
			let options = UIViewAnimationOptions.CurveLinear | UIViewAnimationOptions.Repeat
			
			// random numbers for the fish size
			let fmin = Int (bounds.size.width * 60/375)
			let fmax = Int (bounds.size.width * 100/375)
			let fsize: CGFloat = CGFloat( (arc4random() % (fmax - fmin + 1)) + fmin );
			
			
			//random numbers for the fish y position
			let ymin = Int (bounds.size.height * 20/667)
			let ymax = Int (bounds.size.height * 500/667)
			let yposition: CGFloat = CGFloat( (arc4random() % (ymax - ymin + 1)) + ymin );
		
			
			//random numbers for the fish x position
			let xmin = Int (bounds.size.width * 100/375)
			let xmax = Int (bounds.size.width * 1000/375)
			let xrandom: CGFloat = CGFloat( (arc4random() % (xmax - xmin + 1)) + xmin );
			
			let xposition: CGFloat = -xrandom;
			
			// position the fish again inside the loop
			let fish: UIImageView = UIImageView(image: UIImage(named: "fishimage.png"));
			
			fish.frame = CGRectMake(xposition, yposition, fsize, fsize)
			self.addSubview(fish)
			
			// define the animation
			UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
				
				// move the fish
				fish.frame = CGRectMake(4*size + xposition, yposition, fsize, fsize)
				
				},
				completion: nil /*{ animationFinished in
					
					// remove the fish
					fish.removeFromSuperview()}*/
			);
		}
	}
	
}
