showList();
function showList() {
	console.log(answer);
	answer = JSON.parse(answer);
	const $tr = $(".content table");
	let text = "";

	answer.forEach(answer => {
		text += `
					<tr class="tr">
					<td>
					<input type="checkbox" name="delete-report" class="term" />
					</td>
					<td>${answer.answerNumber}</td>
					<td>${answer.userName}</td>
					<td>${answer.userId}</td>
					<td>${answer.answerContent}</td>
					<td>${answer.boardDate}</td>
					<td>${answer.useStatus}</td>
					</tr>
		`;

	});


	$tr.append(text);
}























