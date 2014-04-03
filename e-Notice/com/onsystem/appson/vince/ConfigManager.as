package com.onsystem.appson.vince {
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	public class ConfigManager extends EventDispatcher {
		/*	
	    // The name of the event to be fired when configuration is read
		public static const CONFIG_LOADED:String = "configLoaded";
		
		// Location of the config xml file
		public static const CONFIG_XML_URL:String = "xml/config.xml";
		
		// URL of the main xml file
		public static const MAIN_XML_URL:String = "xml/main.xml";
		
		// An XMLLoader instance to load config xml file to the memory
		private var configXMLLoader:XMLLoader;
		
		// Xml data
		private var xml:XML;
		*/
		public static const KILL_CACHE:Boolean = false;
		
		public static var LANG:String = "chi";
		
		public static var BACKGROUND_PHOTO_DIRECTORY:String = "images/background/";
		
		public static var LOGO_PHOTO_DIRECTORY:String = "images/logo/";
		
		public static var LOGO_MAX_HEIGHT:uint = 110;		
		
		/************** VARIABLES OF MAIN MENU MODULE **************/			
		
		public static var MENU_GB_DIRECTORY:String = "images/menu/";
		
		public static const NUM_OF_MENU_BUTTON:uint = 4;
		
		public static const NUM_OF_MENU_ITEM:uint = 9;
		
		public static var MENU_ITEM_HEIGHT:uint = 189;
		
		public static var MENU_ITEM_WIDTH:uint = 189;
		
		public static var APPSON_BOX_HEIGHT:uint = 100;
		
		public static var APPSON_BOX_WIDTH:uint = 100;

		
		/** coodination of starting point of main menu buttons 
		 **/
		 
		public static var MENU_ITEM_BUTTON_STARTING_X:Number = 370;
		
		public static var MENU_ITEM_BUTTON_STARTING_Y:Number = 370;
		
		public static var MENU_ITEM_BUTTON_MARGIN_TOP:Number = 0;
		
		public static var MENU_ITEM_BUTTON_MARGIN_LEFT:Number = 0;
		
		// 50 + 189
		public static var MENU_ITEM_BUTTON_SPACE_HOR:Number = 50;
		
		//public static const MENU_ITEM_BUTTON_WIDTH:Number = 189;
		
		// 42 + 189
		public static var MENU_ITEM_BUTTON_SPACE_VER:Number = 42;
		
		//public static const MENU_ITEM_BUTTON_HEIGHT:Number = 189;
		
		public static var APPSON_BOX_STARTING_X:Number = 900; 
		
		public static var APPSON_BOX_STARTING_Y:Number = 50; 
		
		public static var APPSON_BOX_ENDING_X:Number = 50; 
		
		/***********************************************************/	

		
		//public static var BANNER_AUTO_PLAY:Boolean = true;
		
		/************** VARIABLES OF BANNER MODULE **************/			
		
		public static var BANNER_PHOTO_DIRECTORY:String = "images/banner/";		
		
		public static var BANNER_AUTO_PLAY_DURATION:Number = 3000;
		
		public static var BANNER_NUM_OF_COL:uint = 8;
		
		public static var BANNER_NUM_OF_ROW:uint = 4;
		
		public static var BANNER_BAR_STATUS:Number = 1;
		
		public static var BANNER_TWEEN_DURATION:Number = 0.6;
		
		public static var BANNER_TWEEN_DELAY:Number = 0.01;
		
		public static var BANNER_MARGIN:Number = 10;
		
		public static var BANNER_OFFSTAGE_POSITION:Number = 300;
		
		public static var BANNER_BLOCK_SCALE:Number = 0.1;
		
		public static var BANNER_WIDTH:Number = 820;
		
		public static var BANNER_HEIGHT:Number = 540;
		
		/***********************************************************/		
		
		
		/************** VARIABLES OF PORTFOLIO MODULE **************/		
		
		public static var PORTFOLIO_DIRECTORY:String = "images/portfolio/";		
		
		/***********************************************************/
		
		
		/************** VARIABLES OF PORTFOLIO MODULE **************/		
		
		public static var OTHERS_DIRECTORY:String = "images/others/";		
		
		/***********************************************************/		
		
		
		/**************** VARIABLES OF NEWS MODULE *****************/
		
		public static var NEWS_DIRECTORY:String = "images/news/";
		
		public static var NEWS_THUMB_DIRECTORY:String = "thumbnails/";
		
		public static var NEWS_PHOTO_DIRECTORY:String = "photos/";
		
		public static var NEWS_ITEM_THUMB_WIDTH:Number = 105;
		
		public static var NEWS_ITEM_THUMB_HEIGHT:Number = 105;
		
		
		public static var NEWS_NUM_PER_PAGE:Number = 3;
		
		public static var NEWS_ITEM_WIDTH:Number = 490;
		
		public static var NEWS_ITEM_HEIGHT:Number = 105;
		
		public static var NEWS_ITEM_SPACE_HOR:Number = 50;
		
		public static var NEWS_ITEM_SPACE_VER:Number = 30;
		
		/***********************************************************/
		
		


		/************** VARIABLES OF GALLERY MODULE ***************/
		
		public static var GALLERY_DIRECTORY:String = "images/gallery/";
		
		public static var GALLERY_THUMB_DIRECTORY:String = "thumbnails/";
		
		public static var GALLERY_PHOTO_DIRECTORY:String = "photos/";
		
		public static var GALLERY_COVER_DIRECTORY:String = "cover/";
		
		public static var CONTENT_AREA_WIDTH:Number = 700;
		
		public static var CONTENT_AREA_HEIGHT:Number = 700;
		
		public static var ALBUM_COVER_NUM_OF_COLUMS:Number = 3;
		
		public static var ALBUM_COVER_NUM_OF_ROWS:Number = 2;
		
		public static var ALBUM_ITEM_SPACE_HOR:Number = 31;
		
		public static var ALBUM_ITEM_SPACE_VER:Number = 40;
		
		public static const ALBUM_ITEM_WIDTH:Number = 144;
		
		public static const ALBUM_ITEM_HEIGHT:Number = 184;
		
		public static var ALBUM_MASK_MARGIN_TOP:Number = 180;
		
		public static var ALBUM_MASK_MARGIN_LEFT:Number = 103;
		
		public static var ALBUM_MASK_WIDTH:Number = 494; //144*3+31*2
		
		//ALBUM_ITEM_WIDTH*ALBUM_COVER_NUM_OF_COLUMS + ALBUM_ITEM_SPACE_HOR*(ALBUM_COVER_NUM_OF_COLUMS-1)
		
		public static var ALBUM_MASK_HEIGHT:Number = 408; //184*2+40
		
		//ALBUM_ITEM_HEIGHT*ALBUM_COVER_NUM_OF_ROWS + ALBUM_ITEM_SPACE_VER*(ALBUM_COVER_NUM_OF_ROWS-1)
		
		public static var THUMB_NUM_OF_COLUMS:Number = 4;
		
		public static var THUMB_NUM_OF_ROWS:Number = 3;
		
		public static const THUMB_ITEM_WIDTH:Number = 113;
		
		public static const THUMB_ITEM_HEIGHT:Number = 113;
		
		public static var THUMB_ITEM_SPACE_HOR:Number = 14;
		
		public static var THUMB_ITEM_SPACE_VER:Number = 14;
		
		public static var ERROR_IMAGE_WIDTH:uint = 500;
		
		public static var ERROR_IMAGE_HEIGHT:uint = 500;
		
		public static var PHOTO_BORDER:Number = 4;
		
		public static var INFO_PANEL_MARGIN_TOP:Number = 20;
		
		public static var INFO_PANEL_MARGIN_LEFT:Number = 10;
		
		public static var INFO_PANEL_TEXT_SPACE:Number = 10;
		
		/***********************************************************/		
		
		
		
		// A reference to the ConfigManager
		private static var _configManager:ConfigManager;
		
		public function ConfigManager(singletonEnforcer:SingletonEnforcer) {			
			// NOTHING HERE
		}			
		/*
		public function load():void {
			
			// Create a new XMLLoader object
			configXMLLoader = new XMLLoader(CONFIG_XML_URL);
			
			// Add an event listener to be dispatched when xml is parsed.
			configXMLLoader.addEventListener(XMLLoader.XML_LOADED, onConfigXMLLoaded);
			
			// Start loading the file
			configXMLLoader.load();
			
		}
	    */
		/**
		 * This method is called when the configuration file is loaded.		 
		
		private function onConfigXMLLoaded(evt:Event):void {
			
			// Read the setting values from the configuration file 
			readConfig(configXMLLoader.getXML());
			dispatchEvent(new Event(ConfigManager.CONFIG_LOADED));

		}
		 */
		/**
		 * Reads all of the setting values from the configuration xml data and sets the
		 * appropriate variables.
		
		private function readConfig(xml:XML):void {

			
		}
		 */
		/**
		 * Returns the configuration manager.
		 */
		public static function getInstance():ConfigManager {
			
			if (_configManager == null) {
				_configManager = new ConfigManager(new SingletonEnforcer());
			}
			
			return _configManager;
			
		}
		
	}
	
}