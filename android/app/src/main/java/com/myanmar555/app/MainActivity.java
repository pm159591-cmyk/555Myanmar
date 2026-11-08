package com.myanmar555.app;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        TextView text = new TextView(this);
        text.setText("555Myanmar");
        text.setTextSize(32);
        text.setGravity(17);

        setContentView(text);
    }
}
