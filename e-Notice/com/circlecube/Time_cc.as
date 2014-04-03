package com.circlecube 
{
    public class Time_cc extends Object
    {
        public function Time_cc()
        {
            super();
            return;
        }

        public static function timeCodeToSeconds(arg1:String, arg2:String="-"):Number
        {
            var loc1:*=new Array();
            loc1 = arg1.split(arg2);
            var loc2:*=0;
            var loc3:*=0;
            var loc4:*=0;
            while (loc4 < (loc1.length - 1)) 
            {
                loc2 = loc1[loc4] * 60;
                loc1[loc4 + 1] = parseInt(loc1[loc4 + 1]) + loc2;
                ++loc4;
            }
            return loc3 = loc1[(loc1.length - 1)];
        }

        public static function secondsToTimeCode(arg1:*, arg2:String=":"):String
        {
            if (isNaN(arg1) || arg1 < 0) 
            {
                arg1 = 0;
                return "--" + arg2 + "--";
            }
            var loc1:*="";
            var loc2:*=Math.floor(arg1 / 60);
            arg1 = arg1 - loc2 * 60;
            var loc3:*=Math.floor(loc2 / 60);
            loc2 = loc2 - loc3 * 60;
            arg1 = arg1 < 10 ? "0" + Math.floor(arg1) : Math.floor(arg1);
            loc2 = loc2 < 10 ? "0" + Math.floor(loc2) + arg2 : Math.floor(loc2) + arg2;
            loc1 = (loc3 = (loc3 = loc3 < 10 ? "0" + Math.floor(loc3) : Math.floor(loc3)) != 0 ? loc3 + arg2 : "") + loc2 + arg1;
            return loc1;
        }

        public static function secondsToMinutes(arg1:Number):Number
        {
            var loc1:*=0;
            if (isNaN(arg1) || arg1 < 0) 
            {
                return loc1;
            }
            loc1 = Math.floor(arg1 / 60);
            return loc1;
        }

        public static function millisecondsToTimeCode(arg1:*, arg2:String=":"):String
        {
            return secondsToTimeCode(arg1 / 1000, arg2);
        }
    }
}
