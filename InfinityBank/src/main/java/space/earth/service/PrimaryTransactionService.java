package space.earth.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.bytebuddy.utility.RandomString;
import space.earth.dao.PrimaryTransactionDAO;
import space.earth.entities.PrimaryTransaction;
import space.earth.formModels.ATM;
import space.earth.formModels.Transfer;

@Service
public class PrimaryTransactionService {

	@Autowired
	private PrimaryTransactionDAO dao;

	public PrimaryTransactionService() {
		// TODO Auto-generated constructor stub
	}

	public void createWithTransfer(Transfer transfer) {

		Date date = new Date();
		String transactionNumber = RandomString.make(7);
		PrimaryTransaction primaryTransaction = new PrimaryTransaction();
		primaryTransaction.setTransactionAmount(transfer.getAmount());
		primaryTransaction.setTransactionDate(date);
		primaryTransaction.setTransactionDescription(
				"Transfer from " + transfer.getTransferFrom() + " to " + transfer.getTransferTo());
		primaryTransaction.setTransactionNumber(transactionNumber);
		primaryTransaction.setTransactionType("transfer");

		dao.save(primaryTransaction);

	}

	public void createWithATM(ATM atm) {
		Date date = new Date();
		String transactionNumber = RandomString.make(7);
		PrimaryTransaction primaryTransaction = new PrimaryTransaction();
		primaryTransaction.setTransactionAmount(atm.getAmount());
		primaryTransaction.setTransactionDate(date);
		primaryTransaction.setTransactionNumber(transactionNumber);
		
		if (atm.getType().equals("deposit")) {
			primaryTransaction.setTransactionDescription(
					"Deposit to " + atm.getAccount());
			primaryTransaction.setTransactionType("deposit");
			
		}
		else if (atm.getType().equals("withdraw")) {
			
			primaryTransaction.setTransactionDescription(
					"Withdraw from " + atm.getAccount());
			primaryTransaction.setTransactionType("withdraw");
		}
		

		dao.save(primaryTransaction);
		
	}

	public List<PrimaryTransaction> getAll() {
		return (List<PrimaryTransaction>) dao.findAll();
		
	}

}
