package com.mvc.comparator;

import com.mvc.bean.TimetableBean;

import java.util.Comparator;

public class TimetableComparator implements Comparator<TimetableBean> {
    @Override
    public int compare(TimetableBean o1, TimetableBean o2) {
        return o1.getTimeBeggin().compareTo(o2.getTimeBeggin());
    }
}
