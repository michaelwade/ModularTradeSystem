# ModularTradeSystem

This is a modular trading system template for MQL4/MQL5. It contains multiple common modules, such as TradeSystemController, MoneyManager...etc. Modular design can reduce system coupling and improve code reusability. Avoiding putting all code into one file will make us focus on writing the main logic. The following are the main modules of this trading system.

- **TradeSystemController**

 	 The controller is the main logic part of the trading system.
 	 It processes the original signal data and combines it with other data
  	 for comprehensive analysis, and finally outputs the executable signal. You can customize your trading strategy here.  
 
- **MoneyManager**

	It's responsible for all operations about money, such as checking balance,calculating the lots to open, etc.    

- **OrderManager**

	It provides several normal operations about orders,suche as opening orders, closing orders,etc.

- **SignalEngine**

 	This module contains a interface named ISignalEngine, and a class named CSignalEngineImpl which implements ISignalEngine. CSignalEngineImpl independently encapsulates the logic about calculating signal. You can customize your signal calculation logic here. 

- **EnvChecker**

	It's responsible for checking the runtime environment before trading. Only allow trading when the environment is ok.


# Next Features
	
- **ExitManager**

	This module is going to manage all exit operations like setting StopLoss or TakeProfit and so on. 

# Disclaimer

   This trading system is ONLY for learning or reference, and cannot guarantee a stable profit in real account trading. If you must use it for real account trading, then we will not be responsible for your any results. Thank you!









