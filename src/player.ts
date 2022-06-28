import { NativeModules } from 'react-native';
import { SourceConfig, Source } from './source';

const PlayerModule = NativeModules.PlayerModule;

export interface PlayerConfig {
  id: string;
  licenseKey: string;
}

export class Player {
  id: string;
  config: PlayerConfig;

  constructor(config: PlayerConfig) {
    this.id = config.id;
    this.config = config;
  }

  init = () => {
    PlayerModule.initWithConfig(this.config);
  };

  load = (source: SourceConfig) => {
    PlayerModule.load(this.id, source);
  };

  unload = () => {
    PlayerModule.unload(this.id);
  };

  play = () => {
    PlayerModule.play(this.id);
  };

  pause = () => {
    PlayerModule.pause(this.id);
  };

  seek = (time: number) => {
    PlayerModule.seek(this.id, time);
  };

  mute = () => {
    PlayerModule.mute(this.id);
  };

  unmute = () => {
    PlayerModule.unmute(this.id);
  };

  destroy = () => {
    PlayerModule.destroy(this.id);
  };

  setVolume = (volume: number) => {
    PlayerModule.setVolume(this.id, volume);
  };

  getSource = async (): Promise<Source> => {
    return PlayerModule.getSource(this.id);
  };

  getVolume = async (): Promise<number> => {
    return PlayerModule.getVolume(this.id);
  };

  getCurrentTime = async (mode?: 'relative' | 'absolute'): Promise<number> => {
    return PlayerModule.currentTime(this.id, mode);
  };

  getDuration = async (): Promise<number> => {
    return PlayerModule.duration(this.id);
  };

  isMuted = async (): Promise<boolean> => {
    return PlayerModule.isMuted(this.id);
  };

  isPlaying = async (): Promise<boolean> => {
    return PlayerModule.isPlaying(this.id);
  };

  isPaused = async (): Promise<boolean> => {
    return PlayerModule.isPaused(this.id);
  };

  isLive = async (): Promise<boolean> => {
    return PlayerModule.isLive(this.id);
  };

  isAirPlayActive = async (): Promise<boolean> => {
    return PlayerModule.isAirPlayActive(this.id);
  };

  isAirPlayAvailable = async (): Promise<boolean> => {
    return PlayerModule.isAirPlayAvailable(this.id);
  };
}