package com.hinish.videe.iab.vast.parsers
{
    import com.hinish.videe.iab.vast.vos.IExtension;
    
    /**
     * The interface for a VAST response extension parser.
     * Register this with your VASTParser object to parse
     * extension to the VAST specification.
     *
     * @langversion 3.0
     * @playerversion Flash 10
     */
    public interface IExtensionParser
    {
        function isNodeEligible(node:XML):Boolean;
        function parse(raw:XML):IExtension;
    }
}