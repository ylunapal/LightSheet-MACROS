////////////////Stack processing/////////////////////
///////Advanced microscopy laboratory, CICESE///////////////
///////////////////////2021////////////////////////////////////
///////////////////////Brain samples///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


var direccion="D:/2021E-A/3D ALE/Brain control/raw data/P5/Stack"; //donde se encuentra las carpetas. ejemplo "/Volumes/ADATA UFD"
var tnc = 49 //NUMERO DE STACKS
var guardar = "D:/2021E-A/3D ALE/Brain control/diferencie/P5"// DONDE SE VA AGURDAR LA IMAGEN
var t = 17 //slies number

  // NO MOVER 
var s = 2
var p1 = 1 
var lim = -1
var li=-1


for(nc=1;nc<=tnc;nc++) //Solo funciona si el numero de planos es numero par
   {
 
    open(direccion+"/C"+nc+"P5_Stack.tif"); //Filename el nombre de la imagen 
    run("32-bit");
    run("Remove Outliers...", "radius=1 threshold=1 which=Bright stack");
    rename("image_3-1.tif");
     for (a=-1;a<=li ;a++){
     selectWindow("image_3-1.tif");
     slices_1=""+(p1)+"-"+(t-p1);
     run("Make Substack...", "  slices="+ slices_1);
     rename ("N"+(a+2)); 
     }
   for (i=-1;i<=lim ;i++){
       selectWindow("image_3-1.tif");
      slices_2=""+(s)+"-"+(t);
     run("Make Substack...", "  slices="+ slices_2);
     rename ("N"+(s));}
   
     //slices_1 = ""+(p1*i)+"-"+(t-p1);
     //slices_2 =""+(i)+"-"+(t);
   // run("Make Substack...", "  slices=" + slices_1);
    //rename ("N"+(p1));
     //   selectWindow("C"+nc+"P1_Stack.tif");
      //  run("Make Substack...", "  slices=" + slices_1);
       // rename ("N"+(s));
      //{ 


///PSF=File.openDialog("Select Stack");
///open(PSF); //Filename el nombre de la imagen 
///run("DeconvolutionLab2 Lab");//Dentro del pluguing se debe seleccionar el stack  en imágenes escoger get images in the plataform y seleccionar 
//image_Final.tif  y en PSF la imagen de la PSF de la misma forma. Tomar en cuenta que el tiempo de procesamiento 
//tomara de 10 a 15 dependiendo del procesador que se esté ocupando para un stack de 80 imágenes.//2. Run
//while (File.exists("Final Display of RL")==1) {
  //    selectWindow("Final Display of RL");

///while (!isOpen("Final Display of RL")) {
///    wait(100);
///}
               //macroSPIM conditions/// 
       //run("Remove NaNs...", "radius=2 stack");
       //run("Unsharp Mask...", "radius=9 mask=0.2 stack");
	
       //run("Gaussian Blur...", "sigma=0.6 stack");
       //rename ("image_3-1.tif")
       //selectWindow("image_3-1.tif")
      
/////////////////////////////////////////////////////////////////////////////
             imageCalculator("Subtract create stack", "N2","N1"); //"diferencia 2-1 (ruido21)""
             rename("Diferencia_2-1.tif");
             
             imageCalculator("Subtract create stack", "N1","N2"); //  "diferencia 1-2 (ruido12)"
             rename("Diferencia_1-2.tif");     
        



   
//////////////////////////DIFERENCIA  1 - 2 = ruido12  y 2-1 = ruido21 //////////////////////////


//Se quita el 1er plano de  Diferencia_1-2.tif
        x=1;
        for (i=0;i<=1 ;i++) {

        selectWindow("Diferencia_1-2.tif");
        slices=""+(x+1*i)+"-"+(t-1);
        run("Make Substack...", "  slices=" + slices);
        close("Diferencia_1-2.tif");
        rename ("Diferencia_1-2.tif");
        }  //from 2nd plane to N-1  

//Se quita el último plano de Diferencia_2-1.tif
       for (i=0;i<=0 ;i++) {
       selectWindow("Diferencia_2-1.tif");
       slices=""+(x+1*i)+"-"+(t-2);
       run("Make Substack...", "  slices=" + slices);
       close("Diferencia_2-1.tif");
       rename ("Diferencia_2-1.tif");
       } // from 1st plane to N-2

/////Se quita el último plano de N2
      for (i=0;i<=0 ;i++) {
      selectWindow("N2");
      slices=""+(x+1*i)+"-"+(t-2);
      run("Make Substack...", "  slices=" + slices);
      close("N2");
      rename ("N2");
      }

imageCalculator("Subtract create stack", "N2","Diferencia_1-2.tif"); // Se quita el ruido por la Diferencia_1_2...
rename("Imagen_1-2.tif"); // imagen sin la contribucion del plano de atrás 

//imageCalculator("Subtract create stack", "N2","Diferencia_2-1.tif"); // Se quita el ruido por la Diferencia_2_1...
//rename("Imagen_2-1.tif") // imagen sin la contribucion del plano de adelante


imageCalculator("Subtract create stack", "Imagen_1-2.tif","Diferencia_2-1.tif");   
rename("Imagen_Final.tif");
selectWindow("Imagen_Final.tif");
saveAs("Tiff", guardar+"/C"+nc+".tif");
///////////////////////////////////////////////////////////////////////////

selectWindow("Imagen_1-2.tif");
close();
selectWindow("N2");
close();
selectWindow("Diferencia_2-1.tif");
close();
selectWindow("Diferencia_1-2.tif");
close();
selectWindow("image_3-1.tif");
close();
selectWindow("N1");
close();
selectWindow("C"+nc+".tif");
close();
//
   }
//selectWindow("ruido1.tif");
//close();
//run("Tile");