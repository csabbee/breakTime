<%@taglib tagdir="/WEB-INF/tags" prefix="b"%>
<%@page errorPage="errorHandling.jsp"%>

<jsp:useBean id="delivery" class="com.acme.domain.Address" scope="session"/>
<jsp:setProperty name="delivery" property="*"/>

<h2>Address</h2>
<div>
  <table class="table">
  <tbody>
    <tr class="info">
      <td>
        ${delivery.zip}<br/>
        ${delivery.city}<br/>
        ${delivery.street}<br/>
      </td>
    </tr>
  </tbody>
  </table>
</div>
<div>
<form class="form-horizontal">
  <b:field name="city"/>
  <b:field name="street"/>
  <b:field name="zip"/>
  <b:submit caption="Submit"/>
</form>
</div>