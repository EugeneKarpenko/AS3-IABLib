package com.hinish.videe.iab.vast.vos
{
    import com.hinish.videe.xs.Time;

    public class Linear 
    {
        public var skipoffset:Time;
        public var duration:Time;
        public var trackingEvents:Vector.<TrackingEvent> = new <TrackingEvent>[];
        public var adParameters:String;
        public var videoClicks:VideoClicks = new VideoClicks();
        public var mediaFiles:Vector.<MediaFile> = new <MediaFile>[];
    }
}