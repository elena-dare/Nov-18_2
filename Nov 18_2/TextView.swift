//
//  TextView.swift
//  Nov 18_2
//
//  Created by Elena Da Re on 11/23/14.
//  Copyright (c) 2014 Elena Da Re. All rights reserved.
//

import UIKit

class TextView: UIView {
	
	override init() {
		super.init(frame: CGRectZero);
		//If the superview of this LittleView1 changes size,
		//make this LittleView1 change size with it.
		autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight;
		backgroundColor = UIColor.whiteColor();
	}
	
	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		backgroundColor = UIColor.whiteColor();
	}
	
	override func drawRect(rect: CGRect) {
		// Drawing code
		
		//Add the background image fo the sea 3
		let image: UIImage? = UIImage(named: "sea3.png");
		if image == nil {
			println("could not find sea3.png");
			return;
		}
		
		//upper left corner of image
		let newpoint: CGPoint = CGPointMake(0, 0);
		
		image!.drawAtPoint(newpoint);
		
		let font: UIFont = UIFont.systemFontOfSize(14);
		let attributes: [NSObject: AnyObject] = [NSFontAttributeName: font]; //a dictionary
		
		let screen: UIScreen = UIScreen.mainScreen();
		let applicationFrame: CGRect = screen.applicationFrame;
		let point: CGPoint = applicationFrame.origin;
		
		let s: String =
		
		"\n" +
		"\n" +
		
		"\t Somewhere beyond the sea \n" +
		"\t somewhere waiting for me \n" +
		"\t my lover stands on golden sands \n" +
		"\t and watches the ships that go sailin' \n" +
		
		"\t Somewhere beyond the sea \n" +
		"\t she's there watching for me \n" +
		"\t If I could fly like birds on high \n" +
		"\t then straight to her arms\n" +
		"\t I'd go sailin' \n" +
		
		"\t It's far beyond the stars \n" +
		"\t it's near beyond the moon \n" +
		"\t I know beyond a doubt \n" +
		"\t my heart will lead me there soon \n" +
		
		"\t We'll meet beyond the shore \n" +
		"\t we'll kiss just as before \n" +
		"\t Happy we'll feel beyond the sea \n" +
		"\t and never again I'll go sailin' \n" +
		
		"\t I know beyond a doubt \n" +
		"\t my heart will lead me there soon \n" +
		"\t We'll meet (I know we'll meet) beyond the shore \n" +
		"\t We'll kiss just like before \n" +
		"\t Happy we'll be beyond the sea \n" +
		"\t and never again I'll go sailin' \n" +
		
		"\t no more sailin' \n" +
		"\t so long sailin' \n" +
		"\t bye bye sailin'... \n" +
		"\t move on out captain \n" +
		
		"\n" +
		"\n" +
		
		"\t Frank Sinatra - Somewhere beyond the sea";
	
		
		s.drawAtPoint(point, withAttributes: attributes);
		

	}
	
}


