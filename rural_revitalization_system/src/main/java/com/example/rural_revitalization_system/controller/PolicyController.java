package com.example.rural_revitalization_system.controller;

/**
 * @program: rural_revitalization_system
 * @description:
 * @author: 黄胜
 * @create: 2024-09-22 18:34
 **/

import com.example.rural_revitalization_system.pojo.Policy;
import com.example.rural_revitalization_system.service.PolicyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/policies")
public class PolicyController {

    @Autowired
    private PolicyService policyService;

    // 获取所有政策信息
    @GetMapping("/getPolicies")
    public List<Policy> getAllPolicies() {
        return policyService.getAllPolicies();
    }

    // 获取所有精选政策，用于走马灯展示
    @GetMapping("/getMarqueePolicies")
    public List<Policy> getFeaturedPolicies() {
        return policyService.getFeaturedPolicies();
    }

    @GetMapping("/gotoDetail/{id}")
    public List<Policy> gotoDetail(@PathVariable int id) {
        return policyService.gotoDetail(id);
    }
}
