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
package
{
	//--------------------------------------------------------------------------
	//
	//  Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * AssetsEmbed_1x.as class.   	
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created May 30, 2012 2:43:50 PM
	 */   	 
	public class AssetEmbeds_1x
	{		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		
		//----------------------------------
		//  CONSTANTS
		//----------------------------------
		// Compressed textures
		
//		[Embed(source="/assets/textures/1x/compressed_texture.atf", mimeType="application/octet-stream")]
//		public static const CompressedTexture:Class;
		
		// Fonts
		
		// The 'embedAsCFF'-part IS REQUIRED!!!!
		[Embed(source="/assets/fonts/1x/Ubuntu-R.ttf", embedAsCFF="false", fontFamily="Ubuntu")]
		public static const UbuntuRegular:Class;
		
		[Embed(source="/assets/fonts/1x/desyrel.fnt", mimeType="application/octet-stream")]
		public static const DesyrelXml:Class;
		
		[Embed(source="/assets/fonts/1x/desyrel.png")]
		public static const DesyrelTexture:Class;
		
		// Texture Atlas
		[Embed(source="/assets/textures/1x/defaultAtlasTexture.xml", mimeType="application/octet-stream")]
		public static const AtlasTextureXml:Class;
		
		[Embed(source="/assets/textures/1x/defaultAtlasTexture.png")]
		public static const AtlasTexture:Class;
		
		//
//		public static const IMG_BACK_GROUND:Class;
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