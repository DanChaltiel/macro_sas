
/*Pour plus d'informations, aller sur https://github.com/DanChaltiel/macro_sas/tree/master/example*/


*1) On change 'dir_path';
%let dir_path = C:\Users\d_chaltiel\Documents\GitHub\macro_sas\example;


*2) on inclut les macros git;
%include "&dir_path\git_utils.sas";


*3) on utlise 'install_git' pour installer le repository et charger les macros;
*le dossier 'git_macro' apparait dans le dossier d�sign� par 'dir_path';

/*Param�tre principal : 
	dir_path = le dossier de travail 
*/
%install_git(dir_path=&dir_path);
%put WARNING: INSTALL_GIT: git_macro_version=&git_macro_version;


*4) On peut maintenant appeler toutes les fonctions d�finies dans le dossier "macros" du repo git;

/*Par exemple, voici un appel d'une fonction test, d�finie dans le fichier macro1.sas, qui lance une proc freq.
Voir un exemple de dossier sur https://github.com/DanChaltiel/macro_sas/tree/master/macros*/
%test_print;


*5) (optionnel) On peut �galement installer une version sp�cifique, dans un dossier local sp�cifique;

/*Autres param�tres : 
	git_url = le git cible (pas obligatoirement github, on pourrait m�me utiliser nextcloud avec un peu d'administration)
	version = la version � installer. Peut �tre un num�ro de release (v2, v3), une branche, un tag ou m�me un hash (e.g. 0f757b2, pointant vers la version 0.1.1)
	local_folder = le dossier local o� seront charg�es les macros. Changer pour r�installer autre part sans supprimer le dossier pr�c�dent.
*/
%let git_url = https://github.com/DanChaltiel/macro_sas.git;
%install_git(dir_path=&dir_path, git_url=&git_url, version=0f757b2, local_folder=git_macro_v2);


%put WARNING: INSTALL_GIT: git_macro_version=&git_macro_version;