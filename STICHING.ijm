//**********************************************Stitching cuadrantes mosaico********************************


//**********************************************Stitching cuadrantes mosaico 3x3********************************

var direccion="D:/2021E-A/3D ALE/decnsp"; //donde se encuentra las carpetas. ejemplo "/Volumes/ADATA UFD"


//no modificar estas variables
var a=1;
var b=2;
var c=3;
var z=true;

for(i=1;i<=3;i++){

open(direccion+"/C"+a+"-D.tif");
open(direccion+"/C"+b+"-D.tif");
run("Pairwise stitching", "first_image=C"+a+"-D.tif second_image=C"+b+"-D.tif fusion_method=[Linear Blending] fused_image=C"+a+"-D.tif<->C"+b+"-D.tif check_peaks=65 compute_overlap x=0 y=0 z=0 registration_channel_image_1=[Average all channels] registration_channel_image_2=[Average all channels]"); 
saveAs("Tiff",direccion+"/Stitching/C"+a+"C"+b+".tif");
run("Close");
run("Close");
run("Close");
open(direccion+"/Stitching/C"+a+"C"+b+".tif");
open(direccion+"/C"+c+"-D.tif");
run("Pairwise stitching", "first_image=C"+a+"C"+b+".tif second_image=C"+c+"-D.tif fusion_method=[Linear Blending] fused_image=C"+a+"C"+b+".tif<->C"+c+"-D.tif check_peaks=65 compute_overlap x=0 y=0 z=0 registration_channel_image_1=[Average all channels] registration_channel_image_2=[Average all channels]"); 
saveAs("Tiff",direccion+"/Stitching/C"+a+"C"+b+"C"+c+".tif");
saveAs("Tiff",direccion+"/Stitching/Reconstrucción/"+i+"-D.tif");
run("Close");
run("Close");
run("Close");

if(z==true){
a=a+5;
b=b+3;
c=c+1;
z=false;
}
else{
	a=a+1;
	b=b+3;
	c=c+5;	
	z=true;
	
}

}

//**********************************************Stitching cuadrantes mosaico 7x7********************************

var direccion="D:/2021E-A/3D ALE/decnsp/Stitching"; //donde se encuentra las carpetas. ejemplo "/Volumes/ADATA UFD"


//no modificar estas variables
var a=15;
var b=16;
var c=17;
var d=18;
var e=19;
var f=20;
var g=21;
var z=true;

for(i=1;i<=7;i++)
{

	open(direccion+"/C"+a+"-D.tif");
	open(direccion+"/C"+b+"-D.tif");
	run("Pairwise stitching", "first_image=C"+a+"-D.tif second_image=C"+b+"-D.tif fusion_method=[Linear Blending] fused_image=C"+a+"-D.tif<->C"+b+"-D.tif check_peaks=65 compute_overlap x=0 y=0 z=0 registration_channel_image_1=[Average all channels] registration_channel_image_2=[Average all channels]"); 
	saveAs("Tiff",direccion+"/Stitching/C"+a+"C"+b+".tif");
	run("Close");
	run("Close");
	run("Close");
	open(direccion+"/Stitching/C"+a+"C"+b+".tif");
	open(direccion+"/C"+c+"/C"+c+"-D.tif");
	run("Pairwise stitching", "first_image=C"+a+"C"+b+".tif second_image=C"+c+"-D.tif fusion_method=[Linear Blending] fused_image=C"+a+"C"+b+".tif<->C"+c+"-D.tif check_peaks=65 compute_overlap x=0 y=0 z=0 registration_channel_image_1=[Average all channels] registration_channel_image_2=[Average all channels]"); 
	saveAs("Tiff",direccion+"/Stitching/C"+a+"C"+b+"C"+c+".tif");
	run("Close");
	run("Close");
	run("Close");
	open(direccion+"/Stitching/C"+a+"C"+b+"C"+c+".tif");
	open(direccion+"/C"+d+"/C"+d+"-D.tif");
	run("Pairwise stitching", "first_image=C"+a+"C"+b+"C"+c+".tif second_image=C"+d+"-D.tif fusion_method=[Linear Blending] fused_image=C"+a+"C"+b+"C"+c+".tif<->C"+d+"-D.tif check_peaks=65 compute_overlap x=0 y=0 z=0 registration_channel_image_1=[Average all channels] registration_channel_image_2=[Average all channels]"); 
	saveAs("Tiff",direccion+"/Stitching/C"+a+"C"+b+"C"+c+"C"+d+".tif");
	run("Close");
	run("Close");
	run("Close");
	open(direccion+"/Stitching/C"+a+"C"+b+"C"+c+"C"+d+".tif");
	open(direccion+"/C"+e+"/C"+e+"-D.tif");
	run("Pairwise stitching", "first_image=C"+a+"C"+b+"C"+c+"C"+d+".tif second_image=C"+e+"-D.tif fusion_method=[Linear Blending] fused_image=C"+a+"C"+b+"C"+c+"C"+d+".tif<->C"+e+"-D.tif check_peaks=65 compute_overlap x=0 y=0 z=0 registration_channel_image_1=[Average all channels] registration_channel_image_2=[Average all channels]"); 
	saveAs("Tiff",direccion+"/Stitching/C"+a+"C"+b+"C"+c+"C"+d+"C"+e+".tif");
	run("Close");
	run("Close");
	run("Close");
	open(direccion+"/Stitching/C"+a+"C"+b+"C"+c+"C"+d+"C"+e+".tif");
	open(direccion+"/C"+f+"/C"+f+"-D.tif");
	run("Pairwise stitching", "first_image=C"+a+"C"+b+"C"+c+"C"+d+"C"+e+".tif second_image=C"+f+"-D.tif fusion_method=[Linear Blending] fused_image=C"+a+"C"+b+"C"+c+"C"+d+"C"+e+".tif<->C"+f+"-D.tif check_peaks=65 compute_overlap x=0 y=0 z=0 registration_channel_image_1=[Average all channels] registration_channel_image_2=[Average all channels]"); 
	saveAs("Tiff",direccion+"/Stitching/C"+a+"C"+b+"C"+c+"C"+d+"C"+e+"C"+f+".tif");
	run("Close");
	run("Close");
	run("Close");
	open(direccion+"/Stitching/C"+a+"C"+b+"C"+c+"C"+d+"C"+e+"C"+f+".tif");
	open(direccion+"/C"+g+"/C"+g+"-D.tif");
	run("Pairwise stitching", "first_image=C"+a+"C"+b+"C"+c+"C"+d+"C"+e+"C"+f+".tif second_image=C"+g+"-D.tif fusion_method=[Linear Blending] fused_image=C"+a+"C"+b+"C"+c+"C"+d+"C"+e+"C"+f+".tif<->C"+g+"-D.tif check_peaks=65 compute_overlap x=0 y=0 z=0 registration_channel_image_1=[Average all channels] registration_channel_image_2=[Average all channels]"); 
	saveAs("Tiff",direccion+"/Stitching/C"+a+"C"+b+"C"+c+"C"+d+"C"+e+"C"+f+"C"+g+".tif");
	saveAs("Tiff",direccion+"/Stitching/Reconstrucción/"+i+"-D.tif")
	run("Close");
	run("Close");
	run("Close");

	if (z==true)
	{ 
		a=a+13;
		b=b+11;
		c=c+9;
		d=d+7;
		e=e+5;
		f=f+3;
		g=g+1;
		z=false;
	}
	else
	{
		a=a+1;
		b=b+3;
		c=c+5;
		d=d+7;
		e=e+9;
		f=f+11;
		g=g+13;
		z=true;
	
	}

}


