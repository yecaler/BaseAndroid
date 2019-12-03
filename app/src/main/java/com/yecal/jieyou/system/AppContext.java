package com.yecal.jieyou.system;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.multidex.MultiDex;
import android.util.DisplayMetrics;
import android.view.Gravity;

import com.baidu.mapapi.SDKInitializer;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ToastUtils;
import com.blankj.utilcode.util.Utils;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.uuch.adlibrary.utils.DisplayUtil;
import com.yecal.jieyou.utils.DataCleanManager;
import com.yecal.jieyou.utils.MethodsCompat;
import com.yecal.jieyou.utils.ThreadUtils;

public class AppContext extends CrashReportingApplication {

    private static final String TAG = AppContext.class.getSimpleName();
    private static AppContext mContext;

    @Override
    public void onCreate() {
        super.onCreate();
        mContext = this;
        // 工具类初始化
        Utils.init(this);
        initAd();
        SDKInitializer.initialize(this);
        ToastUtils.setBgColor(Color.parseColor("#EEEEEE"));
        ToastUtils.setGravity(Gravity.TOP, 0, 0);
    }

    private void initAd() {
        //初始化广告弹框
        Fresco.initialize(this);
        DisplayMetrics dm = getResources().getDisplayMetrics();
        DisplayUtil.density = dm.density;
        DisplayUtil.densityDPI = dm.densityDpi;
        DisplayUtil.screenWidthPx = dm.widthPixels;
        DisplayUtil.screenhightPx = dm.heightPixels;
        DisplayUtil.screenWidthDip = DisplayUtil.px2dip(getApplicationContext(), dm.widthPixels);
        DisplayUtil.screenHightDip = DisplayUtil.px2dip(getApplicationContext(), dm.heightPixels);
    }

    @Override
    public String getReportUrl() {
        return null;
    }

    @Override
    public Bundle getCrashResources() {
        return null;
    }

    //dex65k限制
    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        MultiDex.install(this);
    }

    public static AppContext getInstance() {
        return mContext;
    }

    /**
     * 清除app缓存
     */
    public void clearAppCache(boolean showToast) {
        final Handler handler = showToast ? new Handler() {
            @Override
            public void handleMessage(Message msg) {
                if (msg.what == 1) {
                    ToastUtils.showShort("缓存清除成功");
                } else {
                    ToastUtils.showShort("缓存清除失败");
                }
            }
        } : null;
        ThreadUtils.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                Message msg = new Message();
                try {
                    clearAppCache();
                    msg.what = 1;
                } catch (Exception e) {
                    e.printStackTrace();
                    msg.what = -1;
                }
                if (handler != null)
                    handler.sendMessage(msg);
            }
        });
    }

    /**
     * 清除app缓存
     */
    public void clearAppCache() {
        DataCleanManager.cleanDatabases(this);
        // 清除数据缓存
        DataCleanManager.cleanInternalCache(this);
        // 2.2版本才有将应用缓存转移到sd卡的功能
        if (isMethodsCompat(android.os.Build.VERSION_CODES.FROYO)) {
            DataCleanManager.cleanCustomCache(MethodsCompat
                    .getExternalCacheDir(this));
        }

    }

    /**
     * 判断当前版本是否兼容目标版本的方法
     *
     * @param VersionCode
     * @return
     */
    public static boolean isMethodsCompat(int VersionCode) {
        int currentVersion = android.os.Build.VERSION.SDK_INT;
        return currentVersion >= VersionCode;
    }
}
