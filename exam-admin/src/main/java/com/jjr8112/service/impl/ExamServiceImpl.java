package com.jjr8112.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jjr8112.entity.Exam;
import com.jjr8112.mapper.ExamMapper;
import com.jjr8112.service.ExamService;
import org.springframework.stereotype.Service;


@Service
public class ExamServiceImpl extends ServiceImpl<ExamMapper, Exam> implements ExamService {
}
