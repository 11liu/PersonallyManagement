/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2016/6/24 13:45:00                           */
/*==============================================================*/
create database PersonnelManagementSystemSQL
go

use PersonnelManagementSystemSQL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblDepartment') and o.name = 'FK_TBLDEPAR_REFERENCE_TBLEMPL_bumenyuanggong')
alter table tblDepartment
   drop constraint FK_TBLDEPAR_REFERENCE_TBLEMPL_bumenyuanggong
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblEmployee') and o.name = 'FK_TBLDEPAR_REFERENCE_TBLEMPL_bumenyuanggong1')
alter table tblEmployee
   drop constraint FK_TBLDEPAR_REFERENCE_TBLEMPL_bumenyuanggong1
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblEmployeeAttendanceRecord') and o.name = 'FK_TBLEMPLO_REFERENCE_TBLEMPLO_yuanggongtokaoqing')
alter table tblEmployeeAttendanceRecord
   drop constraint FK_TBLEMPLO_REFERENCE_TBLEMPLO_yuanggongtokaoqing
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblEmployeeAttendanceRecord') and o.name = 'FK_TBLEMPLO_REFERENCE_TBLEMPL_yuangongtokaoqing1')
alter table tblEmployeeAttendanceRecord
   drop constraint FK_TBLEMPLO_REFERENCE_TBLEMPL_yuangongtokaoqing1
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblEmployeeLeave') and o.name = 'FK_TBLEMPLO_REFERENCE_TBLEMPLO')
alter table tblEmployeeLeave
   drop constraint FK_TBLEMPLO_REFERENCE_TBLEMPLO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblEmployeeLeave') and o.name = 'FK_TBLEMPLO_REFERENCE_TBLEMPL_yuanggongtoqingjia')
alter table tblEmployeeLeave
   drop constraint FK_TBLEMPLO_REFERENCE_TBLEMPL_yuanggongtoqingjia
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblEmployeeSalary') and o.name = 'FK_TBLEMPLO_REFERENCE_TBLEMPL_yuanggongxinzhi')
alter table tblEmployeeSalary
   drop constraint FK_TBLEMPLO_REFERENCE_TBLEMPL_yuanggongxinzhi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblOvertime') and o.name = 'FK_TBLOVERT_REFERENCE_TBLEMPL_yuanggongjiaban')
alter table tblOvertime
   drop constraint FK_TBLOVERT_REFERENCE_TBLEMPL_yuanggongjiaban
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblOvertime') and o.name = 'FK_TBLOVERT_REFERENCE_TBLOVERT_jiabanleixintojiaban')
alter table tblOvertime
   drop constraint FK_TBLOVERT_REFERENCE_TBLOVERT_jiabanleixintojiaban
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblOvertime') and o.name = 'FK_TBLOVERT_REFERENCE_TBLEMPL_yuanggongjiaban1')
alter table tblOvertime
   drop constraint FK_TBLOVERT_REFERENCE_TBLEMPL_yuanggongjiaban1
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblWorkEvaluation') and o.name = 'FK_TBLWORKE_REFERENCE_TBLEMPL_yuangongyeji1')
alter table tblWorkEvaluation
   drop constraint FK_TBLWORKE_REFERENCE_TBLEMPL_yuangongyeji1
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblWorkEvaluation') and o.name = 'FK_TBLWORKE_REFERENCE_TBLEMPL_yuanggongyeji')
alter table tblWorkEvaluation
   drop constraint FK_TBLWORKE_REFERENCE_TBLEMPL_yuanggongyeji
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblDepartment')
            and   type = 'U')
   drop table tblDepartment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblEmployee')
            and   type = 'U')
   drop table tblEmployee
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblEmployeeAttendanceRecord')
            and   type = 'U')
   drop table tblEmployeeAttendanceRecord
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblEmployeeLeave')
            and   type = 'U')
   drop table tblEmployeeLeave
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblEmployeeSalary')
            and   type = 'U')
   drop table tblEmployeeSalary
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblOvertime')
            and   type = 'U')
   drop table tblOvertime
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblOvertimeType')
            and   type = 'U')
   drop table tblOvertimeType
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblSystemEvent')
            and   type = 'U')
   drop table tblSystemEvent
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblSystemLayout')
            and   type = 'U')
   drop table tblSystemLayout
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblVacation')
            and   type = 'U')
   drop table tblVacation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblWorkEvaluation')
            and   type = 'U')
   drop table tblWorkEvaluation
go

/*==============================================================*/
/* Table: tblDepartment                                         */
/*==============================================================*/
create table tblDepartment (
   departmentId         int                  identity,
   departmentName       varchar(10)          null,
   departmentDescribe   varchar(50)          null,
   employeeId           int                  null,
   constraint PK_TBLDEPARTMENT primary key nonclustered (departmentId)
)
go

/*==============================================================*/
/* Table: tblEmployee                                           */
/*==============================================================*/
create table tblEmployee (
   employeeId           int                  identity,
   employeeName         varchar(50)          not null,
   employeeLoginName    varchar(20)          not null,
   employeeLoginPwd     varchar(20)          not null,
   employeeEmail        varchar(50)          not null,
   departmentId         int                  null,
   employeeBaseSalary   int                  null,
   employeePosition     varchar(50)          null,
   employeePhone        varchar(50)          null,
   employeeDataOfArrive date                 not null,
   employeeSelfInteroduction varchar(200)         null,
   employeeResidueVacations int                  null,
   employeeRank         int                  null,
   employeePicture      image                null,
   constraint PK_TBLEMPLOYEE primary key nonclustered (employeeId),
   constraint PK_TBLEMPLOYEE_yueshu check (employeeName != employeeLoginName)
)
go

/*==============================================================*/
/* Table: tblEmployeeAttendanceRecord                           */
/*==============================================================*/
create table tblEmployeeAttendanceRecord (
   attendanceId         int                  identity,
   employeeId           int                  not null,
   arriveTime           datetime             null,
   recordId             int                  null,
   attendanceType       varchar(4)           not null,
   backAudit            int                  null,
   dateTimes            date                 not null,
   constraint PK_TBLEMPLOYEEATTENDANCERECORD primary key nonclustered (attendanceId),
   constraint PK_TBLEMPLOYEE_ATTENDANCERECORD check (attendanceId != employeeId ),
   constraint PK_TBLEMPLOYEE_ATTENDANCERECORDTYPE check (attendanceType in('�ٵ�','ȱ��','����'))
)
go

/*==============================================================*/
/* Table: tblEmployeeLeave                                      */
/*==============================================================*/
create table tblEmployeeLeave (
   leaveId              int                  identity(100,1),
   employeeId           int                  not null,
   handTime             datetime             not null,
   stratTime            datetime             not null,
   endTime              datetime             not null,
   reason               varchar(100)         null,
   leaveType            int                  null,
   timeHours            float                not null,
   applytStatus         varchar(20)          null,
   auditorId            int                  null,
   reasonOfRefuse       varchar(100)         null,
   constraint PK_TBLEMPLOYEELEAVE primary key nonclustered (leaveId),
   constraint PK_TBLEMPLOYEELEAVE_TIME check (stratTime < endTime),
   constraint PK_TBLEMPLOYEELEAVE_VALUE check (applytStatus in ('���ύ','��ȡ��','����׼','�ѷ��'))
)
go

/*==============================================================*/
/* Table: tblEmployeeSalary                                     */
/*==============================================================*/
create table tblEmployeeSalary (
   salaryId             int                  identity,
   employeeId           int                  not null,
   payfoDate            date                 not null,
   overtimeSalary       int                  null,
   cutOfAbsenteeism     int                  null,
   otherSalary          int                  null,
   baseSalary			int					 null,
   constraint PK_TBLEMPLOYEESALARY primary key nonclustered (salaryId)
)
go

/*==============================================================*/
/* Table: tblOvertime                                           */
/*==============================================================*/
create table tblOvertime (
   applyId              int                  identity,
   employeeId           int                  not null,
   evalutorId           int                  null,
   submitTime           date                 not null,
   beginTime            datetime             not null,
   endTime              datetime             not null,
   overtimeReason       varchar(100)         not null,
   applyConditions      varchar(10)          not null,
   overtimeType         int                  null,
   refuseReason         varchar(100)         null,
   timeTours            int                  null,
   constraint PK_TBLOVERTIME primary key nonclustered (applyId),
   constraint PK_TBLOVERTIME_OVERTIME check (beginTime < endTime),
   constraint PK_TBLOVERTIME_CONDITION check (applyconditions in ('����׼','����׼','���ܾ�'))
)
go

/*==============================================================*/
/* Table: tblOvertimeType                                       */
/*==============================================================*/
create table tblOvertimeType (
   overtimeType         int                  identity,
   overtimeName         varchar(10)          not null,
   constraint PK_TBLOVERTIMETYPE primary key nonclustered (overtimeType)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ֶο�ȡֵ"��������"��"����ɽ���"',
   'user', @CurrentUser, 'table', 'tblOvertimeType', 'column', 'overtimeName'
go

/*==============================================================*/
/* Table: tblSystemEvent                                        */
/*==============================================================*/
create table tblSystemEvent (
   eventId              int                  identity,
   eventTime            date                 not null,
   eventDescribe        varchar(100)         not null,
   constraint PK_TBLSYSTEMEVENT primary key nonclustered (eventId)
)
go

/*==============================================================*/
/* Table: tblSystemLayout                                       */
/*==============================================================*/
create table tblSystemLayout (
   layoutId             int                  identity,
   layoutType           varchar(10)          null,
   layoutName           varchar(50)          not null,
   layoutValue          varchar(50)          null,
   constraint PK_TBLSYSTEMLAYOUT primary key nonclustered (layoutId)
)
go

/*==============================================================*/
/* Table: tblVacation                                           */
/*==============================================================*/
create table tblVacation (
   vacationId           int                  identity,
   vacationTime         date                 not null,
   vacationName         varchar(50)          not null,
   ifNationalVacation   bit                  not null,
   constraint PK_TBLVACATION primary key nonclustered (vacationId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ֶ�ֻ��ȡֵ"0"��"1"',
   'user', @CurrentUser, 'table', 'tblVacation', 'column', 'ifNationalVacation'
go

/*==============================================================*/
/* Table: tblWorkEvaluation                                     */
/*==============================================================*/
create table tblWorkEvaluation (
   evaluationId         int                  identity,
   employeeId           int                  not null,
   evalutorsId          int                  null,
   submitTime           datetime             not null,
   particularYear       int                  not null,
   season               int                  not null,
   conditions           int                  null,
   lastEditTime         date                 null,
   selfEvaluationGrade  int                  null,
   evalutorGrade        int                  null,
   selfEvaluation       varchar(200)         null,
   evalutorView         varchar(200)         null,
   itemContent          varchar(800)         not null,
   constraint PK_TBLWORKEVALUATION primary key nonclustered (evaluationId),
   constraint PK_TBLWORKEVALUATION_STATE check (conditions  in ('0','1'))
)
go

alter table tblDepartment
   add constraint FK_TBLDEPAR_REFERENCE_TBLEMPL_bumenyuanggong foreign key (employeeId)
      references tblEmployee (employeeId)
go

alter table tblEmployee
   add constraint FK_TBLDEPAR_REFERENCE_TBLEMPL_bumenyuanggong1 foreign key (departmentId)
      references tblDepartment (departmentId)
go

alter table tblEmployeeAttendanceRecord
   add constraint FK_TBLEMPLO_REFERENCE_TBLEMPLO_yuanggongtokaoqing foreign key (employeeId)
      references tblEmployee (employeeId)
go

alter table tblEmployeeAttendanceRecord
   add constraint FK_TBLEMPLO_REFERENCE_TBLEMPL_yuangongtokaoqing1 foreign key (recordId)
      references tblEmployee (employeeId)
go

alter table tblEmployeeLeave
   add constraint FK_TBLEMPLO_REFERENCE_TBLEMPLO foreign key (auditorId)
      references tblEmployee (employeeId)
go

alter table tblEmployeeLeave
   add constraint FK_TBLEMPLO_REFERENCE_TBLEMPL_yuanggongtoqingjia foreign key (employeeId)
      references tblEmployee (employeeId)
go

alter table tblEmployeeSalary
   add constraint FK_TBLEMPLO_REFERENCE_TBLEMPL_yuanggongxinzhi foreign key (employeeId)
      references tblEmployee (employeeId)
go

alter table tblOvertime
   add constraint FK_TBLOVERT_REFERENCE_TBLEMPL_yuanggongjiaban foreign key (employeeId)
      references tblEmployee (employeeId)
go

alter table tblOvertime
   add constraint FK_TBLOVERT_REFERENCE_TBLOVERT_jiabanleixintojiaban foreign key (overtimeType)
      references tblOvertimeType (overtimeType)
go

alter table tblOvertime
   add constraint FK_TBLOVERT_REFERENCE_TBLEMPL_yuanggongjiaban1 foreign key (evalutorId)
      references tblEmployee (employeeId)
go

alter table tblWorkEvaluation
   add constraint FK_TBLWORKE_REFERENCE_TBLEMPL_yuangongyeji1 foreign key (employeeId)
      references tblEmployee (employeeId)
go

alter table tblWorkEvaluation
   add constraint FK_TBLWORKE_REFERENCE_TBLEMPL_yuanggongyeji foreign key (evalutorsId)
      references tblEmployee (employeeId)
go


--��ͼ1

create view View_ShowEmployeeInformation
as 
	SELECT dbo.tblEmployee.employeeId, dbo.tblEmployee.employeeName, dbo.tblEmployee.employeeLoginName, dbo.tblEmployee.employeeEmail, 
	dbo.tblDepartment.departmentName, dbo.tblEmployee.departmentId, dbo.tblEmployee.employeePhone FROM  dbo.tblEmployee INNER JOIN
    dbo.tblDepartment ON dbo.tblEmployee.departmentId = dbo.tblDepartment.departmentId AND dbo.tblEmployee.employeeId = dbo.tblDepartment.employeeId
               
go

--��ͼ2*

create view View_ShowAttendanceInformation
as 
	SELECT     dbo.tblEmployeeAttendanceRecord.attendanceId, dbo.tblEmployee.employeeName, dbo.tblEmployeeAttendanceRecord.dateTimes, dbo.tblEmployeeAttendanceRecord.attendanceType
FROM         dbo.tblEmployeeAttendanceRecord INNER JOIN
                      dbo.tblEmployee ON dbo.tblEmployeeAttendanceRecord.employeeId = dbo.tblEmployee.employeeId 
		
go

--��ͼ3

create view View_ShowLeaveInformation
as 
	SELECT dbo.tblEmployeeLeave.leaveId, dbo.tblEmployee.employeeName, dbo.tblEmployeeLeave.handTime, dbo.tblEmployeeLeave.reason,
	dbo.tblEmployeeLeave.applytStatus, dbo.tblEmployeeLeave.reasonOfRefuse FROM  dbo.tblEmployeeLeave INNER JOIN dbo.tblEmployee ON
    dbo.tblEmployeeLeave.employeeId = dbo.tblEmployee.employeeId

go


--��ͼ4*

create view View_ShowOvertimeInformation
as 
	SELECT dbo.tblOvertime.applyId, dbo.tblEmployee.employeeName, dbo.tblOvertime.submitTime, dbo.tblOvertime.overtimeReason,
	dbo.tblOvertime.applyConditions, dbo.tblOvertimeType.overtimeName FROM  dbo.tblOvertime INNER JOIN dbo.tblOvertimeType ON
	dbo.tblOvertime.overtimeType = dbo.tblOvertimeType.overtimeType INNER JOIN dbo.tblEmployee ON dbo.tblOvertime.employeeId =
	 dbo.tblEmployee.employeeId 
              
go

--��ͼ5*
create view View_ShowBaseSalaryInformation
as
	 SELECT employeeId, employeeName, employeeBaseSalary
	 FROM  dbo.tblEmployee

go



--��������
insert into tblDepartment(departmentName,departmentDescribe)
values('���²�','������Ա��������'),
('����','��˾��������'),
('������','��������'),
('�з���','��Ŀ�о�����'),
('���۲�','��Ʒ����'),
('���ز�','��˾�ƹ�');

go
--��Ա����
insert into tblEmployee(employeeName,employeeLoginName,employeeLoginPwd,employeeEmail,departmentId,employeeBaseSalary,employeePosition,
employeePhone,employeeDataOfArrive,employeeSelfInteroduction,employeeResidueVacations,employeeRank)
values('��һ','yizhang','2016100','2016@01',1,8000,'����','13648577556','2014-1-1','��',4,1),
('�Ŷ�','erzhang','2016101','2016@02',1,4500,'�鳤','13748897256','2014-7-5','��',8,2),
('����','sanzhang','2016102','2016@03',1,4600,'Ա��','15745842256','2015-6-25','��',6,3),
('����','sili','2016103','2016@04',2,8000,'����','18745847256','2013-2-21','�ٺ�',5,1),
('����','wuli','2016104','2016@05',2,4400,'�鳤','15346837856','2012-9-21','����',3,2),
('����','liuli','2016105','2016@06',2,4700,'Ա��','13446837526','2015-1-15','�Ǻ�',7,3),
('����','qizhao','2016106','2016@07',3,8000,'����','13244682956','2012-4-21','�ٺٺ�',2,1),
('�԰�','bazhao','2016107','2016@08',3,4800,'�鳤','15945835256','2014-9-28','������',1,2),
('�Ծ�','jiuzhao','2016108','2016@09',3,4100,'Ա��','16815942656','2016-2-11','�ǺǺ�',0,3),
('��ʮ','shisun','2016109','2016@10',4,8100,'����','14648249566','2013-3-1','�٣�',5,1),
('��ʮһ','yishisun','2016110','2016@11',4,4300,'�鳤','13748897256','2014-7-5','����',2,2),
('��ʮ��','ershisun','2016111','2016@12',4,4200,'Ա��','14945842635','2015-7-25','�ǣ�',4,3),
('Ǯʮ��','sanshiqian','2016112','2016@13',5,8300,'����','17745825161','2012-5-20','�ٺ٣�',4,1),
('Ǯʮ��','sishiqian','2016113','2016@14',5,4900,'�鳤','13346837452','2014-9-24','������',4,2),
('Ǯʮ��','wushiqian','2016114','2016@15',5,4300,'Ա��','1526836257','2015-6-15','�Ǻǣ�',1,3),
('��ʮ��','liushizhou','2016115','2016@16',6,8000,'����','13956244682','2012-2-23','�ٺٺ٣�',3,1),
('��ʮ��','qishizhou','2016116','2016@17',6,4600,'�鳤','15835594256','2013-8-28','��������',5,2),
('��ʮ��','bashizhou','2016117','2016@18',6,4100,'Ա��','16815942656','2016-4-12','�ǺǺǣ�',7,3)

go
--��������
update tblDepartment
set employeeId =(select employeeId from tblEmployee where employeePosition = '����' and departmentId = 1)
where tblDepartment.departmentName = '���²�' 
go

update tblDepartment
set employeeId =(select employeeId from tblEmployee where employeePosition = '����' and departmentId = 2)
where tblDepartment.departmentName = '����'
go

update tblDepartment
set employeeId =(select employeeId from tblEmployee where employeePosition = '����' and departmentId = 3)
where tblDepartment.departmentName = '������' 
go

update tblDepartment
set employeeId =(select employeeId from tblEmployee where employeePosition = '����' and departmentId = 4)
where tblDepartment.departmentName = '�з���' 
go

update tblDepartment
set employeeId =(select employeeId from tblEmployee where employeePosition = '����' and departmentId = 5)
where tblDepartment.departmentName = '���۲�' 
go

update tblDepartment
set  employeeId =(select employeeId from tblEmployee where employeePosition = '����' and departmentId = 6)
where tblDepartment.departmentName = '���ز�' 
go

--���ڼ�¼���ʼ����
insert into tblEmployeeAttendanceRecord(employeeId,recordId,arriveTime,attendanceType,dateTimes)
values('8','2','2016-05-21 8:33','�ٵ�','2016-05-21')
go

insert into tblEmployeeAttendanceRecord(employeeId,recordId,arriveTime,attendanceType,dateTimes)
values('7','2','2016-05-27 8:27','����','2016-05-27')
go

insert into tblEmployeeAttendanceRecord(employeeId,recordId,arriveTime,attendanceType,dateTimes)
values('6','3','2016-05-29 8:40','�ٵ�','2016-05-29')
go

insert into tblEmployeeAttendanceRecord(employeeId,recordId,attendanceType,dateTimes)
values('17','3','ȱ��','2016-05-17')
go

insert into tblEmployeeAttendanceRecord(employeeId,recordId,attendanceType,dateTimes)
values('12','3','ȱ��','2016-05-18')
go


--��ٱ��ʼ����

insert into tblEmployeeLeave(employeeId,handTime,stratTime,endTime,reason,timeHours,applytStatus,auditorId)
values('2','2016-06-12','2016-06-13','2016-06-14','����ҽ','24','����׼',1)
go

insert into tblEmployeeLeave(employeeId,handTime,stratTime,endTime,reason,timeHours,applytStatus,auditorId)
values('7','2016-06-18','2016-06-19','2016-06-25','���ϼҽ��','168','����׼',1)
go

insert into tblEmployeeLeave(employeeId,handTime,stratTime,endTime,timeHours,applytStatus,auditorId,reasonOfRefuse)
values('5','2016-06-21','2016-06-22','2016-06-23','24','�ѷ��',1,'����ϸ�������')
go

insert into tblEmployeeLeave(employeeId,handTime,stratTime,endTime,reason,timeHours,applytStatus,auditorId)
values('8','2016-06-24','2016-06-25','2016-06-27','̽��','48','��ȡ��',2)
go

insert into tblEmployeeLeave(employeeId,handTime,stratTime,endTime,reason,timeHours,applytStatus,auditorId)
values('7','2016-06-28','2016-06-29','2016-06-30','��ð����','24','����׼',2)
go



--�Ӱ����ͳ�ʼ����
insert into tblOvertimeType(overtimeName)
values('����ɽ���')
go

insert into tblOvertimeType(overtimeName)
values('�������')
go



--�Ӱ���ʼ����
insert into tblOvertime(employeeId,submitTime,beginTime,endTime,overtimeReason,applyConditions,overtimeType,timeTours)
values('12','2016-06-1','2016-06-2 17:00','2016-06-2 20:00','����Ŀ����','����׼',1,'3')
go

insert into tblOvertime(employeeId,submitTime,beginTime,endTime,overtimeReason,applyConditions,overtimeType,timeTours)
values('2','2016-06-7','2016-06-8 18:00','2016-06-8 20:00','��Ա����','����׼',1,'2')
go

insert into tblOvertime(employeeId,submitTime,beginTime,endTime,overtimeReason,applyConditions,overtimeType,timeTours)
values('17','2016-06-9','2016-06-2 17:00','2016-06-2 21:00','����ǰ�ӽ��������','����׼',1,'4')
go

----н�ʱ��ʼ����

insert into tblEmployeeSalary(employeeId,payfoDate,cutOfAbsenteeism,baseSalary)
values('7','2016-06-1','10','8000')
go

insert into tblEmployeeSalary(employeeId,payfoDate,cutOfAbsenteeism,baseSalary)
values('12','2016-06-1','100','4200')
go

insert into tblEmployeeSalary(employeeId,payfoDate,cutOfAbsenteeism,baseSalary)
values('17','2016-06-1','100','4600')
go

--���ڱ��ʼ����

insert into tblVacation(vacationTime,vacationName,ifNationalVacation)
values('2016-1-1','Ԫ��','1')
go

insert into tblVacation(vacationTime,vacationName,ifNationalVacation)
values('2016-5-1','�Ͷ���','1')
go


