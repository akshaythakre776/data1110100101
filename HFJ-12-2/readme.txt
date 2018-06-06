Type of project:
----------------

Dynamic web project

*** can be dynamic web project, EE utility project, EJB project etc ***

This project contains following directories:
--------------------------------------------------

src					contains java files
resources			contains non-java files (like jars, xml, images etc) which resolves dependencies (needs to be on classpath)
docs					contains reference documents (should not be available on classpath)
		
docs/how-to.txt	explains steps and settings needed to execute application

**** All files in src and resources should be annotated with comments ***
**** this is a general structure of project ***

This project contains following files:	
------------------------------------------

filename 					location										page/helper/class					reference document location

youcube13.html			/webcontent/youcube					page											/docs/AJAX-basics.txt
youcubeadd.html		/webcontent/youcube					page											/docs/AJAX-basics.txt

addBlogEntry.jsp			/webcontent/jsps						page											none

ajax.js						/webcontent/js							helper										/docs/AJAX-basics.txt

date.js						/webcontent/js							helper										none
blog.xml						/webcontent/others						helper										none
wait.gif						/webcontent/images					helper										none
cube.png					/webcontent/images					helper										none
cube777.png 				/webcontent/images					helper										none
cubeapart.png 			/webcontent/images					helper										none


*** columns explanation ****

filename					name of the file
location					location of the file includes directory and package name
page/helper/class	if this file is a page, it means it can be static or dynamic page
							if this file is helper, it is a resource like image, xml, js etc.
							
							