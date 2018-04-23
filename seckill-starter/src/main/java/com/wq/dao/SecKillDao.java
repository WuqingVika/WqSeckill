package com.wq.dao;

import com.wq.entity.SecKill;

import java.util.Date;
import java.util.List;

/**
 * Created by qwu on 2018/4/23.
 */
public interface SecKillDao {
    /**
     * 减库存，
     * @param seckillId
     * @param killTime
     * @return 如果影响行数>=1，表示更新的记录行数
     */
    int reduceNumber(Long seckillId,Date killTime);

    /**
     * 根据id查询秒杀库存对象
     * @param seckillId
     * @return
     */
    SecKill queryById(Long seckillId);

    /**
     * 根据偏移量查询秒杀商品列表
     * @param offset
     * @param limit
     * @return
     */
    List<SecKill> queryAll(int offset,int limit);
}
