
<main role="main" class="m-4">
	<div class="alert alert-warning d-none mt-1" role="alert" id="divAlert"></div>
	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center mt-2 pb-2 mb-3 border-bottom">
		<h1 class="h2"><i class="bi bi-boxes me-2"></i>Raw Materials</h1>
		<div class="btn-toolbar mb-2 mb-md-0">
			<button type="button" class="btn btn-primary me-1" data-bs-toggle="modal"
				data-bs-target="#addModal">+ add</button>
			<button type="button" class="btn btn-primary  me-1" data-bs-toggle="modal"
				data-bs-target="#updateModal" id="btnShowUpdateRawMaterial">Update</button>
			<button type="button" class="btn btn-danger  me-1" data-bs-toggle="modal"
				data-bs-target="#deleteModal" id="btnShowDeleteRawMaterial">Delete</button>
		</div>
	</div>
	<div class="d-flex justify-content-center mt-5">
		<div id="divRawMaterialTable"></div> <!--Raw Material Table-->
	</div>
</main>

<div class="modal fade" id="addModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Add Raw Material:</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form>
					<div class="mb-3">
						<!-- 
						<td><label for="txtDppId">c</label></td>
                		<td><input type="text" id="txtDppId" readonly /></td>
						 -->
						<label for="txtMaterialCode" class="col-form-label">Raw Material ID:</label>
						<input type="text" class="form-control" id="txtMaterialCode" value = '' required>
					</div>
					<div class="mb-3">
						<label for="txtRawMaterialName">Raw Material Name</label>
						<input type="text" id="txtRawMaterialName" class="form-control"/>
					</div>
					<div class="mb-3">
						<label for="txtRawMaterialUnit">Unit of Measurement</label>
						<input type="text" id="txtRawMaterialUnit" class="form-control"/>
					</div>
					<div class="mb-3">
						<label for="chkRawMaterialIsActive">Active</label>
						<input id="chkRawMaterialIsActive" class="form-check-input" type="checkbox" />
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary btnCloseModal"
					data-bs-dismiss="modal" id="btnCloseAddModal">Close</button>
				<button type="button" class="btn btn-primary" id="btnAddRawMaterial">Add
					Raw Material</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="updateModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Update Raw Material:</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form>
					<div class="mb-3">
						<!-- 
						<td><label for="txtDppId">c</label></td>
                		<td><input type="text" id="txtDppId" readonly /></td>
						 -->
						<label for="txtUpdateRawMaterialCode" class="col-form-label">Raw Material ID:</label>
						<input type="text" class="form-control" id="txtUpdateRawMaterialCode" value = '' readonly>
					</div>
					<div class="mb-3">
						<label for="txtUpdateRawMaterialName">Raw Material Name</label>
						<input type="text" id="txtUpdateRawMaterialName" class="form-control"/>
					</div>
					<div class="mb-3">
						<label for="txtUpdateRawMaterialUnit">Unit of Measurement</label>
						<input type="text" id="txtUpdateRawMaterialUnit" class="form-control"/>
					</div>
					<div class="mb-3">
						<label for="chkUpdateRawMaterialIsActive">Active</label>
						<input id="chkUpdateRawMaterialIsActive" class="form-check-input" type="checkbox" />
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary btnCloseModal"
					data-bs-dismiss="modal" id="btnCloseUpdateModal">Close</button>
				<button type="button" class="btn btn-primary" id="btnUpdateRawMaterial">Update
					Raw Material</button>
			</div>
		</div>
	</div>
</div>

<!-- delete modal-->
<div class="modal fade" id="deleteModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Delete Raw Material:</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form>
					<div class="mb-3">
						<input type="text" class="form-control d-none" id="deleteRawMaterialCode">
						<input type="text" class="form-control d-none" id="deleteRawMaterialName">
						<input type="text" class="form-control d-none" id="deleteRawMaterialUnit">
						<input type="text" class="form-control d-none" id="deleteRawMaterialStatus">
					</div>
					<div class="mb-3">
						<span>Are you sure you want to delete this row?</span>
					</div>
				</form>
			</div>
			<div class="modal-footer">

				<button type="button" class="btn btn-danger" id="btnDeleteRawMaterial">Yes</button>
				<button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="btnDeleteRawMaterialCancel">No</button>				
			</div>
		</div>
	</div>
</div>
<!--
<div id="divRawMaterialForm">
  <form>
    <table>
      <tr>
        <td><label for="txtMaterialCode">Material Code</label></td>
        <td><input type="text" class="input" id="txtMaterialCode" /></td>
      </tr>
      <tr>
        <td><label for="txtMaterialName">Material Name</label></td>
        <td><input type="text" class="input" id="txtMaterialName" /></td>
      </tr>
      <tr>
        <td><label for="txtUnitOfMeasurement">Unit of Measurement</label></td>
        <td><input type="text" class="input" id="txtUnitOfMeasurement" /></td>
      </tr>
      <tr>
        <td><label for="chkIsActive">Active</label></td>
        <td><input type="checkbox" id="chkIsActive" /></td>
      </tr>
      <tr>
        <td></td>
        <td>
          <button type="button" class="button" id="btnClear">Clear</button>
          <button type="button" class="button blue" id="btnAdd">Add</button>
          <button type="button" class="button red" id="btnDelete">Delete</button>
        </td>
      </tr>
    </table>
  </form>
</div>
-->
<br>
<script type="text/javascript">
    var rawMaterial = JSON.parse('${rawMaterial}');
</script>
<script src="js/maintenance/raw_material.js"></script>
