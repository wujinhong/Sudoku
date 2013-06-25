package com.github.wujinhong
{
	/**
	 * 九宫格背景
	 * @author Gordon 597785841@qq.com copy from someone
	 * 2012/11/16是我国历生日
	 */
	public class NormalBackground extends Sudoku
	{
		public function NormalBackground() 
		{
			//
		}
		
		public function setSize(sWidth:Number, sHeight:Number):void
		{
			width = sWidth;
			height = sHeight;
		}
		
		public function setWidth(d:Number):void
		{
			width = d;
		}
		public function setHeight(d:Number):void
		{
			height = d;
		}
	}
}