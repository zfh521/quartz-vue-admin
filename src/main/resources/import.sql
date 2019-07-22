/* 트리거 상세 */
INSERT INTO QRTZ_JOB_DETAILS
(SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
VALUES ('scheduler-name-01', 'job-name-01', 'job-group-01', 'detail-description', 'com.zum.autoconfigure.scheduler.DefaultQuartzJob', 1, 1, 1, 0, 'job_data_1' );

INSERT INTO QRTZ_JOB_DETAILS
(SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
VALUES ('scheduler-name-02', 'job-name-02', 'job-group-02', 'detail-description', 'com.zum.autoconfigure.scheduler.DefaultQuartzJob', 1, 1, 1, 0, 'job_data_2'  );

INSERT INTO QRTZ_JOB_DETAILS
(SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
VALUES ('scheduler-name-03', 'job-name-03', 'job-group-03', 'detail-description', 'com.zum.autoconfigure.scheduler.DefaultQuartzJob', 1, 1, 1, 0, 'job_data_3'  );

INSERT INTO QRTZ_JOB_DETAILS
(SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, IS_DURABLE, IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
VALUES ('scheduler-name-04', 'job-name-04', 'job-group-04', 'detail-description', 'com.zum.autoconfigure.scheduler.DefaultQuartzJob', 1, 1, 1, 0, null  );

/* 트리거 */
INSERT INTO QRTZ_TRIGGERS
(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, JOB_DATA)
VALUES ('scheduler-name-01', 'trigger-name-01', 'trigger-group-01', 'job-name-01', 'job-group-01', 'description', 1530543600000, -1, 0, 'WAITING', 'CRON', 1530543600000, 0, null, 0, null);

INSERT INTO QRTZ_TRIGGERS
(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, JOB_DATA)
VALUES ('scheduler-name-02', 'trigger-name-02', 'trigger-group-02', 'job-name-02', 'job-group-02', 'description', 1530543600000, -1, 0, 'WAITING', 'SIMPLE', 1530543600000, 0, null, 0, null);

INSERT INTO QRTZ_TRIGGERS
(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, JOB_DATA)
VALUES ('scheduler-name-03', 'trigger-name-03', 'trigger-group-03', 'job-name-03', 'job-group-03', 'description', 1530543600000, -1, 0, 'WAITING', 'SIMPROP', 1530543600000, 0, null, 0, null);

INSERT INTO QRTZ_TRIGGERS
(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, DESCRIPTION, NEXT_FIRE_TIME, PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME, MISFIRE_INSTR, JOB_DATA)
VALUES ('scheduler-name-04', 'trigger-name-04', 'trigger-group-04', 'job-name-04', 'job-group-04', 'description', 1530543600000, -1, 0, 'WAITING', 'BLOB', 1530543600000, 0, null, 0, null);

/* cron 트리거 */
INSERT INTO QRTZ_CRON_TRIGGERS
(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
VALUES ('scheduler-name-01', 'trigger-name-01', 'trigger-group-01', '0 0 0 1/1 * ? *', 'Asia/Seoul');

/* simple 트리거 */
INSERT INTO QRTZ_SIMPLE_TRIGGERS
(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, REPEAT_COUNT, REPEAT_INTERVAL, TIMES_TRIGGERED)
VALUES ('scheduler-name-02', 'trigger-name-02', 'trigger-group-02', 0, 0, 1);

/* simprop 트리거 */
INSERT INTO QRTZ_SIMPROP_TRIGGERS
(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, STR_PROP_1, STR_PROP_2, STR_PROP_3, INT_PROP_1, INT_PROP_2, LONG_PROP_1, LONG_PROP_2, DEC_PROP_1, DEC_PROP_2, BOOL_PROP_1, BOOL_PROP_2)
VALUES ('scheduler-name-03', 'trigger-name-03', 'trigger-group-03', 'STR_PROP_1', 'STR_PROP_2', 'STR_PROP_3', 1, 2, 1, 2, 1.1, 2.1, 'a', 'b');

/* blob 트리거 */
INSERT INTO QRTZ_BLOB_TRIGGERS
(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, BLOB_DATA)
VALUES ('scheduler-name-04', 'trigger-name-04', 'trigger-group-04', null);

/* scheduler state */
INSERT INTO QRTZ_SCHEDULER_STATE
(SCHED_NAME, INSTANCE_NAME, LAST_CHECKIN_TIME, CHECKIN_INTERVAL)
VALUES ('scheduler-name-01', 'DESKTOP', 1558926852046, 20000);

INSERT INTO QRTZ_SCHEDULER_STATE
(SCHED_NAME, INSTANCE_NAME, LAST_CHECKIN_TIME, CHECKIN_INTERVAL)
VALUES ('scheduler-name-02', 'DESKTOP', 1558926852046, 20000);

/* lock */
INSERT INTO QRTZ_LOCKS (SCHED_NAME, LOCK_NAME) VALUES ('scheduler-name-01', 'STATE_ACCESS');
INSERT INTO QRTZ_LOCKS (SCHED_NAME, LOCK_NAME) VALUES ('scheduler-name-01', 'TRIGGER_ACCESS');

/* paused trigger grps */
INSERT INTO QRTZ_PAUSED_TRIGGER_GRPS (SCHED_NAME, TRIGGER_GROUP) VALUES ('scheduler-name-01', 'trigger-group-01');
INSERT INTO QRTZ_PAUSED_TRIGGER_GRPS (SCHED_NAME, TRIGGER_GROUP) VALUES ('scheduler-name-02', 'trigger-group-02');

/* fired triggers */
INSERT INTO QRTZ_FIRED_TRIGGERS (SCHED_NAME, ENTRY_ID, TRIGGER_NAME, TRIGGER_GROUP, INSTANCE_NAME, FIRED_TIME, SCHED_TIME, PRIORITY, STATE, JOB_NAME, JOB_GROUP, IS_NONCONCURRENT, REQUESTS_RECOVERY)
VALUES ('scheduler-name-01', 'DESKTOP-0QF2KQT1', 'trigger-name-01', 'trigger-group-01', 'DESKTOP', 1547016750249, 1547016780000, 0, 'EXECUTING', 'job-name-01', 'job-group-01', 1, 0);
INSERT INTO QRTZ_FIRED_TRIGGERS (SCHED_NAME, ENTRY_ID, TRIGGER_NAME, TRIGGER_GROUP, INSTANCE_NAME, FIRED_TIME, SCHED_TIME, PRIORITY, STATE, JOB_NAME, JOB_GROUP, IS_NONCONCURRENT, REQUESTS_RECOVERY)
VALUES ('scheduler-name-02', 'DESKTOP-0QF2KQT1', 'trigger-name-02', 'trigger-group-02', 'DESKTOP', 1547016750249, 1547016780000, 0, 'EXECUTING', 'job-name-02', 'job-group-02', 1, 0);

/* quartz calendars */
INSERT INTO QRTZ_CALENDARS (SCHED_NAME, CALENDAR_NAME, CALENDAR) VALUES ('scheduler-name-01', 'CALENDAR_NAME', 'CALENDAR');
INSERT INTO QRTZ_CALENDARS (SCHED_NAME, CALENDAR_NAME, CALENDAR) VALUES ('scheduler-name-02', 'CALENDAR_NAME', 'CALENDAR');

