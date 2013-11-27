<jsp:useBean id="delivery" class="com.acme.domain.Address" scope="session"></jsp:useBean>

<jsp:setProperty name="delivery" property="street" param="street" />
<jsp:setProperty name="delivery" property="zip" param="zip" />
<jsp:setProperty name="delivery" property="city" param="city" />

<h2>Address 1</h2>
</div>

<div class="row">

<div class="span8">
<form class="form-horizontal" >
  <div class="control-group">
    <label class="control-label" for="inputStreet">Street</label>
    <div class="controls">
      <input type="text" id="inputStreet" name="street" placeholder="Street">
    </div>
  </div>

  <div class="control-group">
    <label class="control-label" for="inputCity">City</label>
    <div class="controls">
      <input type="text" id="inputCity" name="city" placeholder="City">
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
</div>

<div class="alert alert-success span3">
  <i class="icon icon-envelope"></i><br/>
  <jsp:getProperty property="street" name="delivery"/><br/>
  <jsp:getProperty property="city" name="delivery"/><br/>
  <jsp:getProperty property="zip" name="delivery"/>
  
</div>
