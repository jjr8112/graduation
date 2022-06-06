package com.jjr8112.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jjr8112.entity.ExamRecord;
import com.jjr8112.mapper.ExamRecordMapper;
import com.jjr8112.service.ExamRecordService;
import org.springframework.stereotype.Service;


@Service
public class ExamRecordServiceImpl extends ServiceImpl<ExamRecordMapper, ExamRecord> implements ExamRecordService {
}
