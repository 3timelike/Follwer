package org.example.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import org.example.pojo.Message;
import org.example.pojo.vo.MessageVo;
import org.example.pojo.vo.PortalVo;
import org.example.utils.Result;

import java.util.List;

/**
 * ClassName: LeaveMessageService
 * Package: org.example.service
 * Description:
 *
 * @Author
 * @Create 2024/6/29 9:51
 * @Version 1.0
 */
public interface  LeaveMessageService {
    public IPage<MessageVo> getPage(int currentPage, int pageSize);

    Result getAll(PortalVo portalVo);

    int insertMessage(Message message);

    int deleteMessage(Integer id);
}
