

%let dir_path = C:\Users\D_CHALTIEL\Documents\GitHub\macro_sas\example;

%include "&dir_path\loadSBE.sas";

/*Param�tre principal : 
	dir_path = le dossier de travail 
*/
%load_SBE(dir_path=&dir_path);

/*Appel d'une fonction test, d�finie sur github*/
*https://github.com/DanChaltiel/macro_sas;
*%test_print;



/*Autres param�tres : 
	git_url = le git cible (pas obligatoirement github, on pourrait m�me utiliser nextcloud avec un peu d'administration)
	version = la version � installer. Peut �tre un num�ro de release (v2, v3), une branche, un tag ou m�me un hash (0f757b2)
	local_folder = le dossier local o� seront charg�es les macros. Changer pour r�installer autre part sans supprimer le dossier pr�c�dent.
*/
%let git_url = https://github.com/DanChaltiel/macro_sas.git;
%load_SBE(dir_path=&dir_path, git_url=&git_url, version=0f757b2, local_folder=git_macro_v2);

