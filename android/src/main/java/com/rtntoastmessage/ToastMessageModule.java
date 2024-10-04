package com.rtntoastmessage;

import android.widget.Toast;
import com.facebook.react.bridge.ReactApplicationContext;

public class ToastMessageModule extends NativeRTNToastMessageSpec {

  public static final String NAME = "RTNToastMessage";

  ToastMessageModule(ReactApplicationContext context) {
    super(context);
  }

  @Override
  public String getName() {
    return NAME;
  }

  @Override
   public void showToast(String message) {
      Toast.makeText(getReactApplicationContext(), message, Toast.LENGTH_SHORT).show();
    }
}
