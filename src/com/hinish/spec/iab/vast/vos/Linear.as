package com.hinish.spec.iab.vast.vos
{
    import com.hinish.spec.xs.Time;

    public class Linear 
    {
        public var duration:Time;
        public var trackingEvents:Vector.<TrackingEvent> = new <TrackingEvent>[];
        public var adParameters:String;
        public var videoClicks:VideoClicks = new VideoClicks();
        public var mediaFiles:Vector.<MediaFile> = new <MediaFile>[];
    }
}