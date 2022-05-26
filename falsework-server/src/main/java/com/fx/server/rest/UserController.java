package com.fx.server.rest;


import com.fx.server.entity.User;
import com.fx.server.entity.UserInfo;
import com.fx.server.entity.log.SysLoginInfor;
import com.fx.server.msg.ObjectRestResponse;
import com.fx.server.msg.TableResultResponse;
import com.fx.server.service.PermissionService;
import com.fx.server.service.UserService;
import com.fx.server.vo.FrontUser;
import com.fx.server.vo.MenuVO;
import com.fx.server.vo.PermissionInfo;
import com.fx.server.websocket.WebSocketMessageHandler;
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
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private PermissionService permissionService;
    @Autowired
    private WebSocketMessageHandler webSocketMessageHandler;

    @GetMapping(value = "/page")
    @ResponseBody
    public TableResultResponse<User> getPageList(@RequestParam Map<String, Object> params) {

        return userService.getPageList(params);
    }

    @GetMapping(value = "/online/list")
    @ResponseBody
    public List<SysLoginInfor> getOnlineUsers() {

        return webSocketMessageHandler.getOnlineUsers();
    }

    @PutMapping("/{id}")
    @ResponseBody
    public ObjectRestResponse<Integer> update(@PathVariable int id, @RequestBody User entity) {

        return userService.update(entity);
    }

    @PutMapping("/password/{id}")
    @ResponseBody
    public ObjectRestResponse<Integer> restPasswrod(@PathVariable Integer id) {

        return userService.restPassword(id);
    }

    @PostMapping("")
    @ResponseBody
    public ObjectRestResponse<Integer> add(@RequestBody User entity) {


        return userService.add(entity);
    }

    @PostMapping("/retreat/{userId}")
    @ResponseBody
    public ObjectRestResponse<Boolean> retreat(@PathVariable("userId") String userId) {


        return new ObjectRestResponse<Boolean>().rel(webSocketMessageHandler.retreat(userId));
    }


    @DeleteMapping("/{id}")
    @ResponseBody
    public ObjectRestResponse<Integer> add(@PathVariable Integer id) {

        return userService.remove(id);
    }


    @RequestMapping(value = "/permissions", method = RequestMethod.GET)
    @ResponseBody
    public List<PermissionInfo> getAllPermission() {
        return permissionService.getAllPermission();
    }

    @RequestMapping(value = "/user/un/{username}/permissions", method = RequestMethod.GET)
    @ResponseBody
    public List<PermissionInfo> getPermissionByUsername(@PathVariable("username") String username) {
        return permissionService.getPermissionByUsername(username);
    }

    @RequestMapping(value = "/user/validate", method = RequestMethod.POST)
    @ResponseBody
    public UserInfo validate(@RequestBody Map<String, String> body) {
        return permissionService.validate(body.get("username"), body.get("password"));
    }


    @GetMapping(value = "/front/info/{token}")
    @ResponseBody
    public ObjectRestResponse<FrontUser> getUserInfo(@PathVariable String token) throws Exception {
        FrontUser userInfo = permissionService.getUserInfo(token);

        return new ObjectRestResponse<FrontUser>().data(userInfo).rel(true);
    }

    @RequestMapping(value = "/front/menus/{token}", method = RequestMethod.GET)
    public @ResponseBody
    List<MenuVO> getMenusByUsername(@PathVariable String token) throws Exception {
        return permissionService.getMenusByUsername(token);
    }


}
