<jsp:useBean id="delivery" class="com.acme.domain.Address" scope="session"/>
<jsp:setProperty name="delivery" property="zip" param="zip"/>
<jsp:setProperty name="delivery" property="city" param="city"/>
<jsp:setProperty name="delivery" property="street" param="street"/>


<h2>Address</h2>
<div class="alert alert-success span4">
  <jsp:getProperty property="zip" name="delivery"/>
  <jsp:getProperty property="city" name="delivery"/>
  <jsp:getProperty property="street" name="delivery"/>
</div>

<form class="form-horizontal">
  <div class="control-group">
    <label class="control-label" for="inputCity">City</label>
    <div class="controls">
      <input type="text" id="inputCity" name="city" placeholder="City">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="inputStreet">Street</label>
    <div class="controls">
      <input type="text" id="inputStreet" name="street" placeholder="Street">
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="inputZip">Zip</label>
    <div class="controls">
      <input type="text" id="inputZip" name="zip" placeholder="Zip">
    </div>
  </div>  
  <div class="control-group">
    <div class="controls">
      <button type="submit" class="btn btn-success">Submit</button>
    </div>
  </div>
</form>