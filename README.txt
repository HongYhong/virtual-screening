#A supporting file for 
#Structure-based virtual screening to identify inhibitors 
#against N-Terminal Acetyltransferase NatB using natural product compounds library

#author: yanhong hong

SUPPORTING FILES 

commands.txt
- Key commands for dowloading,docking,rescoring and molecular dynamics.

mdp_for_gromacs
- mdp parameter files for molecular dynamics using gromacs.

docking.sh
- script used for docking

split_rename_filter.sh
- script used for spliting,renaming and filtering the downloaded files.

sham.pl
- perl script used for merging pc1.xvg and pc2.xvg and generates a input file for g_sham.

xpm2txt.py
- python script used for convert the xpm file to txt file.

chemical_space_by_pca.html
- a jupyter notebook used for plotting the chemical space of all natural products and top rank products using priciple components analysis.

FREE ENERGY LANDSCAPE FOR EM94.html
- a jupyter notebook used for plotting the free energy landscape during molecular dynamics of EM94 complex.

FREE ENERGY LANDSCAPE FOR GY5W.html
- a jupyter notebook used for plotting the free energy landscape during molecular dynamics of GY5W complex.  

panther
- default.in is the input parameter file for panther,model.mol2 is the generated model file.
