package com.example.myapplication;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.os.Environment;
import android.util.Base64;
import android.util.Log;
import android.view.View;

import android.view.Menu;
import android.view.MenuItem;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.nio.channels.FileChannel;

import javax.crypto.SecretKey;

public class MainActivity extends AppCompatActivity {

    public static String byteArrayToHex(byte[] a) {
        StringBuilder sb = new StringBuilder(a.length * 2);
        for (byte b : a)
            sb.append(String.format("%02x", b));
        return sb.toString();
    }

    public static void decode(String paramString, int paramInt, String decodeParam) {
        Log.i("decode", "paramString = " + paramString + " ; paramInt = " + paramInt + " ; decodeParam = " + decodeParam);
    }

    public static byte[] decodeBytes(SecretKey key, byte[] input, byte[] out) {
        Log.i("decodeBytes", " input= " + byteArrayToHex(input) + " output " + byteArrayToHex(out));
        return out;
    }

    public static byte[] encodeBytes(SecretKey key, byte[] input, byte[] out) {
        Log.i("encodeBytes", " input= " + byteArrayToHex(input) + " output " + byteArrayToHex(out));
        return out;
    }

    public static String getMacAddress() {
       return readFromFile("mac.txt", "6C:C7:EC:2B:00:00");
    }

    public static String getIp() {
        return readFromFile("ip.txt", "192.168.8.46");
    }

    public static int getPort() {
        return Integer.parseInt(readFromFile("port.txt", "8080"));
    }

    public static String readFromFile(String fileName, String defaultValue) {
        String storageDir = getStorageDir(fileName);
        File file = new File(storageDir);
        if (!file.exists()){
            try {
                file.createNewFile();
                try (FileOutputStream bw = new FileOutputStream(file)) {
                    bw.write(defaultValue.getBytes());
                }
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
        try {
            try (BufferedReader br = new BufferedReader(new FileReader(file))) {
                return br.readLine();
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String getStorageDir(String fileName) {
        //   Log2.i("Hack", "input File " + fileName);
        if (
                !fileName.startsWith(Environment.getExternalStorageDirectory().getAbsolutePath())) {
            if (fileName.contains("/data/data/com.inventec.iMobile2.gsm/")) {
                fileName = fileName.replace("/data/data/com.inventec.iMobile2.gsm/", "");
            }
            if (fileName.contains("/data/data/com.inventec.iMobile2/")) {
                fileName = fileName.replace("/data/data/com.inventec.iMobile2/", "");
            }
            //create folder
            File file = new File(Environment.getExternalStorageDirectory() + "/phev");
            if (!file.mkdirs()) {
                file.mkdirs();
            }
            String filePath = file.getAbsolutePath() + File.separator + fileName;
            //  Log2.i("Hack", "create FilePath for " + filePath);
            return filePath;
        } else {
            if (!fileName.startsWith(Environment.getExternalStorageDirectory().getAbsolutePath() + "/phev")) {
                //  Log2.i("Hack22222222", "input File " + fileName);
                fileName = fileName.replace(Environment.getExternalStorageDirectory().getAbsolutePath(),
                        Environment.getExternalStorageDirectory().getAbsolutePath() + "/phev");
                //   Log2.i("Hack333333333", "input File " + fileName);
            }
            if (fileName.contains("/data/data/com.inventec.iMobile2.gsm/")) {
                fileName = fileName.replace("/data/data/com.inventec.iMobile2.gsm/", "/phev");
            }
            if (fileName.contains("/data/data/com.inventec.iMobile2/")) {
                fileName = fileName.replace("/data/data/com.inventec.iMobile2/", "/phev");
            }
            //  Log2.i("Hack", "create FilePath2 for " + fileName);
            return fileName;
        }
    }

    public static FileOutputStream getOutputStream(String fileName, int mode) throws FileNotFoundException {
        return new FileOutputStream(
                new File(getStorageDir(fileName)),
                mode == 32768);
    }

    public static FileInputStream getInputStream(String fileName) throws FileNotFoundException {
        return new FileInputStream(new File(getStorageDir(fileName)));
    }

    public static File getFilePath(String fileName) {
        return new File(getStorageDir(fileName));
    }

    public static void copyFileOrDirectory(String srcDir, String dstDir) {

        try {
            File src = new File(srcDir);
            File dst = new File(dstDir, src.getName());

            if (src.isDirectory()) {

                String files[] = src.list();
                int filesLength = files.length;
                for (int i = 0; i < filesLength; i++) {
                    String src1 = (new File(src, files[i]).getPath());
                    String dst1 = dst.getPath();
                    copyFileOrDirectory(src1, dst1);

                }
            } else {
                copyFile(src, dst);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void copyFile(File sourceFile, File destFile) throws IOException {
        if (!destFile.getParentFile().exists())
            destFile.getParentFile().mkdirs();

        if (!destFile.exists()) {
            destFile.createNewFile();
        }

        FileChannel source = null;
        FileChannel destination = null;

        try {
            source = new FileInputStream(sourceFile).getChannel();
            destination = new FileOutputStream(destFile).getChannel();
            destination.transferFrom(source, 0, source.size());
        } finally {
            if (source != null) {
                source.close();
            }
            if (destination != null) {
                destination.close();
            }
        }
    }

    public static void saveFile2(byte[] data) {
        try {
            FileOutputStream f = new FileOutputStream(Environment.getExternalStorageDirectory() + "/test.txt");
            f.write(data);
            f.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static byte[] getPrivateKey() {
        return Base64.decode("BqeVGXJf+df/FhoWfFVDBw==", Base64.DEFAULT);
    }


    public void exportFiles() {
        File file = new File(Environment.getExternalStorageDirectory() + "/phev/export");
        if (!file.mkdirs()) {
            file.mkdirs();
        }
        String[] list = this.fileList();
        for (String f : list) {
            copyFileOrDirectory(this.getFileStreamPath(f).getAbsolutePath(), file.getAbsolutePath());
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        exportFiles();
        setContentView(R.layout.activity_main);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        FloatingActionButton fab = findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show();
            }
        });
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}