/*게시글 목록*/
showList();
function showList() {
	console.log(report);
	report = JSON.parse(report);
	const $tr = $(".content table");
	let text = "";

	report.forEach(report => {
		text += `
					<tr class="tr">
					<td>
					<input type="checkbox" name="delete-report" class="term" />
					</td>
					<td>${report.reportId}</td>
					<td>${report.userName}</td>
					<td>${report.userId}</td>
					<td>${report.reportContent}</td>	
					<td>${report.useUseddate}</td>	
					<td>${report.useStatus}</td>	
					</tr>
		`;

	});


	$tr.append(text);
}




















