package com.hinish.videe.xs
{

    /**
     * Represents an XML Schema time object. 
     *
     * @langversion 3.0
     * @playerversion Flash 10
     */
    public class Time extends Object
    {
        private var _hours:uint;
        private var _minutes:uint;
        private var _seconds:uint;
        private var _milliseconds:uint;
        private var _percentage:uint;
        private var _inPercentage:Boolean;

        public function Time(value:String)
        {
            if (value.indexOf("%") >= 0) {
                _inPercentage = true;
                _percentage = uint(value.split("%")[0]);
                return;
            }

            var parts:Array = value.split(":");
            if (parts.length < 3)
                return;

            _hours = uint(parts[0]);
            _minutes = uint(parts[1]);

            parts = parts[2].split(".");
            _seconds = uint(parts[0]);

            if (parts[1] != null)
                _milliseconds = uint(parts[1]);
        }

        public function getTime():uint {
            return milliseconds + (seconds + minutes * 60 + hours * 3600) * 1000;
        }

        public function getOffset(duration:Number):uint {
            return Math.round(_inPercentage ? duration * percentage / 100 : getTime() / 1000);
        }

        public function toString():String
        {
            return (hours < 10 ? "0" : "") + hours + ":" + (minutes < 10 ? "0" : "")
                    + minutes + ":" + (seconds < 10 ? "0" : "") + seconds + "."
                    + (milliseconds < 100 ? "0" : "") + (milliseconds < 10 ? "0" : "") + milliseconds;
        }

        public function get hours():uint {
            return _hours;
        }

        public function get minutes():uint {
            return _minutes;
        }

        public function get seconds():uint {
            return _seconds;
        }

        public function get milliseconds():uint {
            return _milliseconds;
        }

        public function get percentage():uint {
            return _percentage;
        }

        public function get inPercentage():Boolean {
            return _inPercentage;
        }
    }
}
