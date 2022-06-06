package com.jjr8112.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jjr8112.entity.Answer;
import com.jjr8112.mapper.AnswerMapper;
import com.jjr8112.service.AnswerService;
import org.springframework.stereotype.Service;


@Service
public class AnswerServiceImpl extends ServiceImpl<AnswerMapper, Answer> implements AnswerService {
}
