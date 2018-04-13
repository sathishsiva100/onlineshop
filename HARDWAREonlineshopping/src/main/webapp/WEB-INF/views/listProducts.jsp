<div class="container">

	<div class="row">

		<!--would be to display sidebar-->
		<div class="col-md-3">

			<%@include file="./shared/sidebar.jsp"%>
		</div>

		<!--to display the actual products-->
		<div class="col-md-9">

			<!-- Added breadcrumb component -->
			<div class="row">



				<div class="col-lg-12">

					<c:if test="${userClickAllProducts  == true}">


						<script>
							window.categoryId = '';
						</script>
						<ol class="breadcrumb">


							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Products</li>

						</ol>

					</c:if>
					<c:if test="${userClickCategoryProducts  ==  true}">
						<script>
							window.categoryId = '${category.id}';
						</script>
						<ol class="breadcrumb">


							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>


						</ol>

					</c:if>
				</div>


			</div>


			<div class="row">


				<div class="col-xs-12">


					<table id="productListTable"
						class="table table-striped table-bordered">


						<thead>
							<tr>
							
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty.Available</th>
								<th>picture</th>



							</tr>



						</thead>
			<tbody>
			<c:forEach items="${products}" var="p">
				<tr>
					<td>${p.name}</td>
					<td>${p.brand}</td>
					<td>${p.unitPrice}</td>
					<td>${p.quantity}</td>
					<td><img alt="${images}/${p.code}.jpg" src="${images}/${p.code}.jpg" width="256" height="256"></td><br></td>
				</tr>
				</td><br>
				
				</c:forEach>
			
			</tbody>


						<tfoot>
							<tr>
								
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty.Available</th>
								<th>Picture</th>


							</tr>



						</tfoot>



					</table>
				</div>

			</div>
		</div>




	</div>




</div>


