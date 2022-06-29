import omit from 'lodash.omit';
import { useCallback, useRef, RefObject } from 'react';
import { NativeSyntheticEvent, findNodeHandle } from 'react-native';
import { Event } from '../events';

function unwrapNativeEvent<E extends Event>(event: NativeSyntheticEvent<E>): E {
  return omit(event.nativeEvent, ['target']) as E;
}

export function useProxy<E extends Event>(
  viewRef: RefObject<any>,
  proxy?: (event: E) => void
): (nativeEvent: NativeSyntheticEvent<E>) => void {
  const proxyRef = useRef(proxy);
  return useCallback(
    (event) => {
      const node: number = (event.target as any)._nativeTag;
      if (node === findNodeHandle(viewRef.current)) {
        proxyRef.current?.(unwrapNativeEvent(event));
      }
    },
    [viewRef]
  );
}
