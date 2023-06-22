showList();
function showList() {
	console.log(main);
	main = JSON.parse(main);
	const $tr = $(".content tables1");
	let text = "";

	main.forEach(main => {
		text += `
					<tr class="tr">
					<td>
					<input type="checkbox" name="delete-report" class="term" />
					</td>
					<td>${main.userNumber}</td>
					<td>${users.userName}</td>
					<td>${users.userId}</td>
					<td>${users.userAddress}</td>
					<td>${users.userAge}</td>
					<td>${users.userGender}</td>
					<td>${users.userPhonenumber}</td>
					<td>${users.userEmail}</td>	
					</tr>
					<tbody>
						<tr>
						<td>${users.userName}</td>	
						<td>${users.userId}</td>	
						<td>22-01-21</td>	
						</tr>
					</tbody>
		`;

	});


	$tr.append(text);
}




















