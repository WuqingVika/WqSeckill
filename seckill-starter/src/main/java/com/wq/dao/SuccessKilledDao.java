package com.wq.dao;

import com.wq.entity.SuccessKilled;

/**
 * Created by qwu on 2018/4/23.
 */
public interface SuccessKilledDao {
    /**
     * 插入购买明细，可过滤重复
     * @param seckillId
     * @param userPhone
     * @return 插入的行数 返回0代表插入失败
     */
  int insertSuccessKilled(Long seckillId,Long userPhone);

    /**
     * 根据秒杀Id查询秒杀成功记录，并携带秒秒杀产品对象实体
     * @param seckillId
     * @return
     */
  SuccessKilled queryByIdWithSeckill(Long seckillId);


}

