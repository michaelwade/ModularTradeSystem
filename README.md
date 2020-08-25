[中文版](https://github.com/michaelwade/ModularTradeSystem/blob/master/README-CN.md)  
[MyBlog](https://blog.csdn.net/woshiwangbiao/article/details/106414608)

# Update
- **Version 2.0**

	1. Rebuild the architecture to make the coupling degree between different trading systems is lower. And Only two lines of code you need to compile different trading systems.
	2. Provide a new Trading System which contains Martingale strategy.
	
![](https://github.com/michaelwade/ModularTradeSystem/blob/master/StrategyTester_water_martin.gif)

# ModularTradeSystem
This is a modular trading system template for MQL4/MQL5. It contains multiple common modules, such as TradeSystemController, MoneyManager...etc. Modular design can reduce system coupling and improve code reusability. Avoiding putting all code into one file will make us focus on writing the main logic. The following are the main modules of this trading system.

- **TradeSystemController**

	The controller is the main logic part of the trading system. In this module,there is an abstract class named CTradeSystemController.It has some basic virtual functions to impliment.In these functions,you can process the original signal data from SignalEngines and combine it with other data for comprehensive analysis,and finally outputs the executable signal. You can customize your trading strategy here.
 
- **MoneyManager**

	It's responsible for all operations about money, such as checking balance,calculating the lots to open, etc.    

- **OrderManager**

	It provides several normal operations about orders,suche as opening orders, closing orders,etc.

- **SignalEngine**

	This module contains a interface named ISignalEngine, which you have to impliment. Your implimented class should independently encapsulates the logic about calculating signal. By the way, you can customize more than one SignalEngine instance, such as SignalEngineMacd and SignalEngineMartingale.Then combine the signals from these engines to get the executable signals.

- **EnvChecker**

	It's responsible for checking the runtime environment before trading. Only allow trading when the environment is ok.


# How to use

1. **How to compile**

	In the file 'BuildConfig.mqh', comment out all trade systems except the one you want to compile, and then compile the project。

1. **Customize your SignalEngine**

	You can create one or more class to impliment the 'ISignalEngine' interface, and put the logic about calculating some indicators' signals in them. Yon can 
	There are three implemented CustomSignalEngine examples to refer to in this project.

2. **Customize your TradeSystemController**

	You can create a class to impliment the 'CTradeSystemController' abstract class. In the class, you need to process the original signal data from SignalEngines and combine it with other data for comprehensive analysis,and finally outputs the executable signal. Then add your customized controller in the factory class named 'CTSControllerFactory', and add the corresponding preprocessing instructions in the 'BuildConfig.mqh' file.

# Next Features
	
- **ExitManager**

	This module is going to manage all exit operations like setting StopLoss or TakeProfit and so on. 

# Disclaimer

   This trading system is ONLY for learning or reference, and cannot guarantee a stable profit in real account trading. If you must use it for real account trading, then we will not be responsible for your any results. Thank you!









