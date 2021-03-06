//+------------------------------------------------------------------+
//|                                                        Input.mqh |
//|                                     Copyright 2020, Michael Wade |
//|                                             michaelwade@yeah.net |
//+------------------------------------------------------------------+
//| All input variables should be defined here.
//+------------------------------------------------------------------+
#property strict
#include "Const.mqh"

// Choose running mode,debug or release
input bool IsDebugMode = true;
// Whether to allow automated trading
input bool AllowAutoTrade = false;
// Whether to allow email
input bool AllowMail = true;
// Whether to allow hedge
input bool AllowHedge = false;
// Whether to allow using Martingale strategy
input bool AllowMartin = false;
// Minimum points between 2 same type orders
input int MinIntervalPoints = 500;
// Maximum acceptable slippage
input int Slippage = 100;
// How much money must be in the account
input double MoneyAtLeast = 500.0;
// How much money is needed for opening one lot position
input double MoneyEveryLot = 100000.0;
// Default initial lot
input double DefaultLots   = 0.01;
// The lot multiple to add positions
input double AddLotsMultiple = 1.1;
// Max Account Risk Percent
input double MaxAccountRiskPercent  = -0.2;
input int MaxOrderCounts = 5;

enum Orientation
  {
   ORI_NO = ORIENTATION_NO,
   ORI_UP = ORIENTATION_UP,
   ORI_DW = ORIENTATION_DW,
   ORI_HOR = ORIENTATION_HOR
  };
// The orientation which is confirmed manually.
// Default option ORI_NO: let machine determine the orientation.
input Orientation ArtificialOrientation = ORI_HOR;
//+------------------------------------------------------------------+
