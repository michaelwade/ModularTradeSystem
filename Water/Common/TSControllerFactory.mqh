//+------------------------------------------------------------------+
//|                                          TSControllerFactory.mqh |
//|                                    Copyright 2020, Michael Wade. |
//|                                             michaelwade@yeah.net |
//+------------------------------------------------------------------+
#property strict

#include "..\BuildConfig.mqh"
#include "TradeSystemController.mqh"

#ifdef BollingerMartin
#include "..\BollingerMartin\TSControllerBollinger.mqh"
#endif
#ifdef FollowTrend
#include "..\FollowTrend\TSControllerTrend.mqh"
#endif


//+------------------------------------------------------------------+
//| A factory for producing TradeSystemController instance                                                                 |
//+------------------------------------------------------------------+
class CTSControllerFactory
  {
public:
   static CTradeSystemController* Create();
  };

//+------------------------------------------------------------------+
//| to get controller instance                                                                     |
//+------------------------------------------------------------------+
CTradeSystemController* CTSControllerFactory::Create()
  {
#ifdef BollingerMartin
   return new CTSControllerBollinger;
#endif
#ifdef FollowTrend
   return new CTSControllerTrend;
#endif
  }

//+------------------------------------------------------------------+
