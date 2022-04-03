
//****************************** Stiching cuadrantes por renglon y por plano **********************************


//Variables a modificar

//Direccion de las carpetas, hasta antes de zona1
var direccion= "D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P12";////////////////<- cambiar direccion con find y replace

// Edit > Find and Replace /P1 por /P2... P5 por P5...
 
// Cambiar x y y > si es 7 y 1 (49 cuadrantes) o 3 y 1 (9 cuadrantes)
//Cambiar first file index i > 1 , 8 , 15, 22, 29, 36, 43
// Cambiar direccion
// Cambiar i de acuerdo al renglon > 1-7 (izq-der), 8-14(der-izq), 15-21, 

run("Grid/Collection stitching", "type=[Grid: snake by rows] order=[Right & Down                ] grid_size_x=7 grid_size_y=1 tile_overlap=28 first_file_index_i=1 directory=[D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P12] file_names=1-{i}.tif output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save memory (but be slower)] image_output=[Fuse and display]");
selectWindow("Fused");
saveAs("Tiff",direccion+"/Reconstruccion/1-1.tif");
close();

run("Grid/Collection stitching", "type=[Grid: snake by rows] order=[Left & Down] grid_size_x=7 grid_size_y=1 tile_overlap=28 first_file_index_i=1 directory=[D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P12] file_names=2-{i}.tif output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save memory (but be slower)] image_output=[Fuse and display]");
selectWindow("Fused");
saveAs("Tiff",direccion+"/Reconstruccion/1-2.tif");
close();

run("Grid/Collection stitching", "type=[Grid: snake by rows] order=[Right & Down                ] grid_size_x=7 grid_size_y=1 tile_overlap=28 first_file_index_i=1 directory=[D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P12] file_names=3-{i}.tif output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save memory (but be slower)] image_output=[Fuse and display]");
selectWindow("Fused");
saveAs("Tiff",direccion+"/Reconstruccion/1-3.tif");
close();


run("Grid/Collection stitching", "type=[Grid: snake by rows] order=[Left & Down] grid_size_x=7 grid_size_y=1 tile_overlap=28 first_file_index_i=1 directory=[D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P12] file_names=4-{i}.tif output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save memory (but be slower)] image_output=[Fuse and display]");
selectWindow("Fused");
saveAs("Tiff",direccion+"/Reconstruccion/1-4.tif");
close();

run("Grid/Collection stitching", "type=[Grid: snake by rows] order=[Right & Down                ] grid_size_x=7 grid_size_y=1 tile_overlap=28 first_file_index_i=1 directory=[D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P12] file_names=5-{i}.tif output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save memory (but be slower)] image_output=[Fuse and display]");
selectWindow("Fused");
saveAs("Tiff",direccion+"/Reconstruccion/1-5.tif");
close();

run("Grid/Collection stitching", "type=[Grid: snake by rows] order=[Left & Down] grid_size_x=7 grid_size_y=1 tile_overlap=28 first_file_index_i=1 directory=[D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P12] file_names=6-{i}.tif output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save memory (but be slower)] image_output=[Fuse and display]");
selectWindow("Fused");
saveAs("Tiff",direccion+"/Reconstruccion/1-6.tif");
close();

run("Grid/Collection stitching", "type=[Grid: snake by rows] order=[Right & Down                ] grid_size_x=7 grid_size_y=1 tile_overlap=28 first_file_index_i=1 directory=[D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P12] file_names=7-{i}.tif output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save memory (but be slower)] image_output=[Fuse and display]");
selectWindow("Fused");
saveAs("Tiff",direccion+"/Reconstruccion/1-7.tif");
close();



run("Grid/Collection stitching", "type=[Grid: column-by-column] order=[Down & Left] grid_size_x=1 grid_size_y=7 tile_overlap=11 first_file_index_i=1 directory=[D:/2021E-A/3D ALE/Brain control/Richarson and lucky/P12/Reconstruccion] file_names=1-{i}.tif output_textfile_name=TileConfiguration.txt fusion_method=[Linear Blending] regression_threshold=0.30 max/avg_displacement_threshold=2.50 absolute_displacement_threshold=3.50 computation_parameters=[Save memory (but be slower)] image_output=[Fuse and display]");
selectWindow("Fused");
saveAs("Tiff",direccion+"/Reconstruccion/2D-12.tif");
close();







