{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 9,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 100.0, 100.0, 900.0, 800.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 
			{
				"box" : 				{
					"id" : "obj-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 15.0, 400.0, 20.0 ],
					"text" : "WEBCAM PIANO - Jitter ile Görüntüden Piyano Çalma",
					"fontsize" : 16.0,
					"fontface" : 1
				}
			},
			{
				"box" : 				{
					"id" : "obj-instructions",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 40.0, 550.0, 20.0 ],
					"text" : "1. Toggle'ı aç  2. Parlak renkli bir nesne kullan (yeşil önerilir)  3. Renk slider ile ayarla"
				}
			},
			{
				"box" : 				{
					"id" : "obj-toggle-cam",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 50.0, 80.0, 50.0, 50.0 ]
				}
			},
			{
				"box" : 				{
					"id" : "obj-label-toggle",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 95.0, 100.0, 20.0 ],
					"text" : "Kamera AÇ/KAPA"
				}
			},
			{
				"box" : 				{
					"id" : "obj-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 50.0, 145.0, 71.0, 22.0 ],
					"text" : "qmetro 33"
				}
			},
			{
				"box" : 				{
					"id" : "obj-grab",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 50.0, 185.0, 170.0, 22.0 ],
					"text" : "jit.grab 320 240 @unique 1"
				}
			},
			{
				"box" : 				{
					"id" : "obj-cam-display",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 500.0, 80.0, 320.0, 240.0 ]
				}
			},
			{
				"box" : 				{
					"id" : "obj-label-cam",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 55.0, 150.0, 20.0 ],
					"text" : "Kamera Görüntüsü",
					"fontface" : 1
				}
			},
			{
				"box" : 				{
					"id" : "obj-rgb2hsl",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 50.0, 225.0, 80.0, 22.0 ],
					"text" : "jit.rgb2hsl"
				}
			},
			{
				"box" : 				{
					"id" : "obj-unpack-hsl",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "jit_matrix", "jit_matrix", "jit_matrix", "" ],
					"patching_rect" : [ 50.0, 265.0, 180.0, 22.0 ],
					"text" : "jit.unpack 4 char"
				}
			},
			{
				"box" : 				{
					"id" : "obj-label-hue",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 260.0, 185.0, 120.0, 20.0 ],
					"text" : "Hedef Renk (Hue)"
				}
			},
			{
				"box" : 				{
					"id" : "obj-hue-swatch",
					"maxclass" : "swatch",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 210.0, 180.0, 80.0 ]
				}
			},
			{
				"box" : 				{
					"id" : "obj-route-hsl",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 260.0, 300.0, 95.0, 22.0 ],
					"text" : "unpack 0. 0. 0. 0."
				}
			},
			{
				"box" : 				{
					"id" : "obj-hue-val",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 335.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : 				{
					"id" : "obj-label-tol",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 340.0, 335.0, 60.0, 20.0 ],
					"text" : "Tolerans"
				}
			},
			{
				"box" : 				{
					"id" : "obj-tol-dial",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 405.0, 310.0, 50.0, 50.0 ],
					"size" : 1.0
				}
			},
			{
				"box" : 				{
					"id" : "obj-tol-val",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 405.0, 365.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : 				{
					"id" : "obj-scale-hue",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 260.0, 370.0, 110.0, 22.0 ],
					"text" : "scale 0. 360. 0. 1."
				}
			},
			{
				"box" : 				{
					"id" : "obj-pak-op",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 260.0, 405.0, 70.0, 22.0 ],
					"text" : "pak val 0.33"
				}
			},
			{
				"box" : 				{
					"id" : "obj-op-hue",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 50.0, 310.0, 220.0, 22.0 ],
					"text" : "jit.op @op absdiff @val 0.33"
				}
			},
			{
				"box" : 				{
					"id" : "obj-pak-thresh",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.0, 405.0, 70.0, 22.0 ],
					"text" : "pak val 0.15"
				}
			},
			{
				"box" : 				{
					"id" : "obj-thresh",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 50.0, 355.0, 180.0, 22.0 ],
					"text" : "jit.op @op < @val 0.15"
				}
			},
			{
				"box" : 				{
					"id" : "obj-thresh-display",
					"maxclass" : "jit_pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 500.0, 350.0, 320.0, 240.0 ]
				}
			},
			{
				"box" : 				{
					"id" : "obj-label-thresh",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 325.0, 180.0, 20.0 ],
					"text" : "Renk Tespiti (Beyaz = Algılandı)",
					"fontface" : 1
				}
			},
			{
				"box" : 				{
					"id" : "obj-findbounds",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 50.0, 400.0, 100.0, 22.0 ],
					"text" : "jit.findbounds"
				}
			},
			{
				"box" : 				{
					"id" : "obj-route-bounds",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 50.0, 440.0, 100.0, 22.0 ],
					"text" : "route min max"
				}
			},
			{
				"box" : 				{
					"id" : "obj-unpack-min",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 50.0, 480.0, 60.0, 22.0 ],
					"text" : "unpack 0 0"
				}
			},
			{
				"box" : 				{
					"id" : "obj-unpack-max",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 130.0, 480.0, 60.0, 22.0 ],
					"text" : "unpack 0 0"
				}
			},
			{
				"box" : 				{
					"id" : "obj-calc-center-x",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 50.0, 520.0, 100.0, 22.0 ],
					"text" : "+"
				}
			},
			{
				"box" : 				{
					"id" : "obj-div2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 50.0, 555.0, 32.0, 22.0 ],
					"text" : "/ 2"
				}
			},
			{
				"box" : 				{
					"id" : "obj-pos-x",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 50.0, 590.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : 				{
					"id" : "obj-label-pos",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 115.0, 590.0, 100.0, 20.0 ],
					"text" : "X Pozisyonu"
				}
			},
			{
				"box" : 				{
					"id" : "obj-scale-note",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 630.0, 130.0, 22.0 ],
					"text" : "scale 0 320 48 84"
				}
			},
			{
				"box" : 				{
					"id" : "obj-int",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 50.0, 665.0, 28.0, 22.0 ],
					"text" : "int"
				}
			},
			{
				"box" : 				{
					"id" : "obj-change",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 50.0, 700.0, 60.0, 22.0 ],
					"text" : "change"
				}
			},
			{
				"box" : 				{
					"id" : "obj-current-note",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 50.0, 735.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : 				{
					"id" : "obj-label-note",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 115.0, 735.0, 130.0, 20.0 ],
					"text" : "Aktif MIDI Nota (C2-C6)"
				}
			},
			{
				"box" : 				{
					"id" : "obj-send-note",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 735.0, 100.0, 22.0 ],
					"text" : "s webcam_note"
				}
			},
			{
				"box" : 				{
					"id" : "obj-send-vel",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 735.0, 90.0, 22.0 ],
					"text" : "s webcam_vel"
				}
			},
			{
				"box" : 				{
					"id" : "obj-vel",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.0, 700.0, 35.0, 22.0 ],
					"text" : "100"
				}
			},
			{
				"box" : 				{
					"id" : "obj-kslider",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 500.0, 620.0, 336.0, 53.0 ],
					"range" : 36
				}
			},
			{
				"box" : 				{
					"id" : "obj-label-kslider",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 595.0, 200.0, 20.0 ],
					"text" : "Görsel Piyano (3 Oktav)",
					"fontface" : 1
				}
			},
			{
				"box" : 				{
					"id" : "obj-loadbang",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 260.0, 440.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}
			},
			{
				"box" : 				{
					"id" : "obj-init-hue",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 260.0, 480.0, 80.0, 22.0 ],
					"text" : "0.33 1. 1. 1."
				}
			},
			{
				"box" : 				{
					"id" : "obj-init-tol",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.0, 480.0, 35.0, 22.0 ],
					"text" : "0.15"
				}
			},
			{
				"box" : 				{
					"id" : "obj-offset-kslider",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 500.0, 680.0, 40.0, 22.0 ],
					"text" : "- 48"
				}
			}
		],
		"lines" : [ 
			{
				"patchline" : 				{
					"source" : [ "obj-toggle-cam", 0 ],
					"destination" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-metro", 0 ],
					"destination" : [ "obj-grab", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-grab", 0 ],
					"destination" : [ "obj-rgb2hsl", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-grab", 0 ],
					"destination" : [ "obj-cam-display", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-rgb2hsl", 0 ],
					"destination" : [ "obj-unpack-hsl", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-unpack-hsl", 1 ],
					"destination" : [ "obj-op-hue", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-op-hue", 0 ],
					"destination" : [ "obj-thresh", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-thresh", 0 ],
					"destination" : [ "obj-findbounds", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-thresh", 0 ],
					"destination" : [ "obj-thresh-display", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-findbounds", 0 ],
					"destination" : [ "obj-route-bounds", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-route-bounds", 0 ],
					"destination" : [ "obj-unpack-min", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-route-bounds", 1 ],
					"destination" : [ "obj-unpack-max", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-unpack-min", 0 ],
					"destination" : [ "obj-calc-center-x", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-unpack-max", 0 ],
					"destination" : [ "obj-calc-center-x", 1 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-calc-center-x", 0 ],
					"destination" : [ "obj-div2", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-div2", 0 ],
					"destination" : [ "obj-pos-x", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-pos-x", 0 ],
					"destination" : [ "obj-scale-note", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-scale-note", 0 ],
					"destination" : [ "obj-int", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-int", 0 ],
					"destination" : [ "obj-change", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-change", 0 ],
					"destination" : [ "obj-current-note", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-current-note", 0 ],
					"destination" : [ "obj-send-note", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-current-note", 0 ],
					"destination" : [ "obj-offset-kslider", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-offset-kslider", 0 ],
					"destination" : [ "obj-kslider", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-change", 0 ],
					"destination" : [ "obj-vel", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-vel", 0 ],
					"destination" : [ "obj-send-vel", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-hue-swatch", 0 ],
					"destination" : [ "obj-route-hsl", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-route-hsl", 0 ],
					"destination" : [ "obj-hue-val", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-hue-val", 0 ],
					"destination" : [ "obj-scale-hue", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-scale-hue", 0 ],
					"destination" : [ "obj-pak-op", 1 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-pak-op", 0 ],
					"destination" : [ "obj-op-hue", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-tol-dial", 0 ],
					"destination" : [ "obj-tol-val", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-tol-val", 0 ],
					"destination" : [ "obj-pak-thresh", 1 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-pak-thresh", 0 ],
					"destination" : [ "obj-thresh", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-loadbang", 0 ],
					"destination" : [ "obj-init-hue", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-loadbang", 0 ],
					"destination" : [ "obj-init-tol", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-init-hue", 0 ],
					"destination" : [ "obj-hue-swatch", 0 ]
				}
			},
			{
				"patchline" : 				{
					"source" : [ "obj-init-tol", 0 ],
					"destination" : [ "obj-tol-val", 0 ]
				}
			}
		]
	}
}
