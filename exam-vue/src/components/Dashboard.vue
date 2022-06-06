<template>
  <el-scrollbar :native="false" style="height: 100%">
    <div>
      <h1 class="title">
        <a href="#" target="_blank">课堂教学助手</a>
      </h1>

      <el-row>
        <el-col :span="15" :offset="5">
          <!-- 
          <h3>1、推荐项目:</h3>
          <ul>
            <li><a href="https://gitee.com/wzhouzhou/vue_wzz_cloudMusic" target="_blank">高仿网易云音乐</a></li>
            <li><a href="https://gitee.com/wzhouzhou/privateBlog" target="_blank">博客系统</a></li>
          </ul> 
          -->
          <h3>系统描述:</h3>
          <p>课堂教学助手是一个多角色在线培训练习系统，系统集成了用户管理、角色管理、题库管理、试
            题管理、练习管理、在线练习等功能，方便用户在此系统中进行练习并不断提升自己，在练习中不断进步。</p>
          <h3>主要功能</h3>
          <div style="margin-left: 2em">
            <h4>1.权限控制</h4>
            <p>本系统存在三个不同的角色，教师，管理员，学生三种用户，此系统是基于vue+springboot实现的前后端分离，用户权限校验通过JWT生成token令牌发放到用户，并根据令牌对用户的身份合法性进行校验。</p>

            <h4>2.在线练习</h4>
            <p>学生用户在注册登录之后，可以在本系统进行在线的练习，练习可由教师和管理员进行布置并设置练习权限（公开，密码），练习题型分为
              单选、多选、判断、简答题，并支持题目附带配图。练习过程中需开启摄像头进行练习，系统会自动抓拍考生实时练习状态。</p>

            <h4>3.成绩模块</h4>
            <p>
              参加练习后的学生用户，在提交试卷后进入练习结果页面，页面会自动核对学生用户的逻辑题的对错，对于简答题需要老师或者超级管理员进行批阅。对于学生用户参与的练习，学生用户可以查看到练习的详情并可以查看到自己所错的逻辑题。</p>

            <h4>4.题库模块</h4>
            <p>学生用户在题库模块中可以进行题目的功能训练，训练模式分为，顺序练习，随机练习，也可以根据题型练习（单选，多选，判断）。用户答题时会实时判断正确与否，并有错题解析功能。</p>

            <h4>5.题库管理</h4>
            <p>超级管理员和教师可以对本练习系统已有的题库进行管理，实现对题库信息的CRUD操作</p>

            <h4>6.试题管理</h4>
            <p>教师和系统管理员用户有权限对本系统的所有试题进行操作，本系统试题支持复杂类型的题目，练习题目支持多插图，选项答案支持单插图功能。</p>

            <h4>7.练习管理</h4>
            <p>
              教师和系统管理员用户有权限对系统存在的练习进行操作，本系统练习支持公开练习和密码口令练习，并可以对练习进行禁用也可以在设置练习时间段，对于练习可以进行很便利的进行组卷，系统内置两种组卷模式，题库组卷和自由选题组卷。</p>

            <h4>8.考卷批阅</h4>
            <p>对于本系统中存在的复杂练习的题目，可以又对应的老师进行批阅，此系统的逻辑题无需老师用户进行批阅，老师的工作仅仅是批阅简答题这种无准确答案类型的题目，极大地减轻了老师用户的工作量</p>

            <h4>9.练习统计</h4>
            <p>本系统针对每一次练习进行数据统计和报表，让使用本系统的老师用户能够直观的了解到每一次练习人员的进步。</p>

            <h4>10. 用户管理</h4>
            <p>超级管理员可以对注册本系统用户的进行授权，并拥有操作一切用户的权限。</p>
          </div>
        </el-col>
      </el-row>

    </div>

  </el-scrollbar>
</template>

<script>
  export default {
    name: 'Dashboard',
    created () {
      // 调用父组件Main的展示系统公告方法
      this.$emit('showSystemNotice')
    },
  }
</script>

<style scoped lang="scss">
  div {
    animation: leftMoveIn .7s ease-in;
  }

  @keyframes leftMoveIn {
    0% {
      transform: translateX(-100%);
      opacity: 0;
    }
    100% {
      transform: translateX(0%);
      opacity: 1;
    }
  }

  .title {
    text-align: center;
    font-size: 25px;
  }


  p {
    text-indent: 2em;
  }

  a {
    text-decoration: none
  }
</style>
