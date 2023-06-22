showList();
function showList() {
	console.log(users);
	users = JSON.parse(users);
	const $tr = $(".content table");
	let text = "";

	users.forEach(users => {
		text += `
					<tr class="tr">
					<td>
					<input type="checkbox" name="delete-report" class="term" />
					</td>
					<td>${users.userNumber}</td>
					<td>${users.userName}</td>
					<td>${users.userId}</td>
					<td>${users.userAddress}</td>
					<td>${users.userAge}</td>
					<td>${users.userGender}</td>
					<td>${users.userPhonenumber}</td>
					<td>${users.userEmail}</td>	
					</tr>
		`;

	});


	$tr.append(text);
}




















