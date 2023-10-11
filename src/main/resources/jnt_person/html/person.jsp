<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<template:addResources type="css" resources="person.css"/>
<template:addResources type="css" resources="jquery.fancybox.css"/>
<template:addResources type="javascript" resources="app/person.bundle.js"/>

<div class="personListItem">
    <jcr:nodeProperty var="picture" node="${currentNode}" name="picture"/>
    <c:if test="${not empty picture}">
        <div class="personPhoto"><img src="${picture.node.thumbnailUrls['thumbnail']}" alt="${currentNode.properties.lastname.string} picture">
       </div>
    </c:if>
    <div class="personBody">
        <h4>${currentNode.properties.firstname.string}&nbsp;${currentNode.properties.lastname.string}</h4>

        <p class="personFonction">${currentNode.properties.function.string}</p>

        <p class="personBusinessUnit">${currentNode.properties.businessUnit.string}</p>

        <p class="personEmail"><a href='mailto:${currentNode.properties.email.string}'>${currentNode.properties.email.string}</a></p>

        <div class="personAction">
			<a class="personEnlarge" id="apict${currentNode.identifier}" href="#pict${currentNode.identifier}"> <fmt:message key='FullSizePicture'/></a>
            <a class="personBiographiy" href="javascript:;" id="person_${currentNode.identifier}"><fmt:message
                    key='jnt_person.biography'/></a>
            <a class="personBiographiy" href="<c:url value='${url.base}${currentNode.path}.vcf'/>"><fmt:message
                    key='jnt_person.vcard'/></a>
        </div>
         <div id="collapseBox${currentNode.identifier}" class="collapsible" >
            <jcr:nodeProperty node="${currentNode}" name="biography"/>
        </div>
        <!--stop collapsible -->
        <div class="clear"></div>
    </div>
    <!--stop personBody -->
    <div class="clear"></div>
</div>
<div style="display:none"><div id="pict${currentNode.identifier}"><img src="${picture.node.url}" width="350"/></div></div>

<script type="text/javascript">
    PersonLibrary.init(${currentNode.identifier});
</script>
