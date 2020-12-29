package com.epri.fx.server.rest;


import com.epri.fx.server.entity.User;
import com.epri.fx.server.entity.UserInfo;
import com.epri.fx.server.entity.log.GateLog;
import com.epri.fx.server.entity.log.LogInfo;
import com.epri.fx.server.msg.ObjectRestResponse;
import com.epri.fx.server.msg.TableResultResponse;
import com.epri.fx.server.service.PermissionService;
import com.epri.fx.server.service.UserService;
import com.epri.fx.server.service.log.GateLogService;
import com.epri.fx.server.vo.FrontUser;
import com.epri.fx.server.vo.MenuVO;
import com.epri.fx.server.vo.PermissionInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;


/**
 * @Description:
 * @param:
 * @return:
 * @auther: liwen
 * @date: 2020/9/11 9:28 上午
 */
@RestController
@RequestMapping("log")
public class LogController {
    @Autowired
    private GateLogService gateLogService;


    @GetMapping(value = "/page")
    @ResponseBody
    public TableResultResponse<GateLog> getPageList(@RequestParam Map<String, Object> params) {

        return gateLogService.getPageList(params);
    }


    @DeleteMapping("/{id}")
    @ResponseBody
    public ObjectRestResponse<Integer> add(@PathVariable Integer id) {

        return gateLogService.remove(id);
    }


}
