-- ----------------------------
-- 1、部门表
-- ----------------------------
drop table if exists sys_dept;
create table sys_dept (
  dept_id           bigint(20)      not null auto_increment    comment '部门id',
  parent_id         bigint(20)      default 0                  comment '父部门id',
  ancestors         varchar(50)     default ''                 comment '祖级列表',
  dept_name         varchar(30)     default ''                 comment '部门名称',
  order_num         int(4)          default 0                  comment '显示顺序',
  leader            varchar(20)     default null               comment '负责人',
  phone             varchar(11)     default null               comment '联系电话',
  email             varchar(50)     default null               comment '邮箱',
  status            char(1)         default '0'                comment '部门状态(0正常 1停用)',
  del_flag          char(1)         default '0'                comment '删除标志(0代表存在 2代表删除)',
  sf_flag           char(1)         default '0'				   comment '车间部门标志(0代表非车间部门1代表车间部门)',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time 	    datetime                                   comment '创建时间',
  update_by         varchar(64)     default ''                 comment '更新者',
  update_time       datetime                                   comment '更新时间',
  primary key (dept_id)
) engine=innodb auto_increment=200 comment = '部门表';

-- ----------------------------
-- 初始化-部门表数据
-- ----------------------------
-- insert into sys_dept values(100,  0,   '0',          'SWL',   0, '若依', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(101,  100, '0,100',      '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(102,  100, '0,100',      '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(103,  101, '0,100,101',  '研发部门',   1, '若依', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(104,  101, '0,100,101',  '市场部门',   2, '若依', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(105,  101, '0,100,101',  '测试部门',   3, '若依', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(106,  101, '0,100,101',  '财务部门',   4, '若依', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(107,  101, '0,100,101',  '运维部门',   5, '若依', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(108,  102, '0,100,102',  '市场部门',   1, '若依', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(109,  102, '0,100,102',  '财务部门',   2, '若依', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(110,  100, '0,100',      '高压车间',   1, '若依', '15888888888', 'ry@qq.com', '0', '0', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(111,  100, '0,100',      '低压车间',   2, '若依', '15888888888', 'ry@qq.com', '0', '0', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
-- insert into sys_dept values(112,  100, '0,100',      '五金车间',   3, '若依', '15888888888', 'ry@qq.com', '0', '0', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(100,  0,   '0',          'SWL',   0, 'admin', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(101,  100, '0,100',      '高压车间', 1, 'admin', '15888888888', 'ry@qq.com', '0', '0', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(102,  100, '0,100',      '低压车间', 2, 'admin', '15888888888', 'ry@qq.com', '0', '0', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(103,  100, '0,100',      '五金车间', 3, 'admin', '15888888888', 'ry@qq.com', '0', '0', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(104,  100, '0,100',      '技术部', 4, 'admin', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(105,  100, '0,100',      '销售部', 5, 'admin', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(106,  100, '0,100',      '采购部', 6, 'admin', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(107,  100, '0,100',      '物流部', 7, 'admin', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(108,  100, '0,100',      '财务部', 8, 'admin', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');
insert into sys_dept values(109,  100, '0,100',      '人事部', 9, 'admin', '15888888888', 'ry@qq.com', '0', '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00');

-- ----------------------------
-- 2、用户信息表
-- ----------------------------
drop table if exists sys_user;
create table sys_user (
  user_id           bigint(20)      not null auto_increment    comment '用户ID',
  dept_id           bigint(20)      default null               comment '部门ID',
  user_name         varchar(30)     not null                   comment '用户账号',
  nick_name         varchar(30)     not null                   comment '用户昵称',
  user_type         varchar(2)      default '00'               comment '用户类型（00系统用户）',
  email             varchar(50)     default ''                 comment '用户邮箱',
  phone_number      varchar(11)     default ''                 comment '手机号码',
  gender            char(1)         default '0'                comment '用户性别（0男 1女 2未知）',
  avatar            varchar(100)    default ''                 comment '头像地址',
  password          varchar(100)    default ''                 comment '密码',
  status            char(1)         default '0'                comment '帐号状态（0正常 1停用）',
  del_flag          char(1)         default '0'                comment '删除标志（0代表存在 2代表删除）',
  login_ip          varchar(50)     default ''                 comment '最后登陆IP',
  login_date        datetime                                   comment '最后登陆时间',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time       datetime                                   comment '创建时间',
  update_by         varchar(64)     default ''                 comment '更新者',
  update_time       datetime                                   comment '更新时间',
  remark            varchar(500)    default null               comment '备注',
  primary key (user_id)
) engine=innodb auto_increment=100 comment = '用户信息表';

-- ----------------------------
-- 初始化-用户信息表数据
-- ----------------------------
insert into sys_user values(1,  103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '管理员');
insert into sys_user values(2,  105, 'ry',    '若依', '00', 'ry@qq.com',  '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '测试员');


-- ----------------------------
-- 3、岗位信息表
-- ----------------------------
drop table if exists sys_position;
create table sys_position
(
  position_id       bigint(20)      not null auto_increment    comment '岗位ID',
  position_code     varchar(64)     not null                   comment '岗位编码',
  position_name     varchar(50)     not null                   comment '岗位名称',
  position_sort     int(4)          not null                   comment '显示顺序',
  status        char(1)         not null                   comment '状态（0正常 1停用）',
  create_by     varchar(64)     default ''                 comment '创建者',
  create_time   datetime                                   comment '创建时间',
  update_by     varchar(64)     default ''			       comment '更新者',
  update_time   datetime                                   comment '更新时间',
  remark        varchar(500)    default null               comment '备注',
  primary key (position_id)
) engine=innodb comment = '岗位信息表';

-- ----------------------------
-- 初始化-岗位信息表数据
-- ----------------------------
insert into sys_position values(1, 'ceo',  '董事长',    1, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_position values(2, 'se',   '项目经理',  2, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_position values(3, 'hr',   '人力资源',  3, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_position values(4, 'user', '普通员工',  4, '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');


-- ----------------------------
-- 4、角色信息表
-- ----------------------------
drop table if exists sys_role;
create table sys_role (
  role_id           bigint(20)      not null auto_increment    comment '角色ID',
  role_name         varchar(30)     not null                   comment '角色名称',
  role_key          varchar(100)    not null                   comment '角色权限字符串',
  role_sort         int(4)          not null                   comment '显示顺序',
  data_scope        char(1)         default '1'                comment '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  status            char(1)         not null                   comment '角色状态（0正常 1停用）',
  del_flag          char(1)         default '0'                comment '删除标志（0代表存在 2代表删除）',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time       datetime                                   comment '创建时间',
  update_by         varchar(64)     default ''                 comment '更新者',
  update_time       datetime                                   comment '更新时间',
  remark            varchar(500)    default null               comment '备注',
  primary key (role_id)
) engine=innodb auto_increment=100 comment = '角色信息表';

-- ----------------------------
-- 初始化-角色信息表数据
-- ----------------------------
insert into sys_role values('1', '管理员',   'admin',  1, 1, '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '管理员');
insert into sys_role values('2', '普通角色', 'common', 2, 2, '0', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '普通角色');


-- ----------------------------
-- 5、菜单权限表
-- ----------------------------
drop table if exists sys_menu;
create table sys_menu (
  menu_id           bigint(20)      not null auto_increment    comment '菜单ID',
  menu_name         varchar(50)     not null                   comment '菜单名称',
  parent_id         bigint(20)      default 0                  comment '父菜单ID',
  order_num         int(4)          default 0                  comment '显示顺序',
  path              varchar(200)    default ''                 comment '路由地址',
  component         varchar(255)    default null               comment '组件路径',
  is_frame          int(1)          default 1                  comment '是否为外链（0是 1否）',
  menu_type         char(1)         default ''                 comment '菜单类型（M目录 C菜单 F按钮）',
  visible           char(1)         default 0                  comment '菜单状态（0显示 1隐藏）',
  perms             varchar(100)    default null               comment '权限标识',
  icon              varchar(100)    default '#'                comment '菜单图标',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time       datetime                                   comment '创建时间',
  update_by         varchar(64)     default ''                 comment '更新者',
  update_time       datetime                                   comment '更新时间',
  remark            varchar(500)    default ''                 comment '备注',
  primary key (menu_id)
) engine=innodb auto_increment=2000 comment = '菜单权限表';

-- ----------------------------
-- 初始化-菜单信息表数据
-- ----------------------------
-- 一级菜单
insert into sys_menu values('1', '系统管理', '0', '1', 'system',           null,   1, 'M', '0', '', 'system',   'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统管理目录');
insert into sys_menu values('2', '系统监控', '0', '2', 'monitor',          null,   1, 'M', '1', '', 'monitor',  'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统监控目录');
insert into sys_menu values('3', '系统工具', '0', '3', 'tool',             null,   1, 'M', '1', '', 'tool',     'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统工具目录');
-- insert into sys_menu values('4', '若依官网', '0', '4', 'http://ruoyi.vip', null ,  0, 'M', '0', '', 'guide',    'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '若依官网地址');
insert into sys_menu values('4', '基础资料', '0', '4', 'masterdata',         null,   1, 'M', '0', '', 'tool',     'admin', '2020-03-10 11-33-00', 'admin', '2018-03-16 11-33-00', '基础资料目录');
insert into sys_menu values('5', '库存管理', '0', '5', 'inventory',        null,   1, 'M', '0', '', 'tool',     'admin', '2020-03-10 11-33-00', 'admin', '2018-03-16 11-33-00', '库存管理目录');
insert into sys_menu values('6', '采购管理', '0', '6', 'purchase',         null,   1, 'M', '0', '', 'tool',     'admin', '2020-03-10 11-33-00', 'admin', '2018-03-16 11-33-00', '采购管理目录');
insert into sys_menu values('7', '销售管理', '0', '7', 'sales',            null,   1, 'M', '0', '', 'tool',     'admin', '2020-03-10 11-33-00', 'admin', '2018-03-16 11-33-00', '销售管理目录');
insert into sys_menu values('8', '生产管理', '0', '8', 'production',       null,   1, 'M', '0', '', 'tool',     'admin', '2020-03-10 11-33-00', 'admin', '2018-03-16 11-33-00', '生产管理目录');
insert into sys_menu values('9', '财务管理', '0', '9', 'finance',          null,   1, 'M', '0', '', 'tool',     'admin', '2020-03-10 11-33-00', 'admin', '2018-03-16 11-33-00', '财务管理目录');
-- 二级菜单
insert into sys_menu values('100',  '用户管理', '1',   '1', 'user',       'system/user/index',        1, 'C', '0', 'system:user:list',        'user',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '用户管理菜单');
insert into sys_menu values('101',  '角色管理', '1',   '2', 'role',       'system/role/index',        1, 'C', '0', 'system:role:list',        'peoples',       'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '角色管理菜单');
insert into sys_menu values('102',  '菜单管理', '1',   '3', 'menu',       'system/menu/index',        1, 'C', '1', 'system:menu:list',        'tree-table',    'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '菜单管理菜单');
insert into sys_menu values('103',  '部门管理', '1',   '4', 'dept',       'system/dept/index',        1, 'C', '1', 'system:dept:list',        'tree',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '部门管理菜单');
insert into sys_menu values('104',  '岗位管理', '1',   '5', 'post',       'system/post/index',        1, 'C', '1', 'system:post:list',        'post',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '岗位管理菜单');
insert into sys_menu values('105',  '字典管理', '1',   '6', 'dict',       'system/dict/index',        1, 'C', '0', 'system:dict:list',        'dict',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '字典管理菜单');
insert into sys_menu values('106',  '参数设置', '1',   '7', 'config',     'system/config/index',      1, 'C', '1', 'system:config:list',      'edit',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '参数设置菜单');
insert into sys_menu values('107',  '通知公告', '1',   '8', 'notice',     'system/notice/index',      1, 'C', '1', 'system:notice:list',      'message',       'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '通知公告菜单');
insert into sys_menu values('108',  '日志管理', '1',   '9', 'log',        'system/log/index',         1, 'M', '1', '',                        'log',           'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '日志管理菜单');
insert into sys_menu values('109',  '在线用户', '2',   '1', 'online',     'monitor/online/index',     1, 'C', '0', 'monitor:online:list',     'online',        'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '在线用户菜单');
insert into sys_menu values('110',  '定时任务', '2',   '2', 'job',        'monitor/job/index',        1, 'C', '0', 'monitor:job:list',        'job',           'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '定时任务菜单');
insert into sys_menu values('111',  '数据监控', '2',   '3', 'druid',      'monitor/druid/index',      1, 'C', '0', 'monitor:druid:list',      'druid',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '数据监控菜单');
insert into sys_menu values('112',  '服务监控', '2',   '4', 'server',     'monitor/server/index',     1, 'C', '0', 'monitor:server:list',     'server',        'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '服务监控菜单');
insert into sys_menu values('113',  '表单构建', '3',   '1', 'build',      'tool/build/index',         1 ,'C', '0', 'tool:build:list',         'build',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '表单构建菜单');
insert into sys_menu values('114',  '代码生成', '3',   '2', 'gen',        'tool/gen/index',           1, 'C', '0', 'tool:gen:list',           'code',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '代码生成菜单');
insert into sys_menu values('115',  '系统接口', '3',   '3', 'swagger',    'tool/swagger/index',       1, 'C', '0', 'tool:swagger:list',       'swagger',       'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统接口菜单');

-- insert into sys_menu values('116',  '生产PPM', '4',   '1', 'prodppm',    'production/prodppm/index',  1, 'C', '0', 'production:prodppm:list','prodppm',        'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '生产PPM菜单');
insert into sys_menu values('117',  '报工', '8',      '2', 'report',      'production/report/index',     1, 'M', '0', '',                       'monitor',        'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '生产报工菜单');
insert into sys_menu values('118',  '车间', '8',      '3', 'shopfloor',   'production/shopfloor/index',  1, 'M', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '生产车间菜单');

-- 基础资料菜单
insert into sys_menu values('119',  '计量单位',   '4', '1', 'uom',         'masterdata/uom/index',          1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '计量单位菜单');
insert into sys_menu values('120',  '物料类别',   '4', '2', 'parttype',    'masterdata/parttype/index',     1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '物料类别菜单');
insert into sys_menu values('121',  '物料管理',   '4', '3', 'part',        'masterdata/part/index',         1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '物料管理菜单');
insert into sys_menu values('122',  '客户资料',   '4', '4', 'customer',    'masterdata/customer/index',     1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '客户资料菜单');
insert into sys_menu values('123',  '供应商资料', '4', '5', 'supplier',     'masterdata/supplier/index',    1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '供应商资料菜单');
insert into sys_menu values('124',  '送货员',    '4', '6', 'deliveryman',  'masterdata/deliveryman/index', 1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '送货员菜单');
-- insert into sys_menu values('505',  '新增供应商', '4', '7', 'supplier',     'masterdata/supplier/addsupplier',    1, 'C', '1', '',                 'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '新增供应商资料');

-- 库存管理菜单
insert into sys_menu values('125',  '仓库管理', '5', '1', 'warehouse',  'inventory/warehouse/index',     1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '仓库管理菜单');
insert into sys_menu values('126',  '库位管理', '5', '2', 'location',   'inventory/location/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '库位管理菜单');
insert into sys_menu values('127',  '库存明细', '5', '3', 'stock',      'inventory/stock/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '库存明细菜单');
insert into sys_menu values('128',  '库存调拨', '5', '4', 'transfer',   'inventory/transfer/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '库存调拨菜单');
insert into sys_menu values('129',  '计划外出库', '5', '5', 'issunp',   'inventory/issunp/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '计划外出库菜单');
insert into sys_menu values('130',  '计划外入库', '5', '6', 'rctunp',   'inventory/rctunp/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '计划外入库菜单');
insert into sys_menu values('131',  '库存事务', '5', '7', 'transaction',   'inventory/transaction/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '库存事务菜单');
insert into sys_menu values('132',  '盘点', '5', '8', 'count',   'inventory/count/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '盘点菜单');

-- 采购管理菜单
insert into sys_menu values('133',  '采购申请单', '6',   '1', 'request',   'purchase/request/index',     1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '采购申请单');
insert into sys_menu values('134',  '采购订单', '6',     '2', 'order',   'purchase/order/index',       1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '采购订单');
insert into sys_menu values('135',  '采购订单入库', '6', '3', 'receipt',   'purchase/receipt/index',     1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '采购订单入库');
insert into sys_menu values('136',  '采购付款单', '6',   '4', 'payment',   'purchase/payment/index',     1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '采购付款单');
insert into sys_menu values('137',  '采购退货', '6',     '5', 'return',   'purchase/return/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '采购退货');
insert into sys_menu values('138',  '采购对账单', '6',   '6', 'statement',   'purchase/statement/index',   1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '采购对账单');

-- 销售管理菜单
insert into sys_menu values('139',  '销售订单', '7', '1', 'order',         'sales/order/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '销售订单');
insert into sys_menu values('140',  '销售订单出库', '7', '2', 'shipment',   'sales/shipment/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '销售订单出库');
insert into sys_menu values('141',  '销售收款单', '7', '3', 'payment',     'sales/payment/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '销售收款单');
insert into sys_menu values('142',  '销售退货', '7', '4', 'return',        'sales/return/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '销售退货');
insert into sys_menu values('143',  '销售对账单', '7', '5', 'statement',   'sales/statement/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '销售对账单');

-- 财务管理菜单
insert into sys_menu values('144',  '货币', '9',        '1', 'currency',   'finance/currency/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '货币');
insert into sys_menu values('145',  '汇率', '9',        '2', 'exrate',     'finance/exrate/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '汇率');
insert into sys_menu values('146',  '客户预收款', '9',   '3', 'deposit',    'finance/deposit/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '客户预收款');
insert into sys_menu values('147',  '供应商预付款', '9', '4', 'prepayment', 'finance/prepayment/index',      1, 'C', '0', '',                       'build',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '供应商预付款');


-- 三级菜单
insert into sys_menu values('500',  '操作日志', '108', '1', 'operlog',    'monitor/operlog/index',                1, 'C', '0', 'monitor:operlog:list',    'form',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '操作日志菜单');
insert into sys_menu values('501',  '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index',             1, 'C', '0', 'monitor:logininfor:list', 'logininfor',    'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '登录日志菜单');
insert into sys_menu values('502',  '车间班组', '118', '1', 'group',      'production/shopfloor/group/index',     1, 'C', '0', '',                        'logininfor',    'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '车间班组菜单');
insert into sys_menu values('503',  '车间工序', '118', '2', 'operation',  'production/shopfloor/operation/index', 1, 'C', '0', '',                        'list',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '车间工序菜单');
insert into sys_menu values('504',  '生产报工', '117', '1', 'prodreport', 'production/report/prodreport/index',   1, 'C', '0', '',                        'list',          'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '生产报工菜单');
-- 用户管理按钮
insert into sys_menu values('1001', '用户查询', '100', '1',  '', '', 1, 'F', '0', 'system:user:query',          '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1002', '用户新增', '100', '2',  '', '', 1, 'F', '0', 'system:user:add',            '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1003', '用户修改', '100', '3',  '', '', 1, 'F', '0', 'system:user:edit',           '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1004', '用户删除', '100', '4',  '', '', 1, 'F', '0', 'system:user:remove',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1005', '用户导出', '100', '5',  '', '', 1, 'F', '0', 'system:user:export',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1006', '用户导入', '100', '6',  '', '', 1, 'F', '0', 'system:user:import',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1007', '重置密码', '100', '7',  '', '', 1, 'F', '0', 'system:user:resetPwd',       '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 角色管理按钮
insert into sys_menu values('1008', '角色查询', '101', '1',  '', '', 1, 'F', '0', 'system:role:query',          '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1009', '角色新增', '101', '2',  '', '', 1, 'F', '0', 'system:role:add',            '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1010', '角色修改', '101', '3',  '', '', 1, 'F', '0', 'system:role:edit',           '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1011', '角色删除', '101', '4',  '', '', 1, 'F', '0', 'system:role:remove',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1012', '角色导出', '101', '5',  '', '', 1, 'F', '0', 'system:role:export',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 菜单管理按钮
insert into sys_menu values('1013', '菜单查询', '102', '1',  '', '', 1, 'F', '0', 'system:menu:query',          '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1014', '菜单新增', '102', '2',  '', '', 1, 'F', '0', 'system:menu:add',            '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1015', '菜单修改', '102', '3',  '', '', 1, 'F', '0', 'system:menu:edit',           '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1016', '菜单删除', '102', '4',  '', '', 1, 'F', '0', 'system:menu:remove',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 部门管理按钮
insert into sys_menu values('1017', '部门查询', '103', '1',  '', '', 1, 'F', '0', 'system:dept:query',          '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1018', '部门新增', '103', '2',  '', '', 1, 'F', '0', 'system:dept:add',            '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1019', '部门修改', '103', '3',  '', '', 1, 'F', '0', 'system:dept:edit',           '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1020', '部门删除', '103', '4',  '', '', 1, 'F', '0', 'system:dept:remove',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 岗位管理按钮
insert into sys_menu values('1021', '岗位查询', '104', '1',  '', '', 1, 'F', '0', 'system:post:query',          '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1022', '岗位新增', '104', '2',  '', '', 1, 'F', '0', 'system:post:add',            '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1023', '岗位修改', '104', '3',  '', '', 1, 'F', '0', 'system:post:edit',           '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1024', '岗位删除', '104', '4',  '', '', 1, 'F', '0', 'system:post:remove',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1025', '岗位导出', '104', '5',  '', '', 1, 'F', '0', 'system:post:export',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 字典管理按钮
insert into sys_menu values('1026', '字典查询', '105', '1', '#', '', 1, 'F', '0', 'system:dict:query',          '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1027', '字典新增', '105', '2', '#', '', 1, 'F', '0', 'system:dict:add',            '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1028', '字典修改', '105', '3', '#', '', 1, 'F', '0', 'system:dict:edit',           '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1029', '字典删除', '105', '4', '#', '', 1, 'F', '0', 'system:dict:remove',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1030', '字典导出', '105', '5', '#', '', 1, 'F', '0', 'system:dict:export',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 参数设置按钮
insert into sys_menu values('1031', '参数查询', '106', '1', '#', '', 1, 'F', '0', 'system:config:query',        '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1032', '参数新增', '106', '2', '#', '', 1, 'F', '0', 'system:config:add',          '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1033', '参数修改', '106', '3', '#', '', 1, 'F', '0', 'system:config:edit',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1034', '参数删除', '106', '4', '#', '', 1, 'F', '0', 'system:config:remove',       '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1035', '参数导出', '106', '5', '#', '', 1, 'F', '0', 'system:config:export',       '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 通知公告按钮
insert into sys_menu values('1036', '公告查询', '107', '1', '#', '', 1, 'F', '0', 'system:notice:query',        '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1037', '公告新增', '107', '2', '#', '', 1, 'F', '0', 'system:notice:add',          '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1038', '公告修改', '107', '3', '#', '', 1, 'F', '0', 'system:notice:edit',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1039', '公告删除', '107', '4', '#', '', 1, 'F', '0', 'system:notice:remove',       '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 操作日志按钮
insert into sys_menu values('1040', '操作查询', '500', '1', '#', '', 1, 'F', '0', 'monitor:operlog:query',      '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1041', '操作删除', '500', '2', '#', '', 1, 'F', '0', 'monitor:operlog:remove',     '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1042', '日志导出', '500', '4', '#', '', 1, 'F', '0', 'monitor:operlog:export',     '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 登录日志按钮
insert into sys_menu values('1043', '登录查询', '501', '1', '#', '', 1, 'F', '0', 'monitor:logininfor:query',   '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1044', '登录删除', '501', '2', '#', '', 1, 'F', '0', 'monitor:logininfor:remove',  '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1045', '日志导出', '501', '3', '#', '', 1, 'F', '0', 'monitor:logininfor:export',  '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 在线用户按钮
insert into sys_menu values('1046', '在线查询', '109', '1', '#', '', 1, 'F', '0', 'monitor:online:query',       '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1047', '批量强退', '109', '2', '#', '', 1, 'F', '0', 'monitor:online:batchLogout', '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1048', '单条强退', '109', '3', '#', '', 1, 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 定时任务按钮
insert into sys_menu values('1049', '任务查询', '110', '1', '#', '', 1, 'F', '0', 'monitor:job:query',          '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1050', '任务新增', '110', '2', '#', '', 1, 'F', '0', 'monitor:job:add',            '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1051', '任务修改', '110', '3', '#', '', 1, 'F', '0', 'monitor:job:edit',           '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1052', '任务删除', '110', '4', '#', '', 1, 'F', '0', 'monitor:job:remove',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1053', '状态修改', '110', '5', '#', '', 1, 'F', '0', 'monitor:job:changeStatus',   '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1054', '任务导出', '110', '7', '#', '', 1, 'F', '0', 'monitor:job:export',         '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
-- 代码生成按钮
insert into sys_menu values('1055', '生成查询', '114', '1', '#', '', 1, 'F', '0', 'tool:gen:query',             '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1056', '生成修改', '114', '2', '#', '', 1, 'F', '0', 'tool:gen:edit',              '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1057', '生成删除', '114', '3', '#', '', 1, 'F', '0', 'tool:gen:remove',            '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1058', '导入代码', '114', '2', '#', '', 1, 'F', '0', 'tool:gen:import',            '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1059', '预览代码', '114', '4', '#', '', 1, 'F', '0', 'tool:gen:preview',           '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_menu values('1060', '生成代码', '114', '5', '#', '', 1, 'F', '0', 'tool:gen:code',              '#', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');


-- ----------------------------
-- 6、用户和角色关联表  用户N-1角色
-- ----------------------------
drop table if exists sys_user_role;
create table sys_user_role (
  user_id   bigint(20) not null comment '用户ID',
  role_id   bigint(20) not null comment '角色ID',
  primary key(user_id, role_id)
) engine=innodb comment = '用户和角色关联表';

-- ----------------------------
-- 初始化-用户和角色关联表数据
-- ----------------------------
insert into sys_user_role values ('1', '1');
insert into sys_user_role values ('2', '2');


-- ----------------------------
-- 7、角色和菜单关联表  角色1-N菜单
-- ----------------------------
drop table if exists sys_role_menu;
create table sys_role_menu (
  role_id   bigint(20) not null comment '角色ID',
  menu_id   bigint(20) not null comment '菜单ID',
  primary key(role_id, menu_id)
) engine=innodb comment = '角色和菜单关联表';

-- ----------------------------
-- 初始化-角色和菜单关联表数据
-- ----------------------------
insert into sys_role_menu values ('2', '1');
insert into sys_role_menu values ('2', '2');
insert into sys_role_menu values ('2', '3');
insert into sys_role_menu values ('2', '4');
insert into sys_role_menu values ('2', '100');
insert into sys_role_menu values ('2', '101');
insert into sys_role_menu values ('2', '102');
insert into sys_role_menu values ('2', '103');
insert into sys_role_menu values ('2', '104');
insert into sys_role_menu values ('2', '105');
insert into sys_role_menu values ('2', '106');
insert into sys_role_menu values ('2', '107');
insert into sys_role_menu values ('2', '108');
insert into sys_role_menu values ('2', '109');
insert into sys_role_menu values ('2', '110');
insert into sys_role_menu values ('2', '111');
insert into sys_role_menu values ('2', '112');
insert into sys_role_menu values ('2', '113');
insert into sys_role_menu values ('2', '114');
insert into sys_role_menu values ('2', '115');
insert into sys_role_menu values ('2', '500');
insert into sys_role_menu values ('2', '501');
insert into sys_role_menu values ('2', '1000');
insert into sys_role_menu values ('2', '1001');
insert into sys_role_menu values ('2', '1002');
insert into sys_role_menu values ('2', '1003');
insert into sys_role_menu values ('2', '1004');
insert into sys_role_menu values ('2', '1005');
insert into sys_role_menu values ('2', '1006');
insert into sys_role_menu values ('2', '1007');
insert into sys_role_menu values ('2', '1008');
insert into sys_role_menu values ('2', '1009');
insert into sys_role_menu values ('2', '1010');
insert into sys_role_menu values ('2', '1011');
insert into sys_role_menu values ('2', '1012');
insert into sys_role_menu values ('2', '1013');
insert into sys_role_menu values ('2', '1014');
insert into sys_role_menu values ('2', '1015');
insert into sys_role_menu values ('2', '1016');
insert into sys_role_menu values ('2', '1017');
insert into sys_role_menu values ('2', '1018');
insert into sys_role_menu values ('2', '1019');
insert into sys_role_menu values ('2', '1020');
insert into sys_role_menu values ('2', '1021');
insert into sys_role_menu values ('2', '1022');
insert into sys_role_menu values ('2', '1023');
insert into sys_role_menu values ('2', '1024');
insert into sys_role_menu values ('2', '1025');
insert into sys_role_menu values ('2', '1026');
insert into sys_role_menu values ('2', '1027');
insert into sys_role_menu values ('2', '1028');
insert into sys_role_menu values ('2', '1029');
insert into sys_role_menu values ('2', '1030');
insert into sys_role_menu values ('2', '1031');
insert into sys_role_menu values ('2', '1032');
insert into sys_role_menu values ('2', '1033');
insert into sys_role_menu values ('2', '1034');
insert into sys_role_menu values ('2', '1035');
insert into sys_role_menu values ('2', '1036');
insert into sys_role_menu values ('2', '1037');
insert into sys_role_menu values ('2', '1038');
insert into sys_role_menu values ('2', '1039');
insert into sys_role_menu values ('2', '1040');
insert into sys_role_menu values ('2', '1041');
insert into sys_role_menu values ('2', '1042');
insert into sys_role_menu values ('2', '1043');
insert into sys_role_menu values ('2', '1044');
insert into sys_role_menu values ('2', '1045');
insert into sys_role_menu values ('2', '1046');
insert into sys_role_menu values ('2', '1047');
insert into sys_role_menu values ('2', '1048');
insert into sys_role_menu values ('2', '1049');
insert into sys_role_menu values ('2', '1050');
insert into sys_role_menu values ('2', '1051');
insert into sys_role_menu values ('2', '1052');
insert into sys_role_menu values ('2', '1053');
insert into sys_role_menu values ('2', '1054');
insert into sys_role_menu values ('2', '1055');
insert into sys_role_menu values ('2', '1056');
insert into sys_role_menu values ('2', '1057');
insert into sys_role_menu values ('2', '1058');
insert into sys_role_menu values ('2', '1059');
insert into sys_role_menu values ('2', '1060');

-- ----------------------------
-- 8、角色和部门关联表  角色1-N部门
-- ----------------------------
drop table if exists sys_role_dept;
create table sys_role_dept (
  role_id   bigint(20) not null comment '角色ID',
  dept_id   bigint(20) not null comment '部门ID',
  primary key(role_id, dept_id)
) engine=innodb comment = '角色和部门关联表';

-- ----------------------------
-- 初始化-角色和部门关联表数据
-- ----------------------------
insert into sys_role_dept values ('2', '100');
insert into sys_role_dept values ('2', '101');
-- insert into sys_role_dept values ('2', '105');
insert into sys_role_dept values ('2', '103');


-- ----------------------------
-- 9、用户与岗位关联表  用户1-N岗位
-- ----------------------------
drop table if exists sys_user_position;
create table sys_user_position
(
  user_id   	bigint(20) not null comment '用户ID',
  position_id   bigint(20) not null comment '岗位ID',
  primary key (user_id, position_id)
) engine=innodb comment = '用户与岗位关联表';

-- ----------------------------
-- 初始化-用户与岗位关联表数据
-- ----------------------------
insert into sys_user_position values ('1', '1');
insert into sys_user_position values ('2', '2');


-- ----------------------------
-- 10、操作日志记录
-- ----------------------------
drop table if exists sys_oper_log;
create table sys_oper_log (
  oper_id           bigint(20)      not null auto_increment    comment '日志主键',
  title             varchar(50)     default ''                 comment '模块标题',
  business_type     int(2)          default 0                  comment '业务类型（0其它 1新增 2修改 3删除）',
  method            varchar(100)    default ''                 comment '方法名称',
  request_method    varchar(10)     default ''                 comment '请求方式',
  operator_type     int(1)          default 0                  comment '操作类别（0其它 1后台用户 2手机端用户）',
  oper_name         varchar(50)     default ''                 comment '操作人员',
  dept_name         varchar(50)     default ''                 comment '部门名称',
  oper_url          varchar(255)    default ''                 comment '请求URL',
  oper_ip           varchar(50)     default ''                 comment '主机地址',
  oper_location     varchar(255)    default ''                 comment '操作地点',
  oper_param        varchar(2000)   default ''                 comment '请求参数',
  json_result       varchar(2000)   default ''                 comment '返回参数',
  status            int(1)          default 0                  comment '操作状态（0正常 1异常）',
  error_msg         varchar(2000)   default ''                 comment '错误消息',
  oper_time         datetime                                   comment '操作时间',
  primary key (oper_id)
) engine=innodb auto_increment=100 comment = '操作日志记录';


-- ----------------------------
-- 11、字典类型表
-- ----------------------------
drop table if exists sys_dict_type;
create table sys_dict_type
(
  dict_id          bigint(20)      not null auto_increment    comment '字典主键',
  dict_name        varchar(100)    default ''                 comment '字典名称',
  dict_type        varchar(100)    default ''                 comment '字典类型',
  status           char(1)         default '0'                comment '状态（0正常 1停用）',
  create_by        varchar(64)     default ''                 comment '创建者',
  create_time      datetime                                   comment '创建时间',
  update_by        varchar(64)     default ''                 comment '更新者',
  update_time      datetime                                   comment '更新时间',
  remark           varchar(500)    default null               comment '备注',
  primary key (dict_id),
  unique (dict_type)
) engine=innodb auto_increment=100 comment = '字典类型表';

insert into sys_dict_type values(1,  '用户性别', 'sys_user_gender',     '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '用户性别列表');
insert into sys_dict_type values(2,  '菜单状态', 'sys_show_hide',       '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '菜单状态列表');
insert into sys_dict_type values(3,  '系统开关', 'sys_normal_disable',  '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统开关列表');
insert into sys_dict_type values(4,  '任务状态', 'sys_job_status',      '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '任务状态列表');
insert into sys_dict_type values(5,  '任务分组', 'sys_job_group',       '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '任务分组列表');
insert into sys_dict_type values(6,  '系统是否', 'sys_yes_no',          '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统是否列表');
insert into sys_dict_type values(7,  '通知类型', 'sys_notice_type',     '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '通知类型列表');
insert into sys_dict_type values(8,  '通知状态', 'sys_notice_status',   '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '通知状态列表');
insert into sys_dict_type values(9,  '操作类型', 'sys_oper_type',       '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '操作类型列表');
insert into sys_dict_type values(10, '系统状态', 'sys_common_status',   '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '登录状态列表');
insert into sys_dict_type values(21, '零件名称', 'prod_component_name', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '零件名称列表');

-- ----------------------------
-- 12、字典数据表
-- ----------------------------
drop table if exists sys_dict_data;
create table sys_dict_data
(
  dict_code        bigint(20)      not null auto_increment    comment '字典编码',
  dict_sort        int(4)          default 0                  comment '字典排序',
  dict_label       varchar(100)    default ''                 comment '字典标签',
  dict_value       varchar(100)    default ''                 comment '字典键值',
  dict_type        varchar(100)    default ''                 comment '字典类型',
  css_class        varchar(100)    default null               comment '样式属性（其他样式扩展）',
  list_class       varchar(100)    default null               comment '表格回显样式',
  is_default       char(1)         default 'N'                comment '是否默认（Y是 N否）',
  status           char(1)         default '0'                comment '状态（0正常 1停用）',
  create_by        varchar(64)     default ''                 comment '创建者',
  create_time      datetime                                   comment '创建时间',
  update_by        varchar(64)     default ''                 comment '更新者',
  update_time      datetime                                   comment '更新时间',
  remark           varchar(500)    default null               comment '备注',
  primary key (dict_code)
) engine=innodb auto_increment=100 comment = '字典数据表';

insert into sys_dict_data values(1,  1,  '男',       '0',       'sys_user_gender',        '',   '',        'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '性别男');
insert into sys_dict_data values(2,  2,  '女',       '1',       'sys_user_gender',        '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '性别女');
insert into sys_dict_data values(3,  3,  '未知',     '2',       'sys_user_gender',        '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '性别未知');
insert into sys_dict_data values(4,  1,  '显示',     '0',       'sys_show_hide',       '',   'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '显示菜单');
insert into sys_dict_data values(5,  2,  '隐藏',     '1',       'sys_show_hide',       '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '隐藏菜单');
insert into sys_dict_data values(6,  1,  '正常',     '0',       'sys_normal_disable',  '',   'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '正常状态');
insert into sys_dict_data values(7,  2,  '停用',     '1',       'sys_normal_disable',  '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '停用状态');
insert into sys_dict_data values(8,  1,  '正常',     '0',       'sys_job_status',      '',   'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '正常状态');
insert into sys_dict_data values(9,  2,  '暂停',     '1',       'sys_job_status',      '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '停用状态');
insert into sys_dict_data values(10, 1,  '默认',     'DEFAULT', 'sys_job_group',       '',   '',        'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '默认分组');
insert into sys_dict_data values(11, 2,  '系统',     'SYSTEM',  'sys_job_group',       '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统分组');
insert into sys_dict_data values(12, 1,  '是',       'Y',       'sys_yes_no',          '',   'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统默认是');
insert into sys_dict_data values(13, 2,  '否',       'N',       'sys_yes_no',          '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统默认否');
insert into sys_dict_data values(14, 1,  '通知',     '1',       'sys_notice_type',     '',   'warning', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '通知');
insert into sys_dict_data values(15, 2,  '公告',     '2',       'sys_notice_type',     '',   'success', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '公告');
insert into sys_dict_data values(16, 1,  '正常',     '0',       'sys_notice_status',   '',   'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '正常状态');
insert into sys_dict_data values(17, 2,  '关闭',     '1',       'sys_notice_status',   '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '关闭状态');
insert into sys_dict_data values(18, 1,  '新增',     '1',       'sys_oper_type',       '',   'info',    'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '新增操作');
insert into sys_dict_data values(19, 2,  '修改',     '2',       'sys_oper_type',       '',   'info',    'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '修改操作');
insert into sys_dict_data values(20, 3,  '删除',     '3',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '删除操作');
insert into sys_dict_data values(21, 4,  '授权',     '4',       'sys_oper_type',       '',   'primary', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '授权操作');
insert into sys_dict_data values(22, 5,  '导出',     '5',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '导出操作');
insert into sys_dict_data values(23, 6,  '导入',     '6',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '导入操作');
insert into sys_dict_data values(24, 7,  '强退',     '7',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '强退操作');
insert into sys_dict_data values(25, 8,  '生成代码', '8',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '生成操作');
insert into sys_dict_data values(26, 9,  '清空数据', '9',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '清空操作');
insert into sys_dict_data values(27, 1,  '成功',     '0',       'sys_common_status',   '',   'primary', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '正常状态');
insert into sys_dict_data values(28, 2,  '失败',     '1',       'sys_common_status',   '',   'danger',  'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '停用状态');

insert into sys_dict_data values(51, 1,  'EV座',     '1',       'prod_component_name', '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_dict_data values(52, 2,  '支架块',    '2',       'prod_component_name', '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_dict_data values(53, 3,  '支架板',    '3',       'prod_component_name', '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_dict_data values(54, 4,  '支架杆',    '4',       'prod_component_name', '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_dict_data values(55, 5,  '管接头',    '5',       'prod_component_name', '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_dict_data values(56, 6,  '传感器',    '6',       'prod_component_name', '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_dict_data values(57, 7,  '套筒',      '7',       'prod_component_name', '',   '',        'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');

-- ----------------------------
-- 13、参数配置表
-- ----------------------------
drop table if exists sys_config;
create table sys_config (
  config_id         int(5)          not null auto_increment    comment '参数主键',
  config_name       varchar(100)    default ''                 comment '参数名称',
  config_key        varchar(100)    default ''                 comment '参数键名',
  config_value      varchar(500)    default ''                 comment '参数键值',
  config_type       char(1)         default 'N'                comment '系统内置（Y是 N否）',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time       datetime                                   comment '创建时间',
  update_by         varchar(64)     default ''                 comment '更新者',
  update_time       datetime                                   comment '更新时间',
  remark            varchar(500)    default null               comment '备注',
  primary key (config_id)
) engine=innodb auto_increment=100 comment = '参数配置表';

insert into sys_config values(1, '主框架页-默认皮肤样式名称', 'sys.index.skinName',     'skin-blue',     'Y', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow' );
insert into sys_config values(2, '用户管理-账号初始密码',     'sys.user.initPassword',  '123456',        'Y', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '初始化密码 123456' );
insert into sys_config values(3, '主框架页-侧边栏主题',       'sys.index.sideTheme',    'theme-dark',    'Y', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '深色主题theme-dark，浅色主题theme-light' );


-- ----------------------------
-- 14、系统访问记录
-- ----------------------------
drop table if exists sys_logininfo;
create table sys_logininfo (
  info_id        bigint(20)     not null auto_increment   comment '访问ID',
  user_name      varchar(50)    default ''                comment '用户账号',
  ipaddr         varchar(50)    default ''                comment '登录IP地址',
  login_location varchar(255)   default ''                comment '登录地点',
  browser        varchar(50)    default ''                comment '浏览器类型',
  os             varchar(50)    default ''                comment '操作系统',
  status         char(1)        default '0'               comment '登录状态（0成功 1失败）',
  msg            varchar(255)   default ''                comment '提示消息',
  login_time     datetime                                 comment '访问时间',
  primary key (info_id)
) engine=innodb auto_increment=100 comment = '系统访问记录';


-- ----------------------------
-- 15、定时任务调度表
-- ----------------------------
drop table if exists sys_job;
create table sys_job (
  job_id              bigint(20)    not null auto_increment    comment '任务ID',
  job_name            varchar(64)   default ''                 comment '任务名称',
  job_group           varchar(64)   default 'DEFAULT'          comment '任务组名',
  invoke_target       varchar(500)  not null                   comment '调用目标字符串',
  cron_expression     varchar(255)  default ''                 comment 'cron执行表达式',
  misfire_policy      varchar(20)   default '3'                comment '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  concurrent          char(1)       default '1'                comment '是否并发执行（0允许 1禁止）',
  status              char(1)       default '0'                comment '状态（0正常 1暂停）',
  create_by           varchar(64)   default ''                 comment '创建者',
  create_time         datetime                                 comment '创建时间',
  update_by           varchar(64)   default ''                 comment '更新者',
  update_time         datetime                                 comment '更新时间',
  remark              varchar(500)  default ''                 comment '备注信息',
  primary key (job_id, job_name, job_group)
) engine=innodb auto_increment=100 comment = '定时任务调度表';

insert into sys_job values(1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams',        '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_job values(2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')',  '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');
insert into sys_job values(3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)',  '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '');


-- ----------------------------
-- 16、定时任务调度日志表
-- ----------------------------
drop table if exists sys_job_log;
create table sys_job_log (
  job_log_id          bigint(20)     not null auto_increment    comment '任务日志ID',
  job_name            varchar(64)    not null                   comment '任务名称',
  job_group           varchar(64)    not null                   comment '任务组名',
  invoke_target       varchar(500)   not null                   comment '调用目标字符串',
  job_message         varchar(500)                              comment '日志信息',
  status              char(1)        default '0'                comment '执行状态（0正常 1失败）',
  exception_info      varchar(2000)  default ''                 comment '异常信息',
  create_time         datetime                                  comment '创建时间',
  primary key (job_log_id)
) engine=innodb comment = '定时任务调度日志表';


-- ----------------------------
-- 17、通知公告表
-- ----------------------------
drop table if exists sys_notice;
create table sys_notice (
  notice_id         int(4)          not null auto_increment    comment '公告ID',
  notice_title      varchar(50)     not null                   comment '公告标题',
  notice_type       char(1)         not null                   comment '公告类型（1通知 2公告）',
  notice_content    varchar(2000)   default null               comment '公告内容',
  status            char(1)         default '0'                comment '公告状态（0正常 1关闭）',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time       datetime                                   comment '创建时间',
  update_by         varchar(64)     default ''                 comment '更新者',
  update_time       datetime                                   comment '更新时间',
  remark            varchar(255)    default null               comment '备注',
  primary key (notice_id)
) engine=innodb auto_increment=10 comment = '通知公告表';

-- ----------------------------
-- 初始化-公告信息表数据
-- ----------------------------
insert into sys_notice values('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '管理员');
insert into sys_notice values('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容',   '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '管理员');


-- ----------------------------
-- 18、代码生成业务表
-- ----------------------------
drop table if exists gen_table;
create table gen_table (
  table_id          bigint(20)      not null auto_increment    comment '编号',
  table_name        varchar(200)    default ''                 comment '表名称',
  table_comment     varchar(500)    default ''                 comment '表描述',
  class_name        varchar(100)    default ''                 comment '实体类名称',
  tpl_category      varchar(200)    default 'crud'             comment '使用的模板（crud单表操作 tree树表操作）',
  package_name      varchar(100)                               comment '生成包路径',
  module_name       varchar(30)                                comment '生成模块名',
  business_name     varchar(30)                                comment '生成业务名',
  function_name     varchar(50)                                comment '生成功能名',
  function_author   varchar(50)                                comment '生成功能作者',
  options           varchar(1000)                              comment '其它生成选项',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time 	    datetime                                   comment '创建时间',
  update_by         varchar(64)     default ''                 comment '更新者',
  update_time       datetime                                   comment '更新时间',
  remark            varchar(500)    default null               comment '备注',
  primary key (table_id)
) engine=innodb auto_increment=1 comment = '代码生成业务表';


-- ----------------------------
-- 19、代码生成业务表字段
-- ----------------------------
drop table if exists gen_table_column;
create table gen_table_column (
  column_id         bigint(20)      not null auto_increment    comment '编号',
  table_id          varchar(64)                                comment '归属表编号',
  column_name       varchar(200)                               comment '列名称',
  column_comment    varchar(500)                               comment '列描述',
  column_type       varchar(100)                               comment '列类型',
  java_type         varchar(500)                               comment 'JAVA类型',
  java_field        varchar(200)                               comment 'JAVA字段名',
  is_pk             char(1)                                    comment '是否主键（1是）',
  is_increment      char(1)                                    comment '是否自增（1是）',
  is_required       char(1)                                    comment '是否必填（1是）',
  is_insert         char(1)                                    comment '是否为插入字段（1是）',
  is_edit           char(1)                                    comment '是否编辑字段（1是）',
  is_list           char(1)                                    comment '是否列表字段（1是）',
  is_query          char(1)                                    comment '是否查询字段（1是）',
  query_type        varchar(200)    default 'EQ'               comment '查询方式（等于、不等于、大于、小于、范围）',
  html_type         varchar(200)                               comment '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  dict_type         varchar(200)    default ''                 comment '字典类型',
  sort              int                                        comment '排序',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time 	    datetime                                   comment '创建时间',
  update_by         varchar(64)     default ''                 comment '更新者',
  update_time       datetime                                   comment '更新时间',
  primary key (column_id)
) engine=innodb auto_increment=1 comment = '代码生成业务表字段';

-- ----------------------------
-- 20、生产车间班组表字段
-- ----------------------------
-- drop table if exists prod_shop_floor_group;
-- create table prod_shop_floor_group (
--   group_id          bigint(20)      not null auto_increment    comment '班组id',
--   dept_id           bigint(20)      default 0                  comment '车间部门id',
--   group_name        varchar(60)     default ''                 comment '班组名称',
--   create_by         varchar(64)     default ''                 comment '创建者',
--   create_time 	    datetime                                   comment '创建时间',
--   update_by         varchar(64)     default ''                 comment '更新者',
--   update_time       datetime                                   comment '更新时间',
--   primary key (group_id)
-- ) engine=innodb auto_increment=200 comment = '班组表';

drop table if exists prod_sf_group;
create table prod_sf_group (
  id          		bigint(20)      not null auto_increment    comment '班组id',
  dept_id           bigint(20)      default 0                  comment '车间部门id',
  name        		varchar(60)     default ''                 comment '班组名称',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time 	    datetime                                   comment '创建时间',
  update_by         varchar(64)     default ''                 comment '更新者',
  update_time       datetime                                   comment '更新时间',
  primary key (id)
) engine=innodb auto_increment=200 comment = '班组表';

-- ----------------------------
-- 初始化 生产车间班组表
-- ----------------------------
-- insert into prod_shop_floor_group values (100,  101, '钎焊班', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
-- insert into prod_shop_floor_group values (101,  101, '检验班', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
-- insert into prod_shop_floor_group values (102,  101, '包装入库班', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');

insert into prod_sf_group values (100,  101, '压装激光焊班', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_group values (101,  101, '钎焊班',      'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_group values (102,  101, '检验班',      'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_group values (103,  101, '包装入库班',   'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');

-- ----------------------------
-- 21、生产车间班组工序表字段
-- ----------------------------
-- drop table if exists prod_shop_floor_operation;
-- create table prod_shop_floor_operation (
--   operation_id          bigint(20)      not null auto_increment    comment '工序id',
--   operation_name        varchar(60)     default ''                 comment '工序名称',
--   group_id              bigint(20)      default 0                  comment '车间班组id',
--   create_by             varchar(64)     default ''                 comment '创建者',
--   create_time 	        datetime                                   comment '创建时间',
--   update_by             varchar(64)     default ''                 comment '更新者',
--   update_time           datetime                                   comment '更新时间',
--   primary key (operation_id)
-- ) engine=innodb auto_increment=200 comment = '工序表';

drop table if exists prod_sf_operation;
create table prod_sf_operation (
  id          			bigint(20)      not null auto_increment    comment '工序id',
  name        			varchar(60)     default ''                 comment '工序名称',
  group_id              bigint(20)      default 0                  comment '车间班组id',
  need_reason			char(1)         default '0'				   comment '该工序是否需要不良原因0不需要1需要',
  create_by             varchar(64)     default ''                 comment '创建者',
  create_time 	        datetime                                   comment '创建时间',
  update_by             varchar(64)     default ''                 comment '更新者',
  update_time           datetime                                   comment '更新时间',
  primary key (id)
) engine=innodb auto_increment=200 comment = '工序表';

-- ----------------------------
-- 初始化 生产车间班组表
-- ----------------------------
-- insert into prod_shop_floor_operation values (100,  '点胶', 100, 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
-- insert into prod_shop_floor_operation values (101,  '钎焊上料', 100, 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
-- insert into prod_shop_floor_operation values (102,  '下料+外观检验', 100, 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');

insert into prod_sf_operation values (100,  '压装',       100, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (101,  '凸焊',       100, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (102,  '激光焊',      100, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (103,  '机器人一',    100, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (104,  '机器人二',    100, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (105,  '机器人三',    100, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (106,  '点(补)胶',    101, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (107,  '钎焊上料',    101, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (108,  '下料外观检验', 101, '1', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (109,  '综检',        102, '1', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (110,  '气密',        102, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (111,  '导通',        102, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (112,  '装传感器',    102, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (113,  '氦检贴标签',  102, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (114,  '全检打钢印',  102, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into prod_sf_operation values (115,  '包装',       103, '0', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');


-- ----------------------------
-- 22、物料表字段
-- ----------------------------
drop table if exists md_part;
create table md_part (
  id               bigint(20)      not null auto_increment    comment '物料id',
  number      	   varchar(20)     default ''                 comment '物料编码',
  `desc`           varchar(60)     default ''                 comment '物料描述',
  desc2            varchar(60)     default 0                  comment '物料描述2',
  proj_name        varchar(60)     default 0                  comment '物料项目名称',
  spec			   varchar(120)	   default ''				  comment '规格',
  place			   varchar(60)     default ''				  comment '产地',
  brand			   varchar(60)	   default ''				  comment '品牌',
  status           varchar(10)     default ''                 comment '状态',
  create_by        varchar(64)     default ''                 comment '创建者',
  create_time 	   datetime                                   comment '创建时间',
  update_by        varchar(64)     default ''                 comment '更新者',
  update_time      datetime                                   comment '更新时间',
  primary key (id)
) engine=innodb auto_increment=200 comment = '物料表';

-- ----------------------------
-- 初始化 物料表
-- ----------------------------
insert into md_part values (100, '2300010127', '', '', 'F662 (FORD  FEU)',   '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (101, '2300010145', '', '', 'LGE',                '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (102, '2300240004', '', '', 'PSA-EB2GDI KVS',     '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (103, '2300020037', '', '', 'DEL-CA2.0 H16GDI',   '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (104, '2300240001', '', '', 'PSA-EP6GDI',         '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (105, '2300260007', '', '', 'MZD-BJ6-1.5GDI-00',  '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (106, '2300260008', '', '', 'MZD-BJ6-2.0GDI-00',  '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (107, '2300260009', '', '', 'MZD-BJ6-2.5GDI-00',  '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (108, '2300020046', '', '', 'DEL-CAH15TG-AD KVS', '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (109, '2300250001L','', '', 'SVW-EA211GDI',       '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (110, '2300260003', '', '', 'MZD-SKY1.5GDI',      '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (111, '2300260001', '', '', 'MZD-SKY2.0GDI',      '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');
insert into md_part values (112, '2300260002', '', '', 'MZD-SKY2.5GDI',      '', '', '', 'Active', 'admin', '2020-03-11 11-33-00', 'admin', '2020-03-11 11-33-00');

-- ----------------------------
-- 23、生产报工表字段
-- ----------------------------
drop table if exists prod_report_hist;
create table prod_report_hist (
  id          bigint(20)      not null auto_increment    comment 'id',
  prod_date       datetime                 					 comment '生产日期',
  report_date     datetime                 					 comment '报工日期',
  start_time	  varchar(10)	  default ''                 comment '开始时间',
  end_time	      varchar(10)	  default ''                 comment '结束时间',
  part_proj_name  varchar(60)     default ''				 comment '产品名称',
  part_number     varchar(20)     default ''                 comment '物料编码',
  component_name  varchar(60)     default ''				 comment '零件名称',
  serial_number    varchar(20)     default ''                 comment '批序号',
  dept            varchar(30)     default ''                 comment '生产车间',
  `group`         varchar(60)     default ''                 comment '车间班组',
  op              varchar(60)     default ''                 comment '工序',
  operator        varchar(60)     default ''                 comment '操作员',
  shift           char(1)         default '0'                comment '班次(0白班 1夜班)',
  reject_reason   varchar(120)    default ''                 comment '不良原因',
  qty_completed   int			  default 0					 comment '完成数',
  qty_rejected    int			  default 0					 comment '不良数',
  qty_scrapped    int			  default 0					 comment '报废数',
  qty_accepted    int			  default 0					 comment '合格数',
  ftq             double(16,4)                               comment 'FQT',
  ppm             double(16,2)                               comment 'PPM',
  create_by       varchar(64)     default ''                 comment '创建者',
  create_time 	  datetime                                   comment '创建时间',
  update_by       varchar(64)     default ''                 comment '更新者',
  update_time     datetime                                   comment '更新时间',
  primary key (id)
) engine=innodb auto_increment=200 comment = '生产报工表';

-- ----------------------------
-- 初始化 生产报工表
-- ----------------------------

-- demo data
insert into prod_report_hist values (100, '2020-02-26', '2020-02-26', '06:00', '15:00', 'F662 (FORD  FEU)', '2300010127', '支架块', '20200321', '高压车间', '压装焊接班', '压装', '金学枝', '0', '', 900, 0, 0, 900, 1, 0, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_report_hist values (101, '2020-02-26', '2020-02-26', '06:00', '15:00', 'F662 (FORD  FEU)', '2300010127', '支架块', '20200321', '高压车间', '压装焊接班', '压装', '邓小红', '1', '', 300, 0, 0, 300, 1, 0, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_report_hist values (102, '2020-02-26', '2020-02-26', '06:00', '15:00', 'F662 (FORD  FEU)', '2300010127', '支架块', '20200321', '高压车间', '压装焊接班', '激光焊', '金学枝', '0', '', 650, 0, 0, 650, 1, 0, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_report_hist values (103, '2020-02-26', '2020-02-26', '06:00', '15:00', 'F662 (FORD  FEU)', '2300010127', '支架块', '20200321', '高压车间', '压装焊接班', '激光焊', '邓小红', '1', '', 550, 0, 0, 550, 1, 0, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_report_hist values (104, '2020-02-26', '2020-02-26', '06:00', '15:00', 'F662 (FORD  FEU)', '2300010127', '支架板', '20200321', '高压车间', '检验班', '综检', '袁芳', '0', '支架板、支架块孔距不良', 180, 5, 0, 175, 0.9722, 27778, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_report_hist values (105, '2020-02-26', '2020-02-26', '06:00', '15:00', 'PSA-EB2GDI KVS', '2300240004', '管接头', '20200321', '高压车间', '检验班', '综检', '杨芹', '1', '管接头轮廓度不良', 590, 0, 0, 590, 1, 0, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_report_hist values (106, '2020-02-26', '2020-02-26', '06:00', '15:00', 'PSA-EB2GDI KVS', '2300240004', '支架块', '20200321', '高压车间', '包装入库班', '包装', '金学枝', '0', '', 540, 0, 0, 540, 1, 0, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_report_hist values (107, '2020-02-26', '2020-02-26', '06:00', '15:00', 'PSA-EB2GDI KVS', '2300240004', '支架块', '20200321', '高压车间', '压装焊接班', '压装', '杨芹', '0', '', 480, 0, 0, 480, 1, 0, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_report_hist values (108, '2020-02-26', '2020-02-26', '06:00', '15:00', 'PSA-EB2GDI KVS', '2300240004', '支架块', '20200321', '高压车间', '压装焊接班', '压装', '杨芹', '1', '', 300, 0, 0, 300, 1, 0, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_report_hist values (109, '2020-02-26', '2020-02-26', '06:00', '15:00', 'PSA-EB2GDI KVS', '2300240004', '支架块', '20200321', '高压车间', '压装焊接班', '激光焊', '袁芳', '0', '', 180, 0, 0, 180, 1, 0, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_report_hist values (110, '2020-02-26', '2020-02-26', '06:00', '15:00', 'PSA-EB2GDI KVS', '2300240004', '支架块', '20200321', '高压车间', '压装焊接班', '激光焊', '袁芳', '1', '', 450, 0, 0, 450, 1, 0, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');

-- ----------------------------
-- 24、工序不良原因表字段
-- ----------------------------
drop table if exists prod_op_reject_reason;
create table prod_op_reject_reason (
  id          	  bigint(20)      not null auto_increment    comment 'id',
  op_id       	  bigint(20)                 			     comment '工序id',
  reason          varchar(250)	  default ''                 comment '原因',
  create_by       varchar(64)     default ''                 comment '创建者',
  create_time 	  datetime                                   comment '创建时间',
  update_by       varchar(64)     default ''                 comment '更新者',
  update_time     datetime                                   comment '更新时间',
  primary key (id)
) engine=innodb auto_increment=200 comment = '工序不良原因表';

insert into prod_op_reject_reason values (100, 108, '管接头铜胶不饱满', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (101, 108, '套筒铜胶不饱满', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (102, 108, '线束支架铜胶不饱满', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (103, 108, '端盖铜胶不饱满', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (104, 108, '加强片铜胶不饱满', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (105, 108, 'EV座铜胶不饱满', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (106, 108, '传感器铜胶不饱满', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (107, 108, '进油管铜胶不饱满', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (108, 108, '支架块铜胶不饱满', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (109, 108, '支架板铜胶不饱满', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (110, 108, '压印', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (111, 108, '拉丝', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (112, 108, '球头针眼', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (113, 108, '铜胶流淌', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (114, 108, '其他', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (115, 108, '钢印号不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (116, 108, '管接头损伤', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (117, 108, '二维码不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (118, 108, '装配点胶不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (119, 108, '外观检不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');

insert into prod_op_reject_reason values (120, 109, 'EV座轮廓度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (121, 109, 'EV座位置度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (122, 109, '支架板、支架块孔距不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (123, 109, '支架板、支架块平面度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (124, 109, '管接头位置度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (125, 109, '传感器位置度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (126, 109, '套筒位置度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (127, 109, '套筒平面度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (128, 109, '线束支架位置度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (129, 109, '支架板摆块不过', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (130, 109, '管接头摆块不过', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (131, 109, '报废', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (132, 109, '止规不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (133, 109, '支架板轮廓度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (134, 109, '管接头轮廓度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (135, 109, '支架套筒不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (136, 109, '传感器轮廓度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (137, 109, '支架杆位置度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (138, 109, '支架板位置度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (139, 109, '支架块位置度不良', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (140, 109, '支架块套筒不过', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (141, 109, '支架块轮廓度不过', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (142, 109, '支架块摆块不过', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (143, 109, '线束支架摆块不过', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (144, 109, 'EV座孔距不过', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (145, 109, '检具不过', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into prod_op_reject_reason values (146, 109, '防护板不过', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');

-- ----------------------------
-- 25、计量单位表字段
-- ----------------------------
drop table if exists md_uom;
create table md_uom (
  id          	  bigint(20)      not null auto_increment    comment 'id',
  number          varchar(25)	  default ''                 comment '编码',
  name            varchar(60)	  default ''                 comment '名称',
  create_by       varchar(64)     default ''                 comment '创建者',
  create_time 	  datetime                                   comment '创建时间',
  update_by       varchar(64)     default ''                 comment '更新者',
  update_time     datetime                                   comment '更新时间',
  primary key (id)
) engine=innodb auto_increment=200 comment = '计量单位表';

insert into md_uom values (1, 'PCS', '件', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_uom values (2, 'KG', '千克', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_uom values (3, 'M2', '平方', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_uom values (4, 'M3', '立方', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_uom values (5, 'M', '米', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_uom values (6, 'T', '吨', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_uom values (7, 'SET', '套', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_uom values (8, 'PACK', '包', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_uom values (9, 'BBL', '桶', 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');

-- ----------------------------
-- 26、产品类型表字段
-- ----------------------------
drop table if exists md_part_type;
create table md_part_type (
  id          	  bigint(20)      not null auto_increment    comment 'id',
  number          varchar(25)	  default ''                 comment '编码',
  name            varchar(60)	  default ''                 comment '名称',
  parent_id       bigint(20)      default 0                  comment '父类别ID',
  ancestors       varchar(255)    default ''                 comment '祖级列表',
  order_num       int(4)          default 0                  comment '显示顺序',
  create_by       varchar(64)     default ''                 comment '创建者',
  create_time 	  datetime                                   comment '创建时间',
  update_by       varchar(64)     default ''                 comment '更新者',
  update_time     datetime                                   comment '更新时间',
  primary key (id)
) engine=innodb auto_increment=200 comment = '产品类别表';

insert into md_part_type values (1, 'TZS', '桶装水', 0, '0', 1, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_part_type values (2, 'KT', '空桶',    0, '0', 2, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_part_type values (3, 'CJS', '纯净水', 1, '0,1', 1, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_part_type values (4, 'KQS', '矿泉水', 1, '0,1', 2, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');
insert into md_part_type values (5, 'SQS', '山泉水', 1, '0,1', 3, 'admin', '2020-03-15 23-19-00', 'admin', '2020-03-15 23-19-00');

-- ----------------------------
-- 27、供应商表字段
-- ----------------------------
drop table if exists md_supplier;
create table md_supplier (
  id          	  bigint(20)      not null auto_increment    comment 'id',
  number          varchar(20)	  default ''                 comment '编码',
  name            varchar(255)	  default ''                 comment '名称',
  address         varchar(255)	  default ''                 comment '地址',
  address2        varchar(255)	  default ''                 comment '地址2',
  country         varchar(60)	  default ''                 comment '国家',
  state           varchar(60)	  default ''                 comment '省份',
  city            varchar(60)	  default ''                 comment '城市',
  contact         varchar(50)	  default ''                 comment '联系人',
  phone           varchar(20)	  default ''                 comment '电话',
  email           varchar(50)	  default ''                 comment '邮箱',
  fax             varchar(20)	  default ''                 comment '传真',
  remark          varchar(255)	  default ''                 comment '备注',
  taxable         char(1)	      default '0'                comment '应纳税 1应纳税 0非纳税',
  taxin           char(1)	      default '0'                comment '含税 0不含税 1含税',
  tax_rate         decimal(19,5)  default 13                 comment '税率',
  bank            varchar(120)	  default ''                 comment '开户银行',
  bank_acct        varchar(20)	  default ''                 comment '银行账户',
  tax_id_nbr        varchar(20)	  default ''                 comment '纳税人识别号',
  acct_payable     varchar(20)	  default ''                 comment '应付账户',
  amt_payable      decimal(19,5)  default 0                  comment '应付账款',
  amt_pre_payment   decimal(19,5) default 0                  comment '预付账款',
  type            varchar(100)	  default ''                 comment '类别',
  create_by       varchar(64)     default ''                 comment '创建者',
  create_time 	  datetime                                   comment '创建时间',
  update_by       varchar(64)     default ''                 comment '更新者',
  update_time     datetime                                   comment '更新时间',
  primary key (id)
) engine=innodb auto_increment=200 comment = '供应商表';

