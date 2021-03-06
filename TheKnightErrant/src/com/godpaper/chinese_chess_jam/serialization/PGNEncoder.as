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
package com.godpaper.chinese_chess_jam.serialization
{
	//--------------------------------------------------------------------------
	//
	//  Imports
	//
	//--------------------------------------------------------------------------
	import flash.utils.describeType;
	
	/**
	 * PGNEncoder.as class.   	
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Aug 6, 2012 11:18:52 AM
	 */   	 
	public class PGNEncoder
	{		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		/** The string that is going to represent the object we're encoding */
		private var pgnString:String;
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
		/**
		 * Creates a new PGNEncoder.
		 *
		 * @param o The object to encode as a PGN string
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 9.0
		 * @tiptext
		 */
		public function PGNEncoder( value:* )
		{
			pgnString = convertToString( value );
		}     	
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		/**
		 * Gets the PGN string from the encoder.
		 *
		 * @return The PGN string representation of the object
		 * that was passed to the constructor
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 9.0
		 * @tiptext
		 */
		public function getString():String
		{
			return pgnString;
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
		/**
		 * Converts a value to it's PGN string equivalent.
		 *
		 * @param value The value to convert. Could be any
		 * type (object, number, array, etc)
		 */
		private function convertToString( value:* ):String
		{
			// determine what value is and convert it based on it's type
			if ( value is String )
			{
				// escape the string so it's formatted correctly
				return escapeString( value as String );
			}
			else if ( value is Number )
			{
				// only encode numbers that finate
				return isFinite( value as Number ) ? value.toString() : "null";
			}
			else if ( value is Boolean )
			{
				// convert boolean to string easily
				return value ? "true" : "false";
			}
			else if ( value is Array )
			{
				// call the helper method to convert an array
				return arrayToString( value as Array );
			}
			else if ( value is Object && value != null )
			{
				// call the helper method to convert an object
				return objectToString( value );
			}
			
			return "null";
		}
		
		/**
		 * Escapes a string accoding to the PGN specification.
		 *
		 * @param str The string to be escaped
		 * @return The string with escaped special characters
		 * according to the PGN specification
		 */
		private function escapeString( str:String ):String
		{
			// create a string to store the string's PGNstring value
			var s:String = "";
			// current character in the string we're processing
			var ch:String;
			// store the length in a local variable to reduce lookups
			var len:Number = str.length;
			
			// loop over all of the characters in the string
			for ( var i:int = 0; i < len; i++ )
			{
				// examine the character to determine if we have to escape it
				ch = str.charAt( i );
				switch ( ch )
				{
					case '"': // quotation mark
						s += "\\\"";
						break;
					
					//case '/': // solidus
					// s += "\\/";
					// break;
					
					case '\\': // reverse solidus
						s += "\\\\";
						break;
					
					case '\b': // bell
						s += "\\b";
						break;
					
					case '\f': // form feed
						s += "\\f";
						break;
					
					case '\n': // newline
						s += "\\n";
						break;
					
					case '\r': // carriage return
						s += "\\r";
						break;
					
					case '\t': // horizontal tab
						s += "\\t";
						break;
					
					default: // everything else
						
						// check for a control character and escape as unicode
						if ( ch < ' ' )
						{
							// get the hex digit(s) of the character (either 1 or 2 digits)
							var hexCode:String = ch.charCodeAt( 0 ).toString( 16 );
							
							// ensure that there are 4 digits by adjusting
							// the # of zeros accordingly.
							var zeroPad:String = hexCode.length == 2 ? "00" : "000";
							
							// create the unicode escape sequence with 4 hex digits
							s += "\\u" + zeroPad + hexCode;
						}
						else
						{
							
							// no need to do any special encoding, just pass-through
							s += ch;
							
						}
				} // end switch
				
			} // end for loop
			
			return "\"" + s + "\"";
		}
		
		/**
		 * Converts an array to it's PGN string equivalent
		 *
		 * @param a The array to convert
		 * @return The PGN string representation of <code>a</code>
		 */
		private function arrayToString( a:Array ):String
		{
			// create a string to store the array's PGNstring value
			var s:String = "";
			
			// loop over the elements in the array and add their converted
			// values to the string
			var length:int = a.length;
			for ( var i:int = 0; i < length; i++ )
			{
				// when the length is 0 we're adding the first element so
				// no comma is necessary
				if ( s.length > 0 )
				{
					// we've already added an element, so add the comma separator
					s += ","
				}
				
				// convert the value to a string
				s += convertToString( a[ i ] );
			}
			
			// KNOWN ISSUE: In ActionScript, Arrays can also be associative
			// objects and you can put anything in them, ie:
			// myArray["foo"] = "bar";
			//
			// These properties aren't picked up in the for loop above because
			// the properties don't correspond to indexes. However, we're
			// sort of out luck because the PGN specification doesn't allow
			// these types of array properties.
			//
			// So, if the array was also used as an associative object, there
			// may be some values in the array that don't get properly encoded.
			//
			// A possible solution is to instead encode the Array as an Object
			// but then it won't get decoded correctly (and won't be an
			// Array instance)
			
			// close the array and return it's string value
			return "[" + s + "]";
		}
		
		/**
		 * Converts an object to it's PGN string equivalent
		 *
		 * @param o The object to convert
		 * @return The PGN string representation of <code>o</code>
		 */
		private function objectToString( o:Object ):String
		{
			// create a string to store the object's PGNstring value
			var s:String = "";
			
			// determine if o is a class instance or a plain object
			var classInfo:XML = describeType( o );
			if ( classInfo.@name.toString() == "Object" )
			{
				// the value of o[key] in the loop below - store this
				// as a variable so we don't have to keep looking up o[key]
				// when testing for valid values to convert
				var value:Object;
				
				// loop over the keys in the object and add their converted
				// values to the string
				for ( var key:String in o )
				{
					// assign value to a variable for quick lookup
					value = o[ key ];
					
					// don't add function's to the PGN string
					if ( value is Function )
					{
						// skip this key and try another
						continue;
					}
					
					// when the length is 0 we're adding the first item so
					// no comma is necessary
					if ( s.length > 0 )
					{
						// we've already added an item, so add the comma separator
						s += ","
					}
					
					s += escapeString( key ) + ":" + convertToString( value );
				}
			}
			else // o is a class instance
			{
				// Loop over all of the variables and accessors in the class and
				// serialize them along with their values.
				for each ( var v:XML in classInfo..*.(
					name() == "variable"
					||
					(
						name() == "accessor"
						// Issue #116 - Make sure accessors are readable
						&& attribute( "access" ).charAt( 0 ) == "r" )
				) )
				{
					// Issue #110 - If [Transient] metadata exists, then we should skip
					if ( v.metadata && v.metadata.( @name == "Transient" ).length() > 0 )
					{
						continue;
					}
					
					// When the length is 0 we're adding the first item so
					// no comma is necessary
					if ( s.length > 0 )
					{
						// We've already added an item, so add the comma separator
						s += ","
					}
					
					s += escapeString( v.@name.toString() ) + ":"
						+ convertToString( o[ v.@name ] );
				}
			}
			
			return "{" + s + "}";
		}
		
	}
	
}