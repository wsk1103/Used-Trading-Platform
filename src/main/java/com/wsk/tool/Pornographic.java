/*
package com.wsk.tool;

import com.alibaba.fastjson.JSON;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Pornographic {
	private final static String url="https://openapi.baidu.com/rest/2.0/vis-antiporn/v1/antiporn";
	private final static String access_token="23.56408ed1f7566a241a5639875f615a2c.2592000.1486968450.1094025852-9152927";

	public static String CheckPornograp(String image){
		String result="正常图片";
		try {
			String base64 = Post.GetImageStr(image);
			Map<String, String> params = new HashMap<String, String>();
			params.put("access_token", access_token);
			params.put("image", base64);
			String sr = HttpUtils.submitPostData(url, params, "utf-8");
			RecognitionResultBean recognitionResultBean = JSON.parseObject(sr, RecognitionResultBean.class);
			ArrayList<RecognitionResultBean.ResultArrayClass> list = recognitionResultBean.getResult();
			double a = 0, b = 0, c;
			for (RecognitionResultBean.ResultArrayClass rr : list) {
				if (rr.getClass_name().equals("一般色情"))
					a = rr.getProbability();
				else if (rr.getClass_name().equals("卡通色情"))
					b = rr.getProbability();
				c = Math.max(a, b);
				if (c > 0.25) {
					result = "色情图片";
					break;
				}
			}
			System.out.println(result);
		}catch (NullPointerException e){
			e.printStackTrace();
			return result;
		}
		return result;
	}
}
*/
