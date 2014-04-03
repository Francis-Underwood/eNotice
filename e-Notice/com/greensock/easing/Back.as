package com.greensock.easing 
{
    public class Back extends Object
    {
        public function Back()
        {
            super();
            return;
        }

        public static function easeOut(arg1:Number, arg2:Number, arg3:Number, arg4:Number, arg5:Number=1.70158):Number
        {
            var loc1:*;
            arg1 = loc1 = (arg1 / arg4 - 1);
            return arg3 * (loc1 * arg1 * ((arg5 + 1) * arg1 + arg5) + 1) + arg2;
        }

        public static function easeIn(arg1:Number, arg2:Number, arg3:Number, arg4:Number, arg5:Number=1.70158):Number
        {
            var loc1:*;
            arg1 = loc1 = arg1 / arg4;
            return arg3 * loc1 * arg1 * ((arg5 + 1) * arg1 - arg5) + arg2;
        }

        public static function easeInOut(arg1:Number, arg2:Number, arg3:Number, arg4:Number, arg5:Number=1.70158):Number
        {
            var loc1:*;
            arg1 = loc1 = arg1 / (arg4 * 0.5);
            if (loc1 < 1) 
            {
                arg5 = loc1 = arg5 * 1.525;
                return arg3 * 0.5 * arg1 * arg1 * ((loc1 + 1) * arg1 - arg5) + arg2;
            }
            arg1 = loc1 = arg1 - 2;
            arg5 = loc1 = arg5 * 1.525;
            return arg3 / 2 * (loc1 * arg1 * ((loc1 + 1) * arg1 + arg5) + 2) + arg2;
        }
    }
}
