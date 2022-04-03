//Decon parameters:



var output = "D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P4"

var psf_file ="D:/2021E-A/3D ALE/Prueba 2/PSFmatlab512pix.tif";
var decon_algo = " -algorithm RL 10";

var guardar ="D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P4"// DONDE SE VA AGURDAR LA IMAGEN
////////////////////// Run
var these_files = "D:/2021E-A/3D ALE/Brain control/diferencie/P4";
var l = 49

// loop thru the files; 0-indexed
for(nc=1; nc<= l; nc++){ 
    
    open ( psf_file);
    psf =" -psf file "+psf_file;
    
    open (these_files+"/C"+nc+".tif");
    image = " -image platform active";
    algorithm = " -algorithm RL 10 -path " + output;
    run("DeconvolutionLab2 Run", image + psf + algorithm );


//run("DeconvolutionLab2 Run", " -image file "+t +" -psf file "+psf_file+decon_algo+" -residu 0.01");
	
while (!isOpen("Final Display of RL")) {
       wait(50);
}	
selectWindow("Final Display of RL");
saveAs("Tiff", guardar+"/C"+nc+"-RL.tif");
close();
selectWindow("C"+nc+".tif");
close();
selectWindow("PSFmatlab512pix.tif");
close();
//doesnt wait for previous decon job to finish before starting next one! \

}
print ("Deconvolution complete!")