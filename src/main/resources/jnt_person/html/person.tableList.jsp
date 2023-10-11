<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

        <td rowspan="2"><jcr:nodeProperty var="picture" node="${currentNode}" name="picture"/>
    <c:if test="${not empty picture}">
        <div class="personPhoto"><img src="${picture.node.thumbnailUrls['thumbnail']}" alt="${currentNode.properties.lastname.string} picture" width="85" height="85"></div>
    </c:if></td>
        <td>${currentNode.properties.firstname.string}</td>
        <td>${currentNode.properties.lastname.string}</td>
        <td>${currentNode.properties.function.string} (${currentNode.properties.businessUnit.string})</td>
        <td><a href='mailto:${currentNode.properties.email.string}'>${currentNode.properties.email.string}</a></td>
    </tr>
    <tr><td colspan="3">${currentNode.properties.biography.string}</td></tr>



