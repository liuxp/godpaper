package com.godpaper.as3.consts
{
	//--------------------------------------------------------------------------
	//
	//  Imports
	//
	//--------------------------------------------------------------------------

	/**
	 * DefaultConstants.as class.
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 9.0
	 * Created Jan 27, 2011 5:15:29 PM
	 */   	 
	public class DefaultConstants
	{		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------

		//----------------------------------
		//  CONSTANTS
		//----------------------------------
		//about chess pieces' flag
		public static const FLAG_RED:uint=0;//1(000)
		public static const FLAG_BLUE:uint=1<<0;//2(010)
		public static const FLAG_GREEN:uint=1<<1;//4(100)
		//
		public static const COLOR_RED:String="red"; //below;
		public static const COLOR_BLUE:String="blue"; //above;
		//chess board backgroud
		public static const IMG_BACK_GROUND:String = "IMG_BACK_GROUND";
		//chess pieces(blue) main type consts
		public static const BLUE:String="BLUE";
		public static const BLUE_ROCK:String="BLUE_ROCK";
		public static const BLUE_STAR:String="BLUE_STAR";
		public static const BLUE_JEWEL:String="BLUE_JEWEL";
		//chess pieces(blue) sub type consts
//		public static const BLUE_ROOK:String="BLUE_ROOK";
//		public static const BLUE_KNIGHT:String="BLUE_KNIGHT";
//		public static const BLUE_BISHOP:String="BLUE_BISHOP";
//		public static const BLUE_OFFICAL:String="BLUE_OFFICAL";
//		public static const BLUE_MARSHAL:String="BLUE_MARSHAL";
//		public static const BLUE_CANNON:String="BLUE_CANNON";
//		public static const BLUE_PAWN:String="BLUE_PAWN";
		//chess pieces(red) main type consts
		public static const RED:String="RED";
		public static const RED_ROCK:String="RED_ROCK";
		public static const RED_STAR:String="RED_STAR";
		public static const RED_JEWEL:String="RED_JEWEL";
		//
		public static const YELLOW_JEWEL:String="YELLOW_JEWEL";
		public static const GREEN_JEWEL:String="GREEN_JEWEL";
		//chess pieces(red) sub type consts
//		public static const RED_ROOK:String="RED_ROOK";
//		public static const RED_KNIGHT:String="RED_KNIGHT";
//		public static const RED_BISHOP:String="RED_BISHOP";
//		public static const RED_OFFICAL:String="RED_OFFICAL";
//		public static const RED_MARSHAL:String="RED_MARSHAL";
//		public static const RED_CANNON:String="RED_CANNON";
//		public static const RED_PAWN:String="RED_PAWN";
		//chess pieces state label
		public static const STATE_ATTACK:String="Attack";
		public static const STATE_DEFENCE:String="Defence";
		public static const STATE_NASCENCE:String="Nascence";
		public static const STATE_RENASCENCE:String="Renascence";
		//game states' label
		public static const STATE_HUMAN:String="HumanTurn";
		public static const STATE_ANOTHER_HUMAN:String="AnotherHumanTurn";
		public static const STATE_COMPUTER:String="ComputerTurn";
		public static const STATE_HUMAN_WIN:String="HumanWin";
		public static const STATE_COMPUTER_WIN:String="ComputerWin";
		public static const STATE_ANOTHER_HUMAN_WIN:String = "AnotherHumanWin";
		//indications
		public static const INDICATION_THINK:String="Thinking..";
		public static const INDICATION_CHECK:String="Eschequier";
		public static const INDICATION_COMPUTER_WIN:String="Computer Win!!!";
		public static const INDICATION_HUMAN_WIN:String="You Win!!!";
		//P2P connnections(Server,DevKey)
		//Stratus:rtmfp://stratus.adobe.com/99ead580edaf280c060675f9-f614dd07a932
		//Cirrus:rtmfp://p2p.rtmfp.net/40a1c5b634bc4f531ad7757f-2e3cf422214e/
		public static const CIRRUS_SERVER:String = "rtmfp://stratus.adobe.com/";//"rtmfp://p2p.rtmfp.net/";
		public static const CIRRUS_DEV_KEY:String = "99ead580edaf280c060675f9-f614dd07a932";//"40a1c5b634bc4f531ad7757f-2e3cf422214e";
		//Screen ids
		public static const SCREEN_SPLASH:String = "screen_splash";
		public static const SCREEN_MAIN_MENU:String = "screen_main_menu";
		public static const SCREEN_GAME:String = "screen_game";
		public static const SCREEN_HANDSHAKE:String = "screen_handshake";
		public static const SCREEN_SETTINGS:String = "screen_settings";
		//Chess board type
		public static const CHESS_BOARD_TYPE_INTERSECTION:String = "ChessBoardType::intersection";//point of intersection
		public static const CHESS_BOARD_TYPE_CHECKERING:String = "ChessBoardType::checkering";//mark into squares or draw squares on; draw crossed lines on
		public static const CHESS_BOARD_TYPE_SEGMENT:String = "ChessBoardType::segament";//section of line
		public static const CHESS_BOARD_TYPE_FRACTAL:String = "ChessBoardType::fractal";//mathematical fractal
		//Locale languages
		public static const LOCALE_LANG_ZH_CN:String = "zh_CN";
		public static const LOCALE_LANG_EN_US:String = "en_US";
		public static const LOCALE_LANG_KO_KR:String = "ko_KR";
		//Resource bundles
		public static const LOCLAE_BUNDLE_SCREEN:String = "screen_resources_";
		//--------------------------------------------------------------------------
		//
		//  Public properties
		//
		//-------------------------------------------------------------------------- 

		//--------------------------------------------------------------------------
		//
		//  Protected properties
		//
		//-------------------------------------------------------------------------- 

		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		public function DefaultConstants()
		{
		}     	
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  Protected methods
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  Private methods
		//
		//--------------------------------------------------------------------------
	}

}

