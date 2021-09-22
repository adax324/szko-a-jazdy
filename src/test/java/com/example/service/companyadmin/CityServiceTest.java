package com.example.service.companyadmin;

import com.example.model.companyadmin.City;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class CityServiceTest {

    private CityService cityService;
    @Autowired
    public CityServiceTest(CityService cityService) {
        this.cityService = cityService;
    }

    @Test
    void isCityAddedProperly() {
        //given
        City city=new City();
        city.setCityName("Bydgoszcz");
        //when
        Long newCityId= cityService.addCity(city).getCityId();
        City createdCity=cityService.getCityById(newCityId);
        //then
        assertEquals(city.getCityName(),createdCity.getCityName());

    }

}