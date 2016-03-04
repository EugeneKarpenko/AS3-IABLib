package com.hinish.videe.iab.vast.vos
{
    /**
    * The price of the ad.
    */
    public class Pricing
    {
        public var value:Number;
        
        /**
         * The pricing model used.
         * <p>see com.hinish.videe.iab.vast.vos.PricingModels</p>
         */
        public var model:String;
        
        /**
         * the 3-letter ISO-4217 currency symbol that identifies the currency of the value
         * provided (i.e. USD, GBP, etc.…)
         */
        public var currency:String;
    }
}