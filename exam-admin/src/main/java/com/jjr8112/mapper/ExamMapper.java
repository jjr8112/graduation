package com.jjr8112.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jjr8112.entity.Exam;
import org.springframework.stereotype.Repository;


//在对应的mapper上面实现基本的接口
@Repository//代表持久层
public interface ExamMapper extends BaseMapper<Exam> {
}
