<small>${deal_name}</small>
 <a title="Add Widget" data-toggle="modal" href="#addDealModal" style="float: right;"><span class="glyphicon glyphicon-minus-sign" ></span></a>
 <a title="Add Widget" data-toggle="modal" href="#addDealModal" style="float: right;padding-right: 3px"><span class="glyphicon glyphicon-edit" ></span></a>
 <c:choose>
      <c:when test="${perc<='25'}">
      	<c:set var="class" value="progress-bar-info"/>      
      </c:when>
      <c:when test="${perc<='50'}">
      	<c:set var="class" value="progress-bar-success"/>      
      </c:when>
      <c:when test="${perc<='75'}">
      	<c:set var="class" value="progress-bar-warning"/>      
      </c:when>
      <c:otherwise>
      	<c:set var="class" value="progress-bar-danger"/>
      </c:otherwise>
</c:choose>
 <div class="progress">
  	<div class="progress progress-striped">
   <div class="progress-bar ${class} " role="progressbar" aria-valuenow=${perc} aria-valuemin="0" aria-valuemax="100" style="width: ${perc}%">
     <span class="sr-only">72% Complete</span>
   </div>
   </div>
 </div>