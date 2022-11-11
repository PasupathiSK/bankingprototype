<!DOCTYPE jsp>
<jsp>
<head>
<meta charset="UTF-8">
<title>Transaction Menu</title>
<style>
.height {
	height: 50px;
	display: block;
}
</style>
</head>
<body>
	<menu>
		<div class="height">
			<form action="../../../DepositPage" method="post" target="transaction">
				<input type="submit" value="Deposit"/>
			</form>
		</div>
		<div class="height">
			<form action="../../../WithdrawRequestPage" method="post" target="transaction">
				<input type="submit" value="Withdraw"/>
			</form>
		</div>
		<div class="height">
			<form action="../../../TransferPage" method="post" target="transaction">
				<input type="submit" value="Transfer"/>
			</form>
		</div>
		<div class="height">
			<form action="../../../TransactionLimitPage" method="post" target="transaction">
				<input type="submit" value="Statement"/>
			</form>
		</div>
	</menu>
</body>
</jsp>