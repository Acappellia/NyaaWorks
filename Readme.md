![1711550963228.png](https://global.cdn.mikupics.cn/2024/03/27/660431f51e9ab.png)

# NyaaWorks 家具系统

当前版本 r2.1 - Minecraft 1.21-1.21.4

## 功能简介

- 为原版游戏提供了带有丰富功能和简单互动的自定义家具
- 配合资源包可以实现家具的不同材质
- 丰富的游戏内自定义功能，可在游戏内方便的创建和调试新的家具

## 家具制作

- 部分家具使用工作台制作
    - 打开工作台配方书可以查看配方
- 部分家具使用切石机制作
    - 木制家具使用不同种类的原木、去皮原木、去皮六面木制作
    - 石制家具使用不同种类的石墙制作
    - 主题家具使用特殊的方块制作，目前已经添加的家具主题包括
        - 照相馆——紫水晶块
        - 厨房——蓝色带釉陶瓦
        - 街景——金块
        - 花园——白色带釉陶瓦
        - 娱乐包——磁石
        - 机厅——品红色带釉陶瓦
        - 小家电——灰色带釉陶瓦
        - 国际象棋——淡灰色带釉陶瓦
        - 灯牌——粉色带釉陶瓦
        - 桌游——黄绿色带釉陶瓦

## 摆放、使用和移除

- 右键摆放家具
    - 家具朝向与玩家朝向相同
    - 在水上和水下均可放置
    - 家具类似于方块，可以和普通的方块混合摆放
- 右键点击摆出的家具可以与家具互动
    - 自定义的互动效果详见下方介绍
- 左键点击家具可以将其拆下收回
    - 非创造模式下需要手持任意锄头
    - 非创造模式玩家无法破坏不是自己放置的家具，除非已经添加了好友
- 手持颜料刷右键家具可以将单个家具染色
- 使用染色台/洗色桶可以批量染色/去除染色
- 部分家具可以手持木锄头右键改装

## 自定义家具创建

- 取一个潜影盒，在盒内按照特定的规则摆放不同物品。规则详见下方介绍
- 将摆好物品的盒子拿在手中，输入指令`/function nw:add_fur`，即可得到一个灵魂篝火作为新的家具。
- 家具创建后，再次放下盒子，修改其中的内容并再次输入`/function nw:add_fur`可以更新家具。所有的已创建的家具将同步更新（已摆出的家具可能需要重新摆放）

## 创建规则

每个家具拥有两个不同的状态——状态A、状态B。在每个状态下，家具有着独立的属性和效果，包括：

- 模型外观
- 玩家交互的效果
- 自动播放的效果

在家具被摆放时，默认处于状态A。

使用潜影盒定义时，每个潜影盒按下图分为七个区域：

![1711550839303.png](https://global.cdn.mikupics.cn/2024/03/27/66043179b89a7.png)

- 红色（a1-a3）：基本属性
- 深绿色（b1-b3）：状态A属性
- 浅绿色（c1-c6）：状态A的玩家交互效果
- 黄色（d1-d3）：状态A的自动播放效果
- 深蓝色（e1-e3）：状态B属性
- 蓝色（f1-f6）：状态B的玩家交互效果
- 天蓝色（g1-g3）：状态B的自动播放效果

对于红色（a1-a3）、深绿色（b1-b3）和深蓝色（e1-e3）的部分，每一格具有明确的作用：

- a1：这格物品的如下组件（component）会被物品形式的家具所继承：
    - "minecraft:custom_name" 物品的自定义名称
    - "minecraft:item_name" 物品的名称
    - "minecraft:custom_model_data" 物品的自定义模型编号
    - "minecraft:lore" 物品的铭文
    - "minecraft:unbreakable" 物品是否不可破坏（未来应用于家具）
- a2：在此格放置任意物品时，家具摆放时能具有更为精细的朝向
- a3：此格物品决定家具的改装效果
    - 使用铁砧重命名一个非粘土球的任意物品为目标家具编号，可以在家具改装时，将家具转换为目标编号的家具
    - 如果使用粘土球，则会转换为目标编号的预设家具
    - 预设家具和自定义家具的编号互相独立
- b1：这格物品决定状态A下，家具摆出后展示出的外观，包括物品的id与自定义模型编号（custom_model_data）
    - 如果这格为空，则沿用a1格的物品的id与自定义模型编号
- b2：这格物品决定状态A下，家具摆出后，内部填充的原版方块
    - 可以使用屏障（barrier）来为家具提供碰撞模型
    - 可以使用光（light）来制作照明类家具
    - 不建议使用任何在生存下可以被破坏或推动的方块作为内部填充，以避免方块复制的问题
- b3：决定状态A自动播放效果的间隔。在这格摆放时钟（clock）时，堆叠的数量为间隔秒数；在这格摆放钟（bell）时，堆叠的数量*10为间隔秒数
    - 如果未放置物品，默认的自动播放间隔为1秒
- e1：决定状态B的外观，规则同b1
    - 特别的，如果这格为空，会优先沿用b1格物品的id与自定义模型编号。如果b1格也为空，再沿用a1格
- e2：决定状态B的内部填充方块，规则同b2
- e3：决定状态B自动播放效果的间隔，规则同b3

在浅绿色（c1-c6）放置物品，能够使玩家在状态A交互时产生一系列的交互效果。其中，每一格都能够定义一个独立的效果，所有定义的效果按顺序执行。放置的物品与所定义的效果对应关系如下：

- **荧光墨囊（glow_ink_sac）- 在家具处播放一群粒子**
    - 使用铁砧为荧光墨囊重命名，可以定义粒子种类
    - 例如重命名为`firework`的荧光墨囊，将定义烟花粒子效果
    - 部分复杂的粒子效果（如dust）无法通过此种方式定义
- **墨囊（ink_sac）- 在家具处播放单个粒子**
    - 与荧光墨囊相同，但只会播放一个粒子
- **音符盒(note_block) - 在家具处播放声音**
    - 使用铁砧为音符盒重命名，可以定义声音种类
    - 例如重命名为`entity.player.levelup`的音符盒，将定义玩家升级的声音
- **橡木木牌(oak_sign) - 向交互的玩家显示聊天框文字**
    - 木牌的名字将定义聊天框文字内容
- **药水（potion）- 赋予交互的玩家药水效果**
    - 需要使用自定义药水效果，而非原版自带的药水效果
    - 例如使用指令`/give @s potion[minecraft:potion_contents={custom_effects:[{id:"minecraft:slowness",amplifier:1b,duration:200}]}]`获得的药水，将定义持续10秒的缓慢II效果
- **箭（arrow）- 对交互的玩家造成伤害**
    - 堆叠的数量定义造成的伤害值
- **收纳袋（bundle）- 在家具处生成物品**
    - 收纳袋中的物品定义生成的内容，包括堆叠数
    - 如果一个收纳袋放入了多种物品，则在所有的种类中随机
- **仙人掌（cactus）- 删除交互的玩家手中物品**
- **指南针（compass）- 传送交互的玩家**
    - 需要事先使用指南针点击磁石，记录传送的目的地坐标。
    - 需要在完成家具创建后再拆除磁石
    - 需要使用时，建议将该效果放置在列表的最后，以防后续效果因距离家具过远而无法触发
- **命令方块（command_block）- 执行其中的指令**
    - 在命令方块中输入指令后，使用ctrl+中键复制，将指令存储在其中
    - 命令的执行者为交互的玩家，执行位置为家具位置
- **橡木台阶（oak_slab）- 坐在家具的半高位置**
- **橡木木板（oak_plank）- 坐在家具的全高位置**
- **时钟（clock）- 添加交互冷却时间**
    - 堆叠的数量为添加的冷却秒数
    - 冷却时间将在本次交互完成后添加到下次交互前
- **钟（bell）- 添加交互冷却时间**
    - 与时钟相同，但每个钟将会添加 10 秒时间
- **橡木按钮（oak_button）- 切换家具状态**
    - 在交互后，切换家具为另一个状态
- **物品展示框（item_frame）-  顺时针旋转家具**
- **荧光物品展示框（glow_item_frame）- 逆时针旋转家具**
- **盔甲架（armor_stand）- 晃动家具**
- **漏斗（hopper）- 消费指定物品**
    - 在漏斗放入指定物品后，使用ctrl+中键复制，将物品存储在其中
    - 交互时会检查手中的物品是否为保存的指定物品，如果相同，则会扣除手中一个指定物品
    - 如果手中物品不同，将会取消后续的顺序执行效果
- **箱子（chest）- 扩展格子**
    - 将上述指示物放入箱子，使用ctrl+中键复制
    - 箱子里的每个格子都是这六个栏位的扩展，用于定义更多的自定义效果
    - 箱内的执行顺序为按横排顺序执行（与盒内的按纵列顺序不同）
    - 箱子内也可以嵌套箱子


同理，在蓝色（f1-f6）放置上述物品，能够使玩家在状态B交互时产生一系列的交互效果。而在黄色（d1-d3）与天蓝色（g1-g3）放置上述物品时，能够分别定义家具在状态A和状态B下自动播放的效果。需要注意，部分效果对于自动播放无效，且部分效果的生效对象有别。有效的效果列表为：

- 荧光墨囊（glow_ink_sac）- 在家具处播放一群粒子
- 墨囊（ink_sac）- 在家具处播放单个粒子
- 音符盒(note_block) - 在家具处播放声音
- 橡木木牌(oak_sign) - 向**附近的随机一位玩家**显示聊天框文字
- 药水（potion）- 赋予**附近的随机一位玩家**药水效果
- 箭（arrow）- 对**附近的随机一位玩家**造成伤害
- 收纳袋（bundle）- 在家具处生成物品
- 命令方块（command_block）- 执行其中的指令
    - 命令的执行者为家具的交互实体，执行位置为家具位置
- 橡木按钮（oak_button）- 切换家具状态
- 物品展示框（item_frame）-  顺时针旋转家具
- 荧光物品展示框（glow_item_frame）- 逆时针旋转家具
- 箱子（chest）- 扩展格子

## 多人游戏权限管理

- 制作放置一个特殊的家具“好朋友纪念碑”可以添加好友
- 第一个与其交互的玩家将与家具主人互相添加好友，并将本家具作为双方“友谊的象征”注册
    - 如果是家具主人交互，不会注册家具
    - 如果双方已经是好友，家具仍然会注册为“友谊的象征”
- 双方任何一人破坏任何“友谊的象征”家具，将会使注册时的双方移除好友关系
- 成为好友后，即可拥有好友家具的破坏、染色、异构权限
- 创造模式或者第三人破坏家具不会删除双方的好友关系
    - 如果希望删除关系，但是找不到“友谊的象征”家具位置，可以重新注册一个新的并破坏


## 管理员配置菜单

- 使用 `/function nw:settings` 打开一些配置菜单选项