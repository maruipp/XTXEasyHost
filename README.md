# XTXEasyHost
便捷的host修改工具，用来应付测试们打不同环境下包的需求。

# 核心协议
```
@protocol AppHostProtocal <NSObject>
///主机地址
@property (nonatomic,copy,readonly) NSString *host;
///api服务器地址
@property (nonatomic,copy,readonly) NSString *apiHost;

///调用host编辑文本框
- (void)hostShouldBeginToEdit;

///清除host
- (void)clearEditHost;

@end
```

# 使用步骤
* 首先需要自定义类，并实现上面提及的AppHostProtocal协议（参见Demo）

* demo中实现AppHostProtocal协议的自定义类名为：AppHostImp，那么创建其实例后，就可以通过下面方式进行调用。

> 弹出host编辑框:
>
```
[self.hostImp hostShouldBeginToEdit];
```

> 清除编辑过的host:
>
```
[self.hostImp clearEditHost];
```

# 特性

* host一但被修改，重启启动后，将以修改的host为准。直接改变代码中的host也是如此，不会生效。
* 如想让代码中指定的host生效，需要调用上面提供的清除host的方法，或者删除应用。

