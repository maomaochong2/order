package com.example.demo.service;

import com.example.demo.entity.FoodTypeInfo;
import com.example.demo.mapper.FoodInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FoodInfoService {
    @Autowired
    private FoodInfoMapper foodInfoMapper;
    public List<FoodTypeInfo> findlist(){
        return foodInfoMapper.findlist();
    }
    public int add(FoodTypeInfo foodTypeInfo){
        return foodInfoMapper.add(foodTypeInfo);
    }
    public List<FoodTypeInfo> findByfoodname(String foodname){
        return foodInfoMapper.findByfoodname(foodname);
    }
}
