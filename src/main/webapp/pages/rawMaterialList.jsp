<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
		<h1 class="h2">Dashboard</h1>
		<div class="btn-toolbar mb-2 mb-md-0">
			<div class="btn-group mr-2">
				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#addModal">+</button>
				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#updateModal" hidden="hidden" id="btnUpdateMaterial">update</button>
			</div>
		</div>
	</div>
	<div class="table-responsive">
		<!-- dito ilalagay yung table -->
		<div id="divRawMaterialTable"></div>
	</div>
</main>
</div>
</div>

<!--code for Add Modal-->
<div class="modal fade" id="addModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Add raw
					materials:</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form>
					<div class="mb-3">
						<label for="rawMaterialListName" class="col-form-label">Name:</label> <input
							type="text" class="form-control" id="material-name">
					</div>
					<div class="mb-3">
						<label for="material-quantity" class="col-form-label">Quantity:</label>
						<input type="text" class="form-control" id="rawMaterialListQuantity">
					</div>
					<div class="mb-3">
						<label for="material-date">Date</label> <input id="material-date"
							class="form-control" type="date" /> <span
							id="rawMaterialListDateSelected"></span>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" id="btnAddRawMaterial">Add Material</button>
			</div>
		</div>
	</div>
</div>

<!-- update modal -->
<div class="modal fade" id="updateModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Add raw
					materials:</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form>
					<div class="mb-3">
						<label for="updateRawMaterialName" class="col-form-label">Name:</label> <input
							type="text" class="form-control" id="material-name">
					</div>
					<div class="mb-3">
						<label for="updateRawMaterialQuantity" class="col-form-label">Quantity:</label>
						<input type="text" class="form-control" id="rawMaterialListQuantity">
					</div>
					<div class="mb-3">
						<label for="updateDate">Date</label> <input id="material-date"
							class="form-control" type="date" /> <span
							id="updateRawMaterialListDateSelected"></span>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" id="btnUpdateRawMaterial">update material</button>
			</div>
		</div>
	</div>
</div>

<script src="js/inventory.js">
	var rawMaterialList = JSON.parsee('${rawMaterialList}');
</script>