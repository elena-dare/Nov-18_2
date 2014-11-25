//
//  New.swift
//  Nov 18_2
//
//  Created by Elena Da Re on 11/23/14.
//  Copyright (c) 2014 Elena Da Re. All rights reserved.
//

import UIKit

class New: UITextView {
		
		required init(coder aDecoder: NSCoder) {
			super.init(coder: aDecoder);
			
			backgroundColor = UIColor.yellowColor();
			textColor = UIColor.blackColor();
			font = UIFont(name: "Times New Roman", size: 16);
			editable = false;	//Don't pop up a keyboard when touched.
			
			//One long string.  Can contain newline characters.
			text =
				"\n" +
				"Two households, both alike in dignity,\n" +
				"In fair Verona, where we lay our scene,\n" +
				"From ancient grudge break to new mutiny,\n" +
				"Where civil blood makes civil hands unclean.\n\n" +
				
				"From forth the fatal loins of these two foes\n" +
				"A pair of star-cross’d lovers take their life;\n" +
				"Whose misadventur’d piteous overthrows\n" +
				"Doth with their death bury their parents’ strife.\n\n" +
				
				"The fearful passage of their death-mark’d love,\n" +
				"And the continuance of their parents’ rage,\n" +
				"Which, but their children’s end, naught could remove,\n" +
				"Is now the two hours’ traffic of our stage;\n\n" +
				
				"The which if you with patient ears attend,\n" +
			"What here shall miss, our toil shall strive to mend.\n\n";
			
			//Append another line to text.  Indent with 2 tabs.
			text = text + "\t\tRomeo and Juliet, Prologue 1–14";
		}
		
		/*
		// Only override drawRect: if you perform custom drawing.
		// An empty implementation adversely affects performance during animation.
		override func drawRect(rect: CGRect)
		{
		// Drawing code
		}
		*/
		
}
