package com.example.rural_revitalization_system.mapper;

/**
 * @program: rural_revitalization_system
 * @description:
 * @author: 黄胜
 * @create: 2024-09-22 18:33
 **/

import com.example.rural_revitalization_system.pojo.Policy;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.junit.jupiter.api.Test;

import java.util.List;

@Mapper
public interface PolicyMapper {

    // 使用注解查询所有政策数据
//    @Select("SELECT * FROM Policy")


    @Select("SELECT policy_id, title, image_url FROM Policy;")
    List<Policy> getAllPolicies();


    // 查询所有精选政策，用于走马灯展示
    @Select("SELECT * FROM Policy WHERE is_featured = TRUE AND status = 'active'")
    List<Policy> getFeaturedPolicies();


    @Select("SELECT * FROM Policy WHERE policy_id = #{id}")
    List<Policy> gotoDetail(@Param("id") int id);
}
