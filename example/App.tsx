import React from 'react';
import {View, Button, StyleSheet} from 'react-native';
import RTNToastMessage from 'rtn-toast-message/js/NativeRTNToastMessage';

const App = () => {
  const showToast = () => {
    RTNToastMessage.showToast('Hello from TurboModule!');
  };

  return (
      <View style={styles.container}>
        <Button title="Show Toast Message" onPress={showToast} />
      </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    paddingHorizontal: 16,
    backgroundColor: '#FFFFFF',
  },
});

export default App;
