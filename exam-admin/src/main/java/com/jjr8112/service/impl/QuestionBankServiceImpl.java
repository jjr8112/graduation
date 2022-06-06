package com.jjr8112.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jjr8112.entity.QuestionBank;
import com.jjr8112.mapper.QuestionBankMapper;
import com.jjr8112.service.QuestionBankService;
import org.springframework.stereotype.Service;


@Service
public class QuestionBankServiceImpl extends ServiceImpl<QuestionBankMapper, QuestionBank> implements QuestionBankService {
}
