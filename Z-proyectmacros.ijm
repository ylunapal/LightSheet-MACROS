////////////////Stack processing/////////////////////
///////Advanced microscopy laboratory, CICESE///////////////
///////////////////////2021////////////////////////////////////
///////////////////////Brain samples///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


var direccion= "D:/2021E-A/3D ALE/decnsp"; //donde se encuentra las carpetas. ejemplo "/Volumes/ADATA UFD"
var tnc = 50 //NUMERO DE STACKS
var guardar = "D:/2021E-A/3D ALE/z-proyect-desnsp"// DONDE SE VA AGURDAR LA IMAGEN
var t = 17 //slies number

  // NO MOVER 
var s = 2
var p1 = 1 
var lim = -1
var li=-1


for(nc=1;nc<=tnc;nc++) //Solo funciona si el numero de planos es numero par
   {
 
    open(direccion+"/C"+nc+"-D.tif"); //Filename el nombre de la imagen 
    run("Z Project...", "projection=[Max Intensity]");
    run("Measure");
    selectWindow("MAX_C"+nc+"-D.tif");
    saveAs("Tiff", "D:/2021E-A/3D ALE/z-project-desnsp/MAX_C"+nc+"-D.tif");
    //saveAs("Tiff", guardar+"/MAX_C"+nc+"-D.tif");
    selectWindow("C"+nc+"-D.tif");
   
    close();
    selectWindow("MAX_C"+nc+"-D.tif");
    close();
     }