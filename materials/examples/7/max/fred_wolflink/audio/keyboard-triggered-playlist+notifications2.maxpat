{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 701.0, 167.0, 955.0, 817.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 158.0, 38.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 158.0, 6.0, 50.5, 22.0 ],
					"style" : "",
					"text" : "keyup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 158.0, 141.0, 50.0, 22.0 ],
					"style" : "",
					"text" : "loop $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 158.0, 109.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"clipheight" : 29.0,
					"data" : 					{
						"clips" : [ 							{
								"filename" : "KINGSTON:/EoM I/Max demos/sounds/choke.wav",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"formant" : [ 1.0 ],
									"timestretch" : [ 0 ],
									"quality" : [ "basic" ],
									"mode" : [ "basic" ],
									"formantcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"basictuning" : [ 440 ],
									"originaltempo" : [ 120.0 ],
									"originallengthms" : [ 0.0 ],
									"play" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchcorrection" : [ 0 ],
									"speed" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "KINGSTON:/EoM I/Max demos/sounds/clap.wav",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"formant" : [ 1.0 ],
									"timestretch" : [ 0 ],
									"quality" : [ "basic" ],
									"mode" : [ "basic" ],
									"formantcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"basictuning" : [ 440 ],
									"originaltempo" : [ 120.0 ],
									"originallengthms" : [ 0.0 ],
									"play" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchcorrection" : [ 0 ],
									"speed" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "KINGSTON:/EoM I/Max demos/sounds/cluck.wav",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"formant" : [ 1.0 ],
									"timestretch" : [ 0 ],
									"quality" : [ "basic" ],
									"mode" : [ "basic" ],
									"formantcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"basictuning" : [ 440 ],
									"originaltempo" : [ 120.0 ],
									"originallengthms" : [ 0.0 ],
									"play" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchcorrection" : [ 0 ],
									"speed" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "KINGSTON:/EoM I/Max demos/sounds/huuuh.wav",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"formant" : [ 1.0 ],
									"timestretch" : [ 0 ],
									"quality" : [ "basic" ],
									"mode" : [ "basic" ],
									"formantcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"basictuning" : [ 440 ],
									"originaltempo" : [ 120.0 ],
									"originallengthms" : [ 0.0 ],
									"play" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchcorrection" : [ 0 ],
									"speed" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "KINGSTON:/EoM I/Max demos/sounds/pop.wav",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"formant" : [ 1.0 ],
									"timestretch" : [ 0 ],
									"quality" : [ "basic" ],
									"mode" : [ "basic" ],
									"formantcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"basictuning" : [ 440 ],
									"originaltempo" : [ 120.0 ],
									"originallengthms" : [ 0.0 ],
									"play" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchcorrection" : [ 0 ],
									"speed" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "KINGSTON:/EoM I/Max demos/sounds/popp.wav",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"formant" : [ 1.0 ],
									"timestretch" : [ 0 ],
									"quality" : [ "basic" ],
									"mode" : [ "basic" ],
									"formantcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"basictuning" : [ 440 ],
									"originaltempo" : [ 120.0 ],
									"originallengthms" : [ 0.0 ],
									"play" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchcorrection" : [ 0 ],
									"speed" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "KINGSTON:/EoM I/Max demos/sounds/snap.wav",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"formant" : [ 1.0 ],
									"timestretch" : [ 0 ],
									"quality" : [ "basic" ],
									"mode" : [ "basic" ],
									"formantcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"basictuning" : [ 440 ],
									"originaltempo" : [ 120.0 ],
									"originallengthms" : [ 0.0 ],
									"play" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchcorrection" : [ 0 ],
									"speed" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "KINGSTON:/EoM I/Max demos/sounds/sssssss.wav",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"formant" : [ 1.0 ],
									"timestretch" : [ 0 ],
									"quality" : [ "basic" ],
									"mode" : [ "basic" ],
									"formantcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"basictuning" : [ 440 ],
									"originaltempo" : [ 120.0 ],
									"originallengthms" : [ 0.0 ],
									"play" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchcorrection" : [ 0 ],
									"speed" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "KINGSTON:/EoM I/Max demos/sounds/ssst.wav",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"formant" : [ 1.0 ],
									"timestretch" : [ 0 ],
									"quality" : [ "basic" ],
									"mode" : [ "basic" ],
									"formantcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"basictuning" : [ 440 ],
									"originaltempo" : [ 120.0 ],
									"originallengthms" : [ 0.0 ],
									"play" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchcorrection" : [ 0 ],
									"speed" : [ 1.0 ]
								}

							}
, 							{
								"filename" : "KINGSTON:/EoM I/Max demos/sounds/uuunn.wav",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"formant" : [ 1.0 ],
									"timestretch" : [ 0 ],
									"quality" : [ "basic" ],
									"mode" : [ "basic" ],
									"formantcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"basictuning" : [ 440 ],
									"originaltempo" : [ 120.0 ],
									"originallengthms" : [ 0.0 ],
									"play" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchcorrection" : [ 0 ],
									"speed" : [ 1.0 ]
								}

							}
 ]
					}
,
					"id" : "obj-7",
					"maxclass" : "playlist~",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"patching_rect" : [ 68.0, 171.0, 150.0, 300.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 414.0, 495.0, 300.0, 100.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 234.0, 495.0, 164.0, 122.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 103.0, 490.0, 115.0, 16.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 68.0, 141.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 68.0, 114.0, 52.0, 22.0 ],
					"style" : "",
					"text" : "split 0 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 68.0, 87.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 68.0, 61.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "- 48"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 68.0, 34.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 68.0, 6.0, 50.5, 22.0 ],
					"style" : "",
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "gain~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 68.0, 490.0, 22.0, 140.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 68.0, 640.0, 45.0, 45.0 ],
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "choke.wav",
				"bootpath" : "/Volumes/KINGSTON/EoM I/Max demos/sounds",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "clap.wav",
				"bootpath" : "/Volumes/KINGSTON/EoM I/Max demos/sounds",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "cluck.wav",
				"bootpath" : "/Volumes/KINGSTON/EoM I/Max demos/sounds",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "huuuh.wav",
				"bootpath" : "/Volumes/KINGSTON/EoM I/Max demos/sounds",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "pop.wav",
				"bootpath" : "/Volumes/KINGSTON/EoM I/Max demos/sounds",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "popp.wav",
				"bootpath" : "/Volumes/KINGSTON/EoM I/Max demos/sounds",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "snap.wav",
				"bootpath" : "/Volumes/KINGSTON/EoM I/Max demos/sounds",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "sssssss.wav",
				"bootpath" : "/Volumes/KINGSTON/EoM I/Max demos/sounds",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "ssst.wav",
				"bootpath" : "/Volumes/KINGSTON/EoM I/Max demos/sounds",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "uuunn.wav",
				"bootpath" : "/Volumes/KINGSTON/EoM I/Max demos/sounds",
				"type" : "WAVE",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
