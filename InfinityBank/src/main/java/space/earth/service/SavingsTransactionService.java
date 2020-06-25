package space.earth.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.bytebuddy.utility.RandomString;
import space.earth.dao.SavingsTransactionDAO;
import space.earth.entities.SavingsTransaction;
import space.earth.formModels.ATM;
import space.earth.formModels.Transfer;

@Service
public class SavingsTransactionService {

	@Autowired 
	private SavingsTransactionDAO dao; 

	public SavingsTransactionService() {
		// TODO Auto-generated constructor stub
	}
	
	public void createWithTransfer(Transfer transfer) {

		Date date = new Date();
		String transactionNumber = RandomString.make(7);
		SavingsTransaction savingsTransaction = new SavingsTransaction();
		savingsTransaction.setTransactionAmount(transfer.getAmount());
		savingsTransaction.setTransactionDate(date);
		savingsTransaction.setTransactionDescription(
				"Transfer from " + transfer.getTransferFrom() + " to " + transfer.getTransferTo());
		savingsTransaction.setTransactionNumber(transactionNumber);
		savingsTransaction.setTransactionType("transfer");

		dao.save(savingsTransaction);

	}

	public void createWithATM(ATM atm) {
		Date date = new Date();
		String transactionNumber = RandomString.make(7);
		SavingsTransaction savingsTransaction = new SavingsTransaction();
		savingsTransaction.setTransactionAmount(atm.getAmount());
		savingsTransaction.setTransactionDate(date);
		savingsTransaction.setTransactionNumber(transactionNumber);
		
		if (atm.getType().equals("deposit")) {
			savingsTransaction.setTransactionDescription(
					"Deposit to " + atm.getAccount());
			savingsTransaction.setTransactionType("deposit");
			
		}
		else if (atm.getType().equals("withdraw")) {
			
			savingsTransaction.setTransactionDescription(
					"Withdraw from " + atm.getAccount());
			savingsTransaction.setTransactionType("withdraw");
		}
		

		dao.save(savingsTransaction);
		
	}

	public List<SavingsTransaction> getAll() {
		return (List<SavingsTransaction>) dao.findAll();
	}
		
	}

	


