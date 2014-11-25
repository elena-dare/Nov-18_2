//
//  ViewController.swift
//  Nov 18_2
//
//  Created by Elena Da Re on 11/23/14.
//  Copyright (c) 2014 Elena Da Re. All rights reserved.
//

import UIKit;
import AVFoundation;	//for AVAudioPlayer

class ViewController: UIViewController {
	
	//a property, to make it live as long as the ViewController
	var player: AVAudioPlayer?;
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let bundle: NSBundle = NSBundle.mainBundle();
		println("bundle.bundlePath = \"\(bundle.bundlePath)\"\n");
		
		//The path is the filename.
		let path: String? = bundle.pathForResource("Sea", ofType: "mp3");
		if path == nil {
			println("could not find the path");
			return;
		}
		println("path = \"\(path!)\"\n");
		
		let url: NSURL? = NSURL(fileURLWithPath: path!, isDirectory: false);
		if url == nil {
			println("could not create url");
			return;
		}
		println("url = \"\(url!)\"\n");
		
		var error: NSError?;
		player = AVAudioPlayer(contentsOfURL: url!, error: &error);
		if player == nil {
			println("could not create AVAudioPlayer: \(error!)");
			return;
		}
		
		player!.volume = 1.0;		//the default
		player!.pan = 0.0;			//left vs. right
		player!.numberOfLoops = 0;	//negative number for infinite loop
		println("player!.numberOfChannels = \(player!.numberOfChannels)"); //mono or stereo
		
		if !player!.prepareToPlay() {	//! means "not"
			println("could not prepare to play");
			return;
		}
		
		if !player!.play() {
			println("could not play");
		}
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
}

