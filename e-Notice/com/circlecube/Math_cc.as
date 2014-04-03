package com.circlecube 
{
    import flash.display.*;
    
    public class Math_cc extends Object
    {
        public function Math_cc()
        {
            super();
            return;
        }

        public static function interpolate(arg1:Number, arg2:Number, arg3:Number):Number
        {
            return arg2 + (arg3 - arg2) * arg1;
        }

        public static function resizeMe(arg1:flash.display.DisplayObject, arg2:Number, arg3:Number=0, arg4:Boolean=true, arg5:Boolean=true, arg6:Boolean=true):void
        {
            arg3 = arg3 != 0 ? arg3 : arg2;
            arg1.width = arg2;
            arg1.height = arg3;
            if (arg4) 
            {
                if (arg1.scaleX < arg1.scaleY) 
                {
                    arg1.scaleY = arg1.scaleX;
                }
                else 
                {
                    arg1.scaleX = arg1.scaleY;
                }
            }
            if (arg5) 
            {
                arg1.x = (arg2 - arg1.width) / 2;
            }
            if (arg6) 
            {
                arg1.y = (arg3 - arg1.height) / 2;
            }
            return;
        }

        public static function getAngle(arg1:Number, arg2:Number, arg3:Number, arg4:Number):Number
        {
            var loc1:*=Math.atan2(arg2 - arg4, arg1 - arg3);
            return toDeg(loc1);
        }

        public static function rand(arg1:Number, arg2:Number=NaN):int
        {
            if (isNaN(arg2)) 
            {
                arg2 = arg1;
                arg1 = 0;
            }
            return Math.floor(randFloat(arg1, arg2));
        }

        public static function randFloat(arg1:Number, arg2:Number=NaN):Number
        {
            if (isNaN(arg2)) 
            {
                arg2 = arg1;
                arg1 = 0;
            }
            return Math.random() * (arg2 - arg1) + arg1;
        }

        public static function bool(arg1:Number=0.5):Boolean
        {
            return Math.random() < arg1 ? true : false;
        }

        public static function toRad(arg1:Number):Number
        {
            return arg1 / 180 * Math.PI;
        }

        public static function toDeg(arg1:Number):Number
        {
            return arg1 / Math.PI * 180;
        }

        public static function map(arg1:Number, arg2:Number, arg3:Number, arg4:Number, arg5:Number):Number
        {
            return interpolate(normalize(arg1, arg2, arg3), arg4, arg5);
        }

        public static function normalize(arg1:Number, arg2:Number, arg3:Number):Number
        {
            return (arg1 - arg2) / (arg3 - arg2);
        }

        public static function resizeMeFill(arg1:flash.display.DisplayObject, arg2:Number, arg3:Number=0):void
        {
            arg3 = arg3 != 0 ? arg3 : arg2;
            arg1.width = arg2;
            arg1.height = arg3;
            if (arg1.scaleX > arg1.scaleY) 
            {
                arg1.scaleY = arg1.scaleX;
            }
            else 
            {
                arg1.scaleX = arg1.scaleY;
            }
            arg1.x = arg2 / 2 - arg1.width / 2;
            arg1.y = arg3 / 2 - arg1.height / 2;
            return;
        }
    }
}
