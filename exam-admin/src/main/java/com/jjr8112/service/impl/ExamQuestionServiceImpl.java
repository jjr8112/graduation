package com.jjr8112.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jjr8112.entity.ExamQuestion;
import com.jjr8112.mapper.ExamQuestionMapper;
import com.jjr8112.service.ExamQuestionService;
import org.springframework.stereotype.Service;


@Service
public class ExamQuestionServiceImpl extends ServiceImpl<ExamQuestionMapper, ExamQuestion> implements ExamQuestionService {
}
