package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	

	
	public class Main extends MovieClip {

		var startPage:StartPage;
		var pondPage:PondPage;
		var hillPage:HilllPage;
		
		public function Main() {
			startPage=new StartPage;
			hillPage=new HilllPage;
			pondPage=new PondPage;
			addChild(startPage);
			
			startPage.hillButton.addEventListener(MouseEvent.CLICK,onHillButtonClick);
			startPage.pondButton.addEventListener(MouseEvent.CLICK,onPondButtonClick);
			hillPage.backButton.addEventListener(MouseEvent.CLICK,onBackButtonClick);

		}	
		function onHillButtonClick(event:MouseEvent):void
		{
			addChild(hillPage);
			removeChild(startPage);
		}
		function onPondButtonClick(event:MouseEvent):void
		{
			addChild(pondPage);
			removeChild(startPage);
		}	
		function onBackButtonClick(event:MouseEvent):void
		{
			addChild(startPage);
			removeChild(hillPage);
		}	
	}
}
