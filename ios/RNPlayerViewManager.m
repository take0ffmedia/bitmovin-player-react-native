#import <React/RCTViewManager.h>

@interface RCT_EXTERN_REMAP_MODULE(NativePlayerView, RNPlayerViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(onEvent, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPlayerActive, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPlayerError, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPlayerWarning, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onDestroy, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onMuted, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onUnmuted, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onReady, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPaused, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPlay, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPlaying, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPlaybackFinished, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onSeek, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onSeeked, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onStallStarted, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onStallEnded, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onTimeChanged, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onSourceLoad, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onSourceLoaded, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onSourceUnloaded, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onSourceError, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onSourceWarning, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onSubtitleAdded, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onSubtitleRemoved, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onSubtitleChanged, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPictureInPictureEnter, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPictureInPictureEntered, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPictureInPictureExit, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPictureInPictureExited, RCTBubblingEventBlock)

RCT_EXTERN_METHOD(attachPlayer:(nonnull NSNumber *)viewId playerId:(NSString *)playerId playerConfig:(nullable NSDictionary *)playerConfig)

@end
