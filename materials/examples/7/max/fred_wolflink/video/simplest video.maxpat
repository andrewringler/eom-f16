{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 0,
			"revision" : 4,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 261.0, 408.0, 758.0, 637.0 ],
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
					"id" : "obj-5",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 75.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "jit.pwindow",
					"name" : "u126000908",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 151.0, 235.0, 174.0 ]
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"clips" : [ 							{
								"filename" : "Macintosh HD:/Users/fredless/Desktop/TiNM - SU15/max/wizard.mov",
								"filekind" : "moviefile",
								"loop" : 1,
								"content_state" : 								{
									"outputmode" : [ 1 ],
									"out_name" : [ "u686000872" ],
									"dim" : [ 1, 1 ],
									"position" : [ 0.0 ],
									"time_secs" : [ 0.0 ],
									"autostart" : [ 1 ],
									"usedstrect" : [ 0 ],
									"vol" : [ 1.0 ],
									"unique" : [ 0 ],
									"usesrcrect" : [ 0 ],
									"loopstart" : [ 0 ],
									"texture_name" : [ "u648000870" ],
									"time" : [ 0 ],
									"output_texture" : [ 0 ],
									"colormode" : [ "argb" ],
									"dstrect" : [ 0, 0, 1, 1 ],
									"rate" : [ 1.0 ],
									"automatic" : [ 0 ],
									"looppoints" : [ 0, 0 ],
									"adapt" : [ 1 ],
									"loopend" : [ 0 ],
									"loopreport" : [ 0 ],
									"interp" : [ 0 ],
									"drawto" : [ "" ],
									"srcrect" : [ 0, 0, 1, 1 ],
									"engine" : [ "avf" ],
									"framereport" : [ 0 ],
									"moviefile" : [ "" ]
								}

							}
 ]
					}
,
					"id" : "obj-2",
					"maxclass" : "jit.playlist",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "", "dictionary" ],
					"patching_rect" : [ 30.0, 110.0, 150.0, 30.0 ],
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "wizard.mov",
				"bootpath" : "~/Desktop/TiNM - SU15/max",
				"type" : "MooV",
				"implicit" : 1
			}
 ],
		"embedsnapshot" : 0
	}

}
