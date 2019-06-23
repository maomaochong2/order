package com.example.demo.mapper;

import com.example.demo.entity.FoodTypeInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface FoodInfoMapper {
    List<FoodTypeInfo> findlist();
    int add(FoodTypeInfo foodTypeInfo);
    List<FoodTypeInfo> findByfoodname(@Param("foodname") String foodname);
}
