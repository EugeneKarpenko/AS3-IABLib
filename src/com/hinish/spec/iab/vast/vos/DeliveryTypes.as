package com.hinish.spec.iab.vast.vos
{

    public class DeliveryTypes
    {
        public static const PROGRESSIVE:String = "progressive";
        public static const STREAMING:String = "streaming";
        public static const VPAID:String = "";

        public static function isValidDeliveryType(key:String):Boolean
        {
            switch (key)
            {
                case PROGRESSIVE:
                case STREAMING:
                case VPAID:
                    return true;
                default:
                    return false;
            }
        }
    }
}
