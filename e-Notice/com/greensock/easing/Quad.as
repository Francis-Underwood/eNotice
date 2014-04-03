package com.greensock.easing 
{
    public class Quad extends Object
    {
        public function Quad()
        {
            super();
            return;
        }

        public static function easeOut(arg1:Number, arg2:Number, arg3:Number, arg4:Number):Number
        {
            var loc1:*;
            arg1 = loc1 = arg1 / arg4;
            return (-arg3) * loc1 * (arg1 - 2) + arg2;
        }

        public static function easeIn(arg1:Number, arg2:Number, arg3:Number, arg4:Number):Number
        {
            var loc1:*;
            arg1 = loc1 = arg1 / arg4;
            return arg3 * loc1 * arg1 + arg2;
        }

        public static function easeInOut(arg1:Number, arg2:Number, arg3:Number, arg4:Number):Number
        {
            var loc1:*;
            arg1 = loc1 = arg1 / (arg4 * 0.5);
            if (loc1 < 1) 
            {
                return arg3 * 0.5 * arg1 * arg1 + arg2;
            }
            return (-arg3) * 0.5 * (--arg1 * (arg1 - 2) - 1) + arg2;
        }

        public static const power:uint=1;
    }
}
