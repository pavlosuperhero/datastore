<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
<style>
	body{
		display:flex;
		justify-content:center;
		}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
	<form action="/inventory" method="POST">
		{{csrf_field()}}
	<table>
		<tr>
			<td>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="item" id="add_item_number" name="item">
				</div>
			</td>
			<td>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="item_number" id="add_item_number" name="item_number">
				</div>
			</td>
			<td>
				<div class="form-group">
					<input type="text" class="form-control" id="holder" placeholder="Holder" name="holder">
				</div>
			</td>
			<td>
				<div class="form-group">
					<input type="text" class="form-control" id="deslocation_item" placeholder="Deslocation" name="deslocation">
				</div>
			</td>
		</tr>
	</table>
	<button type="submit" class="btn btn-primary">Add</button>
	</form>
</div>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
