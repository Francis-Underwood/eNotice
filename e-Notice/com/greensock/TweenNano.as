package com.greensock 
{
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    
    public class TweenNano extends Object
    {
        public function TweenNano(arg1:Object, arg2:Number, arg3:Object)
        {
            super();
            if (!_tnInitted) 
            {
                _time = flash.utils.getTimer() * 0.001;
                _frame = 0;
                _shape.addEventListener(flash.events.Event.ENTER_FRAME, updateAll, false, 0, true);
                _tnInitted = true;
            }
            this.vars = arg3;
            this.duration = arg2;
            this.active = Boolean(arg2 == 0 && this.vars.delay == 0 && !(this.vars.immediateRender == false));
            this.target = arg1;
            if (typeof this.vars.ease == "function") 
            {
                _ease = this.vars.ease;
            }
            else 
            {
                _ease = com.greensock.TweenNano.easeOut;
            }
            _propTweens = [];
            this.useFrames = Boolean(arg3.useFrames == true);
            var loc1:*="delay" in this.vars ? Number(this.vars.delay) : 0;
            this.startTime = this.useFrames ? _frame + loc1 : _time + loc1;
            var loc2:*;
            if ((loc2 = _masterList[arg1]) == null || int(this.vars.overwrite) == 1 || this.vars.overwrite == null) 
            {
                _masterList[arg1] = [this];
            }
            else 
            {
                loc2[loc2.length] = this;
            }
            if (this.vars.immediateRender == true || this.active) 
            {
                renderTime(0);
            }
            return;
        }

        public function renderTime(arg1:Number):void
        {
            var loc1:*=null;
            if (!_initted) 
            {
                init();
            }
            var loc2:*=_propTweens.length;
            if (arg1 >= this.duration) 
            {
                arg1 = this.duration;
                this.ratio = 1;
            }
            else if (arg1 <= 0) 
            {
                this.ratio = 0;
            }
            else 
            {
                this.ratio = _ease(arg1, 0, 1, this.duration);
            }
            while (--loc2 > -1) 
            {
                loc1 = _propTweens[loc2];
                this.target[loc1[0]] = loc1[1] + this.ratio * loc1[2];
            }
            if (this.vars.onUpdate) 
            {
                this.vars.onUpdate.apply(null, this.vars.onUpdateParams);
            }
            if (arg1 == this.duration) 
            {
                complete(true);
            }
            return;
        }

        public function init():void
        {
            var loc1:*=null;
            var loc2:*=null;
            var loc3:*=0;
            var loc4:*=0;
            var loc5:*=this.vars;
            for (loc1 in loc5) 
            {
                if (loc1 in _reservedProps) 
                {
                    continue;
                }
                _propTweens[_propTweens.length] = [loc1, this.target[loc1], typeof this.vars[loc1] != "number" ? Number(this.vars[loc1]) : this.vars[loc1] - this.target[loc1]];
            }
            if (this.vars.runBackwards) 
            {
                loc3 = _propTweens.length;
                while (--loc3 > -1) 
                {
                    loc2 = _propTweens[loc3];
                    loc2[1] = loc2[1] + loc2[2];
                    loc2[2] = -loc2[2];
                }
            }
            _initted = true;
            return;
        }

        public function kill():void
        {
            this.gc = true;
            this.active = false;
            return;
        }

        public function complete(arg1:Boolean=false):void
        {
            if (!arg1) 
            {
                renderTime(this.duration);
                return;
            }
            kill();
            if (this.vars.onComplete) 
            {
                this.vars.onComplete.apply(null, this.vars.onCompleteParams);
            }
            return;
        }

        public static function delayedCall(arg1:Number, arg2:Function, arg3:Array=null, arg4:Boolean=false):com.greensock.TweenNano
        {
            return new TweenNano(arg2, 0, {"delay":arg1, "onComplete":arg2, "onCompleteParams":arg3, "useFrames":arg4, "overwrite":0});
        }

        public static function updateAll(arg1:flash.events.Event=null):void
        {
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=0;
            var loc5:*=NaN;
            var loc6:*=null;
            var loc7:*;
            _frame++;
            _time = flash.utils.getTimer() * 0.001;
            var loc1:*=_masterList;
            loc7 = 0;
            loc8 = loc1;
            for (loc3 in loc8) 
            {
                loc2 = loc1[loc3];
                loc4 = loc2.length;
                while (--loc4 > -1) 
                {
                    loc5 = (loc6 = loc2[loc4]).useFrames ? _frame : _time;
                    if (loc6.active || !loc6.gc && loc5 >= loc6.startTime) 
                    {
                        loc6.renderTime(loc5 - loc6.startTime);
                        continue;
                    }
                    if (!loc6.gc) 
                    {
                        continue;
                    }
                    loc2.splice(loc4, 1);
                }
                if (loc2.length != 0) 
                {
                    continue;
                }
                delete loc1[loc3];
            }
            return;
        }

        internal static function easeOut(arg1:Number, arg2:Number, arg3:Number, arg4:Number):Number
        {
            var loc1:*;
            arg1 = loc1 = arg1 / arg4;
            return -1 * loc1 * (arg1 - 2);
        }

        public static function from(arg1:Object, arg2:Number, arg3:Object):com.greensock.TweenNano
        {
            arg3.runBackwards = true;
            if (!("immediateRender" in arg3)) 
            {
                arg3.immediateRender = true;
            }
            return new TweenNano(arg1, arg2, arg3);
        }

        public static function to(arg1:Object, arg2:Number, arg3:Object):com.greensock.TweenNano
        {
            return new TweenNano(arg1, arg2, arg3);
        }

        public static function killTweensOf(arg1:Object, arg2:Boolean=false):void
        {
            var loc1:*=null;
            var loc2:*=0;
            if (arg1 in _masterList) 
            {
                if (arg2) 
                {
                    loc1 = _masterList[arg1];
                    loc2 = loc1.length;
                    while (--loc2 > -1) 
                    {
                        if (TweenNano(loc1[loc2]).gc) 
                        {
                            continue;
                        }
                        TweenNano(loc1[loc2]).complete(false);
                    }
                }
                delete _masterList[arg1];
            }
            return;
        }

        
        {
            _masterList = new flash.utils.Dictionary(false);
            _shape = new flash.display.Shape();
            _reservedProps = {"ease":1, "delay":1, "useFrames":1, "overwrite":1, "onComplete":1, "onCompleteParams":1, "runBackwards":1, "immediateRender":1, "onUpdate":1, "onUpdateParams":1};
        }

        protected var _initted:Boolean;

        public var active:Boolean;

        protected var _propTweens:Array;

        public var ratio:Number=0;

        protected var _ease:Function;

        public var startTime:Number;

        public var target:Object;

        public var useFrames:Boolean;

        public var duration:Number;

        public var gc:Boolean;

        public var vars:Object;

        protected static var _reservedProps:Object;

        protected static var _tnInitted:Boolean;

        protected static var _time:Number;

        protected static var _frame:uint;

        protected static var _shape:flash.display.Shape;

        protected static var _masterList:flash.utils.Dictionary;
    }
}
