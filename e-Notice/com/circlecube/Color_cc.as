package com.circlecube 
{
    import flash.display.*;
    import flash.geom.*;
    
    public class Color_cc extends Object
    {
        public function Color_cc()
        {
            super();
            return;
        }

        public static function setColor(arg1:flash.display.DisplayObject, arg2:Number, arg3:Number=1):void
        {
            var col:Number;
            var item:flash.display.DisplayObject;
            var alf:Number=1;
            var myColor:flash.geom.ColorTransform;

            var loc1:*;
            myColor = null;
            item = arg1;
            col = arg2;
            alf = arg3;
            try 
            {
                myColor = item.transform.colorTransform;
                if (col > 16777215) 
                {
                    col = 16777215;
                }
                else if (col < 0) 
                {
                    col = 0;
                }
                myColor.color = col;
                if (alf > 1) 
                {
                    alf = 1;
                }
                else if (alf < 0) 
                {
                    alf = 0;
                }
                myColor.alphaMultiplier = alf;
                item.transform.colorTransform = myColor;
            }
            catch (err:Error)
            {
                trace("ERROR! " + err.toString());
            }
            return;
        }

        public static function setRandomColor(arg1:flash.display.DisplayObject, arg2:Boolean=false):void
        {
            setColor(arg1, Math.floor(Math.random() * 16777215), Math.random());
            return;
        }
    }
}
