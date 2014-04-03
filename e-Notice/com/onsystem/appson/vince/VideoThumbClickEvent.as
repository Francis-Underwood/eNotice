// @auther Vincent Zhang
// @ dispatch when a video thumbnail in the movie gallery is clicked. 
package com.onsystem.appson.vince {

	import flash.events.Event;
	
	public class VideoThumbClickEvent extends Event {
		
		//public static const DEFAUST_NAME:String = 
		// event constants
		public static const ON_VID_TMBS_CLICK:String = "onVideoThumbClick";
		
		public var url:String;
		public var aspectOption:uint;
		public var width:uint;
		public var height:uint;
		
		public function VideoThumbClickEvent(u:String, aptOp:uint, w:uint, h:uint, type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type, bubbles,cancelable);
			this.url = u;
			this.aspectOption = aptOp;
			this.width = w;
			this.height = h;
		}
		
		public override function clone():Event
		{
			return new VideoThumbClickEvent(this.url, this.aspectOption, this.width, this.height, type, bubbles, cancelable);
		}
		
		public override function toString():String
		{
			return formatToString("url", "aspectOption", "width", "height", "type", "bubbles", "cancelable");
		}
	}
	
}