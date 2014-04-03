package com.circlecube 
{
    import flash.external.*;
    
    public class GATC_cc extends Object
    {
        public function GATC_cc()
        {
            super();
            return;
        }

        public static function trackGAEvent(arg1:String, arg2:String, arg3:String="", arg4:Number=NaN):void
        {
            var loc1:*="";
            var loc2:*="\'" + arg1;
            var loc3:*="\', \'" + arg2 + "\'";
            var loc4:*=arg3 != "" ? ", \'" + arg3 + "\'" : "";
            if (!isNaN(arg4)) 
            {
                loc1 = ", " + Math.round(arg4);
            }
            flash.external.ExternalInterface.call("_gaq.push", "[\'_trackEvent\', " + loc2 + loc3 + loc4 + loc1 + "]");
            trace("====GATC====", "_gaq.push", "[\'_trackEvent\', " + loc2 + loc3 + loc4 + loc1 + "]");
            return;
        }
    }
}
