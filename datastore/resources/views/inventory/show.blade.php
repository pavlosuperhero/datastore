<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
	<table class="table">
		<tr>
			<th>Item Name</th>
			<th>Item Number</th>
			<th>Holder</th>
			<th>Place</th>
		</tr>
	@foreach($holders as $holder)
		<tr>
			<td>{{$holder->item}}</td>
			<td>{{$holder->item_number}}</td>
			<td>{{$holder->holder}}</td>
			<td>{{$holder->deslocation}}</td>
		</tr>
	@endforeach
	</table>
	<a href="/inventory">Go home!</a>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>
