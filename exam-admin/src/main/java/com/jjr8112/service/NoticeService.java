package com.jjr8112.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.jjr8112.entity.Notice;


public interface NoticeService extends IService<Notice> {
    // 将所有公告设置为历史公告
    boolean setAllNoticeIsHistoryNotice();
}
