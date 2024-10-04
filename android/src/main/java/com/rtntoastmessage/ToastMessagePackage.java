package com.rtntoastmessage;

import com.facebook.react.TurboReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.module.model.ReactModuleInfo;
import com.facebook.react.module.model.ReactModuleInfoProvider;

import java.util.HashMap;
import java.util.Map;

public class ToastMessagePackage extends TurboReactPackage {
  @Override
  public NativeModule getModule(String name, ReactApplicationContext reactContext) {
    if (name.equals(ToastMessageModule.NAME)) {
      return new ToastMessageModule(reactContext);
    }
    return null;
  }

  @Override
  public ReactModuleInfoProvider getReactModuleInfoProvider() {
    return () -> {
       Map<String, ReactModuleInfo> moduleInfos = new HashMap<>();
      moduleInfos.put(
        ToastMessageModule.NAME,
        new ReactModuleInfo(
        ToastMessageModule.NAME,
        ToastMessageModule.NAME,
        false, // canOverrideExistingModule
        false, // needsEagerInit
        false, // hasConstants
        false, // isCxxModule
        true   // isTurboModule
        )
      );
      return moduleInfos;
    };
  }
}
