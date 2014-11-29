//
//  TextView.swift
//  Nov 18_2
//
//  Created by Elena Da Re on 11/23/14.
//  Copyright (c) 2014 Elena Da Re. All rights reserved.
//

import UIKit

class TextView: UITextView {
	
	override init() {
		super.init(frame: CGRectZero, textContainer: nil);
		//If the superview of this TextView changes size,
		//make this TextView change size with it.
		autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight;
		backgroundColor = UIColor.whiteColor();
		
		//If this view is touched, do not pop up a keyboard.
		editable = false;
		
		//If this view is touched, do not let this view react to the touch.
		//This view's superview object (i.e., the View in View.swift)
		//will be the one that reacts to the touch.
		userInteractionEnabled = false;
		
		textColor = UIColor.blackColor();
		font = UIFont(name: "Times New Roman", size: 16);
		
		text =
		
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
	}
	
}


