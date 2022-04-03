
var direccion="D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P1"; //donde se encuentra las carpetas. ejemplo "/Volumes/ADATA UFD"
var tnc= 7 //NUMERO DE STACKS
var tnc_2 = 14 //NUMERO DE STACKS
var guardar = "D:/2021E-A/3D ALE/Brain control/stiching/P1"// DONDE SE VA AGURDAR LA IMAGEN
var t = 17 //slies number
var na=1
  // NO MOVER 
var s = 2
var p1 = 1 
var lim = -1
var li=-1






for(na=1;na>=6;na++) {
    nd= 7+na; 
    open(direccion+"/C"+nd+".tif"); //Filename el nombre de la imagen 
      for (i=1; i<=8;i++) {
     e = 8-i;
     rename("2-"+(e)+".tif");
     saveAs("Tiff", guardar+"/2-"+(e)+".tif");
     }
 }

for(nc=1;nc<=tnc_1;nc++) //Solo funciona si el numero de planos es numero par
   {
 
    open(direccion+"/C"+nc+".tif"); //Filename el nombre de la imagen 
    rename("1-"+nc+".tif");
    saveAs("Tiff", guardar+"/1-"+nc+".tif");
   }

   
