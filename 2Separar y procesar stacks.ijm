//******************************Separar stacks para cada uno de los cuadrantes y procesar cada stack 

//Variables a modificar

//Direccion de las carpetas, hasta antes de zona1
var direccion= "/Volumes/ADATA HD720/Reeconstrucciones/Muestra1_180611";////////////////<- cambiar direccion

//Numero de imagenes obtenidas por captura
var cortes=306;   

//Numero de planos
var tnp=4; 

//Numero total de planos - auxiliar total numero de planos
var atnp=4;

//Numero de cuadrantes
var tnc=9;   

//Rango de imagenes por stack-1... si son 17 imagenes por stack, deberan ser 16/////////////////////////para 1 laser
var rango=17; 

//Direccion de las carpetas hasta Reconstruccion
var guardar="/Volumes/ADATA/HD720/Reeconstrucciones";   



// No modificar 

var np=1;//numero de planos
var npa=1;//numero planos auxiliar
var cp=1;// numero capa
var nc=1;//numero cuadrante
var irango=1;//
var salto=0;
var ar=0;// auxiliar rango 
var anpa=0;//segundo auxiliar de numero de planos

//******************************Separar stacks para cada uno de los cuadrantes y procesar cada stack 

salto=rango;

for (i=1; i<=tnp; i++) 
	{ // Cambiar i por numero de plano a empezar 
	
		for(cp=1;cp<=tnc;cp++)
		{
		
		open(direccion+"/Planos/P"+i+"/Captura_Stack.tif");
		run("Make Substack...", "  slices="+irango+"-"+salto+"");
		saveAs("Tiff",direccion+"/Planos/P"+i+"/Stack/C"+cp+"P"+i+"_Stack.tif");
				
		irango=salto+1;
		salto=irango+rango-1;

        run("Duplicate...", "duplicate range="+irango+"-"+salto+""); 
		run("Unsharp Mask...", "radius=4 mask=0.60 stack");
		run("Remove Outliers...", "radius=4 threshold=50 which=Bright stack");
        run("Gaussian Blur...", "sigma=1.50 stack");
        saveAs("Tiff",direccion+"/Planos/P"+i+"/Stack Procesado/C"+cp+"P"+i+"_StackP.tif");
        selectWindow("C"+cp+"P"+i+"_StackP.tif");
		ar=rango-1;
        run("Duplicate...", "duplicate range=1-"+ar);
        selectWindow("C"+cp+"P"+i+"_StackP.tif");
		ar=rango;
		run("Duplicate...", "duplicate range=2-"+ar);
		imageCalculator("Subtract create stack", "C"+cp+"P"+i+"_StackP-1.tif", "C"+cp+"P"+i+"_StackP-2.tif");
        imageCalculator("Subtract create stack", "C"+cp+"P"+i+"_StackP-1.tif","Result of C"+cp+"P"+i+"_StackP-1.tif");
        rename("Result of Result of C" +cp+"P"+i+"_StackP-1.tif");
        selectWindow("Result of Result of C" +cp+"P"+i+"_StackP-1.tif");
        saveAs("Tiff",direccion+"/Planos/P"+i+"/Stack Procesado/C"+cp+"P"+i+"_StackFR.tif");
        selectWindow("C"+cp+"P"+i+"_StackFR.tif");
        run("Z Project...", "projection=[Max Intensity]");
        saveAs("Tiff",direccion+"/Planos/P"+i+"/Stack Procesado/C"+cp+"P"+i+"_StackFRZ.tif");
        run("Close");
		run("Close");
		run("Close");
        run("Close");
		run("Close");
	    run("Close");
		run("Close");
        run("Close");
        
		}
		
		irango=1;
		salto=rango;
	}
	
