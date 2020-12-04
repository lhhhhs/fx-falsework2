package com.epri.fx.client.request.feign.admin;

import com.epri.fx.client.request.feign.FeignAPI;
import com.epri.fx.server.entity.User;
import com.epri.fx.server.entity.log.GateLog;
import com.epri.fx.server.entity.log.LogInfo;
import com.epri.fx.server.msg.ObjectRestResponse;
import com.epri.fx.server.msg.TableResultResponse;
import feign.Param;
import feign.QueryMap;
import feign.RequestLine;

import java.util.Map;

/**
 * @description:
 * @className: TestFeign
 * @author: liwen
 * @date: 2020/4/1 17:31
 */
public interface LogFeign extends FeignAPI {
    @RequestLine("GET /log/page")
    TableResultResponse<GateLog> getPageList(@QueryMap Map<String, Object> map);

    @RequestLine("DELETE /log/{id}")
    ObjectRestResponse<Integer> delete(@Param("id") Integer id);


}
