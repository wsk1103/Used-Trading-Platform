package com.wsk.tool;

import java.util.ArrayList;

/**
 * Created by alone on 2017/1/2.
 */

public class RecognitionResultBean {
    private long log_id;
    private int result_num;
    private ArrayList<ResultArrayClass> result;
    public ArrayList<ResultArrayClass> getResult() {
        return result;
    }

    public void setResult(ArrayList<ResultArrayClass> result) {
        this.result = result;
    }

    public int getResult_num() {
        return result_num;
    }

    public void setResult_num(int result_num) {
        this.result_num = result_num;
    }

    public long getLog_id() {
        return log_id;
    }

    public void setLog_id(long log_id) {
        this.log_id = log_id;
    }
    static class ResultArrayClass {
        private String class_name;
        private double probability;
        public String getClass_name() {
            return class_name;
        }

        public void setClass_name(String class_name) {
            this.class_name = class_name;
        }

        public double getProbability() {
            return probability;
        }

        public void setProbability(double probability) {
            this.probability = probability;
        }
    }
}
