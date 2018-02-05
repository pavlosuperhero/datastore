<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<title></title>
</head>
<body>
<h1>hello!</h1>
	<div class="main_cont">
		<div class="col-sm-10 first"></div>
			<table class="table">
				<tr>
					<td><a class="btn btn-primary" href="/inventory/create" role="button">Add new Item</a></td>
					<td><a class="btn btn-primary" href="/inventory/move" role="button">Move Item</a></td>
				</tr>
				<tr>
					<td>Item Name</td>
					<td>Item Number</td>
					<td>Holder</td>
					<td>Place</td>
					<td>Action -> </td>
				</tr>
				@foreach ($datas as $data)
				<tr>
					<td>{{$data->item}}</td>
					<td>{{$data->item_number}}</td>
					<td><a href="/inventory/{{$data->holder}}">{{$data->holder}}</a></td>
					<td>{{$data->deslocation}}</td>
				</tr>
				@endforeach
			</table>
		</div>
	</div>
</body>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>
