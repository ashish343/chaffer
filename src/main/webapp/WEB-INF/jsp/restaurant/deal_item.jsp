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

<small>${deal_name}</small>
 <a title="Add Widget" data-toggle="modal" href="#removeDeal" style="float: right;"><span class="glyphicon glyphicon-minus-sign" ></span></a>
 <a title="Add Widget" data-toggle="modal" href="#addDealModal" style="float: right;padding-right: 3px"><span class="glyphicon glyphicon-edit" ></span></a>
 
 <div class="progress">
  	<div class="progress progress-striped">
   <div class="progress-bar ${class} " role="progressbar" aria-valuenow=${perc} aria-valuemin="0" aria-valuemax="100" style="width: ${perc}%">
     <span class="sr-only">72% Complete</span>
   </div>
   </div>
 </div>
 
 
 <div class="modal" id="removeDeal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Remove Deal</h4>
      </div>
      <div class="modal-body">
        <p>Are you sure you want to remove this discount coupon ?</p>
      </div>
      <div class="modal-footer">
        <a href="#" data-dismiss="modal" class="btn">No</a>
        <a href="#" class="btn btn-primary">Yes</a>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dalog -->
</div><!-- /.modal -->