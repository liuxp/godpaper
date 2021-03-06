/**
 *  GODPAPER Confidential,Copyright 2012. All rights reserved.
 *
 *  Permission is hereby granted, free of charge, to any person obtaining
 *  a copy of this software and associated documentation files (the "Software"),
 *  to deal in the Software without restriction, including without limitation
 *  the rights to use, copy, modify, merge, publish, distribute, sub-license,
 *  and/or sell copies of the Software, and to permit persons to whom the
 *  Software is furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included
 *  in all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 *  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 *  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 *  IN THE SOFTWARE.
 */
package com.godpaper.the_chess_jam.business.factory
{
	//--------------------------------------------------------------------------
	//
	//  Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.business.factory.ChessFactoryBase;
	import com.godpaper.as3.consts.DefaultConstants;
	import com.godpaper.as3.consts.DefaultPiecesConstants;
	import com.godpaper.as3.core.IChessPiece;
	import com.godpaper.as3.core.IChessVO;
	import com.godpaper.as3.model.ChessPiecesModel;
	import com.godpaper.as3.model.vos.ConductVO;
	import com.godpaper.as3.model.vos.OmenVO;
	import com.godpaper.as3.views.components.ChessPiece;
	import com.godpaper.the_chess_jam.consts.Constants_TheChessJam;
	import com.godpaper.the_chess_jam.consts.PiecesConstants_TheChessJam;
	
	import flash.geom.Point;
	
	
	/**
	 * ChessFactory_TheChessJam.as class.   	
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Sep 18, 2012 3:06:37 PM
	 */   	 
	public class ChessFactory_TheChessJam extends ChessFactoryBase
	{		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		
		//----------------------------------
		//  CONSTANTS
		//----------------------------------
		
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
		public function ChessFactory_TheChessJam()
		{
			super();
		}     	
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		override public function createChessPiece(position:Point, flag:uint=0):IChessPiece
		{
			//switch custom define properties.
			switch (position.toString())
			{
				//about blue
				case "(x=0, y=0)":
				case "(x=7, y=0)":
					chessPieceLabel=PiecesConstants_TheChessJam.BLUE_ROOK.label;
					chessPieceValue=PiecesConstants_TheChessJam.BLUE_ROOK.value;
					chessPieceType=Constants_TheChessJam.BLUE_ROOK;
					break;
				case "(x=1, y=0)":
				case "(x=6, y=0)":
					chessPieceLabel=PiecesConstants_TheChessJam.BLUE_KNIGHT.label;
					chessPieceValue=PiecesConstants_TheChessJam.BLUE_KNIGHT.value;
					chessPieceType=Constants_TheChessJam.BLUE_KNIGHT;
					break;
				case "(x=2, y=0)":
				case "(x=5, y=0)":
					chessPieceLabel=PiecesConstants_TheChessJam.BLUE_BISHOP.label;
					chessPieceValue=PiecesConstants_TheChessJam.BLUE_BISHOP.value;
					chessPieceType=Constants_TheChessJam.BLUE_BISHOP;
					break;
				case "(x=3, y=0)":
					chessPieceLabel=PiecesConstants_TheChessJam.BLUE_QUEEN.label;
					chessPieceValue=PiecesConstants_TheChessJam.BLUE_QUEEN.value;
					chessPieceType=Constants_TheChessJam.BLUE_QUEEN;
					break;
				case "(x=4, y=0)":
					chessPieceLabel=PiecesConstants_TheChessJam.BLUE_MARSHAL.label;
					chessPieceValue=PiecesConstants_TheChessJam.BLUE_MARSHAL.value;
					chessPieceType=Constants_TheChessJam.BLUE_MARSHAL;
					break;
				case "(x=0, y=1)":
				case "(x=1, y=1)":
				case "(x=2, y=1)":
				case "(x=3, y=1)":
				case "(x=4, y=1)":
				case "(x=5, y=1)":
				case "(x=6, y=1)":
				case "(x=7, y=1)":
					chessPieceLabel=PiecesConstants_TheChessJam.BLUE_PAWN.label;
					chessPieceValue=PiecesConstants_TheChessJam.BLUE_PAWN.value;
					chessPieceType=Constants_TheChessJam.BLUE_PAWN;
					break;
				//about red
				case "(x=0, y=7)":
				case "(x=7, y=7)":
					chessPieceLabel=PiecesConstants_TheChessJam.RED_ROOK.label;
					chessPieceValue=PiecesConstants_TheChessJam.RED_ROOK.value;
					chessPieceType=Constants_TheChessJam.RED_ROOK;
					break;
				case "(x=1, y=7)":
				case "(x=6, y=7)":
					chessPieceLabel=PiecesConstants_TheChessJam.RED_KNIGHT.label;
					chessPieceValue=PiecesConstants_TheChessJam.RED_KNIGHT.value;
					chessPieceType=Constants_TheChessJam.RED_KNIGHT;
					break;
				case "(x=2, y=7)":
				case "(x=5, y=7)":
					chessPieceLabel=PiecesConstants_TheChessJam.RED_BISHOP.label;
					chessPieceValue=PiecesConstants_TheChessJam.RED_BISHOP.value;
					chessPieceType=Constants_TheChessJam.RED_BISHOP;
					break;
				case "(x=3, y=7)":
					chessPieceLabel=PiecesConstants_TheChessJam.RED_QUEEN.label;
					chessPieceValue=PiecesConstants_TheChessJam.RED_QUEEN.value;
					chessPieceType=Constants_TheChessJam.RED_QUEEN;
					break;
				case "(x=4, y=7)":
					chessPieceLabel=PiecesConstants_TheChessJam.RED_MARSHAL.label;
					chessPieceValue=PiecesConstants_TheChessJam.RED_MARSHAL.value;
					chessPieceType=Constants_TheChessJam.RED_MARSHAL;
					break;
				case "(x=0, y=6)":
				case "(x=1, y=6)":
				case "(x=2, y=6)":
				case "(x=3, y=6)":
				case "(x=4, y=6)":
				case "(x=5, y=6)":
				case "(x=6, y=6)":
				case "(x=7, y=6)":
					chessPieceLabel=PiecesConstants_TheChessJam.RED_PAWN.label;
					chessPieceValue=PiecesConstants_TheChessJam.RED_PAWN.value;
					chessPieceType=Constants_TheChessJam.RED_PAWN;
					break;
				default:
					return null;
					break;
			}
			//call super functions.
			return super.createChessPiece(position,flag);
		}
		//
		override public function generateChessVO(conductVO:ConductVO):IChessVO
		{
			return null;
		}
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