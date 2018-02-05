<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h5>Looking for something?</h5>
				</div>
			<hr>
				<div class="panel-body">
					<div class="form-group">
					<form action="/inventory/update_data" method="POST">
						{{csrf_field()}}
						<table id="list" class="table table-hover table-bordered table-condensetd">
						<thead>
							<tr>
								<td>Item</td>
								<td>Item Number</td>
								<td>Holder</td>
								<td>Deslocation</td>
								<td>Action</td>
							</tr>	
						</thead>
						<tbody id="added_list">
				
						</tbody>
						</table>
					</form>
						<input class="form-control" id="search" name="search">
					</div>
					<table id="test_table" class="table table-hover table-bordered table-condensetd">
						<thead>
							<tr>
								<td>Item</td>
								<td>Item Number</td>
								<td>Holder</td>
								<td>Deslocation</td>
								<td>Action</td>
							</tr>	
						</thead>
						<tbody class="addo">
							<tr>

							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>	
	</div>
	<script type="text/javascript">
		$('#list').hide();
		$('#search').on('keyup',function(){
			$value=$(this).val();
				$.ajax({
					type : 'get',
					url : '{{URL::to('inventory/move_form')}}',
					data : {'search':$value},
					success:function(data)
					{
						var mod_dat = JSON.parse(data);
						var output = mod_dat.map(mod_dat => 
							'<tr>' + 
								 '<td id="item_nam">' + mod_dat.item + '</td>' +
								 '<td id="item_num">' + mod_dat.item_number + '</td>' + 
								 '<td>' + mod_dat.holder + '</td>' + 
								 '<td>' + mod_dat.deslocation + '</td>' + 
								 '<td>' + '<button type="button" class="btn btn-primary" id="add-to-list">+ Add to list</button>' + '</td>' + 
							'</tr>');
						if(data.no !== "")
							$('.addo').html(output);
				}
			});
		})
		$(document).on('click', '#add-to-list', function(){ 
			var name = $(this).closest('tr').find('#item_nam').text(); 
			var nbr = $(this).closest('tr').find('#item_num').text(); 
			for (var i = 0; i <= 10; i++);
			var output = '<tr id="s">' +
				'<td><input type="text" name="item" value="' + name + '" readonly></td>' +
				'<td><input type="text" name="item_number" value="' + nbr + '" readonly></td>' +
				'<td><select id="to_who" name="holder"><option value="Employees"></option></select></td>' +
				'<td><button type="button" id="dlt" class="btn btn-warning">Delete from list</button></td>' +
				'</tr>';
			$("#added_list").append(output);
			console.log(i);
			$("#list").show();
			$(this).closest('tr').remove();
			})
		$("#to_who").on('click', function(){
			$old_holder=$(this).val;
			$.ajax({
				type : 'get',
				url : '{{URL::to('inventory/move_form')}}',
				data : {'search':$value},
				success:function(data)
				{
					var a = JSON.parse(data);
					var output = a.map(a => '<option>' + a.holder + '</option>');
					$("#to_who").html(output);
				}
			});
		})
		</script>
	<script type="text/javascript">
	</script>
</body>
</html>
