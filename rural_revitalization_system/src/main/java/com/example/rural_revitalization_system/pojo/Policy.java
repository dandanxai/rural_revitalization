package com.example.rural_revitalization_system.pojo;

/**
 * @program: rural_revitalization_system
 * @description:
 * @author: 黄胜
 * @create: 2024-09-22 18:34
 **/

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Policy {
    private int policy_id;
    private String title;
    private String content;
    private int issued_by;
    private Timestamp issued_at;
    private Timestamp updated_at;
    private String status;
    private String image_url;
}