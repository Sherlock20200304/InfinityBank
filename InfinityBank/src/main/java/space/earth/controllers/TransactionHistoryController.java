package space.earth.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import space.earth.entities.PrimaryTransaction;
import space.earth.entities.SavingsTransaction;
import space.earth.formModels.ProfileUserId;
import space.earth.service.PrimaryTransactionService;
import space.earth.service.SavingsTransactionService;

@Controller
@RequestMapping
public class TransactionHistoryController {
	@Autowired
	private PrimaryTransactionService primaryTransactionService; 
	@Autowired
	private SavingsTransactionService savingsTransactionService; 
	

	@PostMapping("/primaryTransaction")
	private ModelAndView primaryTransaction(@ModelAttribute ProfileUserId profileUserId) {
		ModelAndView history = new ModelAndView("primaryTransactionHistory");

		List<PrimaryTransaction> primaryTransactions = new ArrayList<>();
		primaryTransactions = primaryTransactionService.getAll(); 
		
		history.addObject("PrimaryTransactions", primaryTransactions);

		return history;
	}

	@PostMapping("/savingsTransaction")
	private ModelAndView savingsTransaction(@ModelAttribute ProfileUserId profileUserId) {
		ModelAndView history = new ModelAndView("savingsTransactionHistory");
		List<SavingsTransaction> savingsTransactions = new ArrayList<> (); 
		savingsTransactions = savingsTransactionService.getAll();
		history.addObject("SavingsTransactions", savingsTransactions);
		return history;

	}

}
