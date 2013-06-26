package 
{
	import com.github.wujinhong.NormalBackground;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFieldType;
	
	/**
	 * 9宫格应用举例-随输入变化的文本底板
	 * @author Tiger 597785841@qq.com
	 * 2012/11/16 10:22
	 */
	public class Main extends Sprite 
	{
		public var inputTxt:TextField;
		public var theBg:com.github.wujinhong.NormalBackground;
		[Bindable]
		private var initPos:int = 100;
		public function Main()
		{
			super();
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			createItems();
		}
		
		private function createItems():void 
		{
			//创建标题
			var txtTitle:TextField = new TextField();
			
			txtTitle.x = initPos;
			
			txtTitle.y = 80
			
			txtTitle.textColor = 0xff0000;
			
			txtTitle.text = "请在下方输入内容！";
			
			addChild(txtTitle);
			
			//创建背景
			theBg = new NormalBackground();
			
			theBg.x = initPos;
			
			theBg.y = 100;
			
			theBg.setWidth(300);
			
			addChild(theBg);
			//创建输入文本
			inputTxt = new TextField();
			
			inputTxt.type = TextFieldType.INPUT;
			
			inputTxt.x = theBg.x + 4;
			inputTxt.y = theBg.y + 4;
			
			inputTxt.width = 292;
			
			inputTxt.wordWrap = true;
			
			inputTxt.autoSize = TextFieldAutoSize.LEFT;
			
			addChild(inputTxt);
			inputTxt.addEventListener(Event.CHANGE, resetTheBg);
			stage.addEventListener( MouseEvent.CLICK, onClick );
		}
		
		protected function onClick(e:MouseEvent):void
		{
			initPos++;
		}
		private function resetTheBg(e:Event):void 
		{
			theBg.setSize(inputTxt.width + 8, inputTxt.textHeight + 12);
		}
	}
}