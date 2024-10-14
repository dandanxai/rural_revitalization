package com.example.rural_revitalization_system.service;

/**
 * @program: rural_revitalization_system
 * @description:
 * @author: 黄胜
 * @create: 2024-09-22 18:34
 **/

import com.example.rural_revitalization_system.mapper.PolicyMapper;
import com.example.rural_revitalization_system.pojo.Policy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PolicyService {

    @Autowired
    private PolicyMapper policyMapper;

    public List<Policy> getAllPolicies() {
        return policyMapper.getAllPolicies();
    }

    // 获取所有在走马灯中展示的精选政策
    public List<Policy> getFeaturedPolicies() {
        return policyMapper.getFeaturedPolicies();
    }

    public List<Policy> gotoDetail(int id) {
        return policyMapper.gotoDetail(id);
    }
}
