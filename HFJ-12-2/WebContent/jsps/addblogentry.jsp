<%@page import="javax.xml.transform.TransformerException"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="javax.xml.transform.dom.DOMSource"%>
<%@page import="javax.xml.transform.stream.StreamResult"%>
<%@page import="java.io.StringWriter"%>
<%@page import="javax.xml.transform.OutputKeys"%>
<%@page import="javax.xml.transform.TransformerFactory"%>
<%@page import="org.w3c.dom.NodeList"%>
<%@page import="org.w3c.dom.Node"%>
<%@page import="org.w3c.dom.Text"%>
<%@page import="org.w3c.dom.Element"%>
<%@page import="javax.xml.parsers.ParserConfigurationException"%>
<%@page import="java.io.IOException"%>
<%@page import="org.xml.sax.SAXException"%>
<%@page import="java.io.File"%>
<%@page import="javax.xml.parsers.DocumentBuilder"%>
<%@page import="javax.xml.parsers.DocumentBuilderFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%--
			This jsp page is responsible for adding blog entry in blogs.xml
 --%>

	<%!
	
	org.w3c.dom.Document document;
	File file;
	Node childNode;
	
	public void jspInit() {
		try {
			DocumentBuilderFactory builderFactory = DocumentBuilderFactory
					.newInstance();

			DocumentBuilder builder = builderFactory.newDocumentBuilder();

			String filePath = getServletContext().getRealPath(
					"/others/blog.xml");
			System.out.println("file path " + filePath);
			org.w3c.dom.Element root;

			file = new File(filePath);
			if (file.exists()) {
				document = builder.parse(file);
				root = document.getDocumentElement();

				String childTagName = "entries";
				NodeList list = root.getElementsByTagName(childTagName);

				childNode = list.item(0);

				System.out.println("root.getNodeName()" + root.getNodeName());
				System.out.println("childNode.getNodeName()"
						+ childNode.getNodeName());

			}
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} 
	}%>


	<%
		Element child = document.createElement("entry");
		childNode.appendChild(child);

		Element child1 = document.createElement("date");
		child.appendChild(child1);

		String date = request.getParameter("date");
		Text text1 = document.createTextNode(date);
		child1.appendChild(text1);

		Element child2 = document.createElement("body");
		child.appendChild(child2);

		String body = request.getParameter("body");
		Text text2 = document.createTextNode(body);
		child2.appendChild(text2);

		String image = request.getParameter("image");
		
		if (image.length() > 0) {
			Element child3 = document.createElement("image");
			child.appendChild(child3);

			Text text3 = document.createTextNode(image);
			child3.appendChild(text3);
		}
		
///		this code will write modified xml content into file		

		TransformerFactory factory = TransformerFactory.newInstance();
		javax.xml.transform.Transformer transformer = factory
				.newTransformer();

		transformer.setOutputProperty(OutputKeys.INDENT, "yes");

		StringWriter sw = new StringWriter();
		StreamResult result = new StreamResult(sw);
		DOMSource source = new DOMSource(document);
		transformer.transform(source, result);
		String xmlString = sw.toString();
		FileWriter fw = new FileWriter(file, false);
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write(xmlString);
		System.out.println(source);
		bw.flush();
		bw.close();
	%>

</body>
</html>