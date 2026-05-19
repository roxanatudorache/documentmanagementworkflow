prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>58333787013174864
,p_default_application_id=>252
,p_default_id_offset=>74066155469545211
,p_default_owner=>'WKSP_MYTEST'
);
end;
/
 
prompt APPLICATION 252 - Document Management
--
-- Application Export:
--   Application:     252
--   Name:            Document Management
--   Date and Time:   08:36 Tuesday May 19, 2026
--   Exported By:     MYTEST
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     34
--       Items:                  148
--       Computations:             4
--       Validations:             10
--       Processes:               50
--       Regions:                120
--       Buttons:                 89
--       Dynamic Actions:         64
--     Shared Components:
--       Logic:
--         App Settings:           1
--         Build Options:          5
--         AI Configs:             2
--       Navigation:
--         Lists:                  5
--         Breadcrumbs:            1
--           Entries:              9
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  15
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          2
--   Version:         24.2.15
--   Instance ID:     7475155224876603
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_MYTEST')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Document Management')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DOCUMENT-MANAGEMENT247')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'4672993B84D49D25CF5795A352C14ABD06A1A4F0BE814A9041EF93EE5A0CB8EB'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(188985385364789336)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Document Management'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(188991905318789265)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Document Management'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>18
,p_version_scn=>47031612646685
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(252)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(188986220498789328)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(188987430085789301)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/remote_servers/db_onnx_model
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(278352603733588335)
,p_name=>'db_onnx_model'
,p_static_id=>'db_onnx_model'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('db_onnx_model'),'https://localhost')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('db_onnx_model'),'')
,p_server_type=>'VECTOR'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('db_onnx_model'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('db_onnx_model'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('db_onnx_model'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('db_onnx_model'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('db_onnx_model'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('db_onnx_model'),'')
,p_embedding_type=>'ONNX'
,p_emb_local_model_owner=>'WKSP_MYTEST'
,p_emb_local_model_name=>'DOC_MODEL'
);
end;
/
prompt --application/shared_components/ai_config/documentation_all
begin
wwv_flow_imp_shared.create_ai_config(
 p_id=>wwv_flow_imp.id(189598089489752111)
,p_name=>'Documentation ALL'
,p_static_id=>'documentation_all'
,p_system_prompt=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use only the provided documentation. Do not use external sources, or information from public internet. Only the RAG Source provided. If the information is not available, say: Information not available in the internal knowledge base.',
'Be concise and offer as many details as possible.'))
,p_welcome_message=>'Hi! How may I help you today?'
,p_version_scn=>45815498660105
);
wwv_flow_imp_shared.create_ai_config_rag_source(
 p_id=>wwv_flow_imp.id(189598406590749233)
,p_name=>'Get all data'
,p_description=>'This RAG is used to search entire doc'
,p_rag_type=>'DATA_SOURCE'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       chunk_data',
'        AS prompt_context',
'FROM DOCUMENT_EMBEDDINGS',
'ORDER BY',
'    VECTOR_DISTANCE(VECTOR_EMB, TO_VECTOR(VECTOR_EMBEDDING(DOC_MODEL USING :APEX$AI_ALL_USER_PROMPTS AS DATA)), COSINE)',
'FETCH FIRST 50 ROW ONLY;'))
);
end;
/
prompt --application/shared_components/ai_config/documentation_search
begin
wwv_flow_imp_shared.create_ai_config(
 p_id=>wwv_flow_imp.id(189597621941756720)
,p_name=>'Documentation Search'
,p_static_id=>'documentation_search'
,p_system_prompt=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use only the provided documentation. If the information is not available, say: Information not available in the internal knowledge base.',
'Be concise and offer as many details as possible.'))
,p_welcome_message=>'Hi! How may I help you today?'
,p_version_scn=>45815499033929
);
wwv_flow_imp_shared.create_ai_config_rag_source(
 p_id=>wwv_flow_imp.id(189597854384755234)
,p_name=>'Get Data from Doc'
,p_rag_type=>'DATA_SOURCE'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       chunk_data',
'        AS prompt_context',
'FROM DOCUMENT_EMBEDDINGS',
'where CHUNK_ID = :P18_CHUNK_ID',
'ORDER BY',
'    VECTOR_DISTANCE(VECTOR_EMB, TO_VECTOR(VECTOR_EMBEDDING(DOC_MODEL USING :APEX$AI_ALL_USER_PROMPTS AS DATA)), COSINE)',
'FETCH FIRST 10 ROW ONLY;'))
);
end;
/
prompt --application/shared_components/workflow/task_definitions/test
begin
wwv_flow_imp_shared.create_task_def(
 p_id=>wwv_flow_imp.id(145112611995641415)
,p_name=>'test'
,p_static_id=>'TEST'
,p_subject=>'test'
,p_task_type=>'ACTION'
,p_priority=>3
,p_initiator_can_complete=>false
);
end;
/
prompt --application/shared_components/workflow/task_definitions/approve_documents
begin
wwv_flow_imp_shared.create_task_def(
 p_id=>wwv_flow_imp.id(189200317119571032)
,p_name=>'Approve Documents'
,p_static_id=>'APPROVE_DOCUMENTS'
,p_subject=>'Approve document from &EMPLOYEE_NAME.'
,p_task_type=>'APPROVAL'
,p_priority=>2
,p_expiration_policy=>'NONE'
,p_max_renewal_count=>3
,p_details_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,5:P5_TASK_ID:&TASK_ID.'
,p_actions_sql_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.document_id, d.document_type, d.created_by as employee_name, e.employee_id',
'from document d, employees e',
'where d.document_id=:APEX$TASK_PK',
'and upper(d.created_by)=upper(e.first_name);'))
,p_initiator_can_complete=>false
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(189278071559558067)
,p_task_def_id=>wwv_flow_imp.id(189200317119571032)
,p_label=>'Approval Level'
,p_static_id=>'APPROVAL_LEVEL'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(189278373359558066)
,p_task_def_id=>wwv_flow_imp.id(189200317119571032)
,p_label=>'Employee Name'
,p_static_id=>'EMPLOYEE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(189278746153558065)
,p_task_def_id=>wwv_flow_imp.id(189200317119571032)
,p_label=>'Document Type'
,p_static_id=>'DOCUMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(189331922459167936)
,p_task_def_id=>wwv_flow_imp.id(189200317119571032)
,p_label=>'Document Id'
,p_static_id=>'DOCUMENT_ID'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(189546239628995347)
,p_task_def_id=>wwv_flow_imp.id(189200317119571032)
,p_label=>'Employee Id'
,p_static_id=>'EMPLOYEE_ID'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(189277297895563185)
,p_task_def_id=>wwv_flow_imp.id(189200317119571032)
,p_participant_type=>'BUSINESS_ADMIN'
,p_identity_type=>'USER'
,p_value_type=>'STATIC'
,p_value=>'KING'
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(189277613577563182)
,p_task_def_id=>wwv_flow_imp.id(189200317119571032)
,p_participant_type=>'POTENTIAL_OWNER'
,p_identity_type=>'USER'
,p_value_type=>'SQL_QUERY'
,p_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with manager_chain as ( select level as lvl, e.employee_id, e.manager_id, upper(e.first_name) as manager_name',
' from employees e start with e.employee_id = ( select emp.manager_id from employees emp where emp.employee_id = :EMPLOYEE_ID )',
'  connect by nocycle prior e.manager_id = e.employee_id ) select manager_name from manager_chain where lvl = :approval_level fetch first 1 row only;'))
);
end;
/
prompt --application/shared_components/workflow/workflows/document_approval_request
begin
wwv_flow_imp_shared.create_workflow(
 p_id=>wwv_flow_imp.id(189286065451496194)
,p_name=>'Document Approval Request'
,p_static_id=>'DOC_APPROVAL_WF'
,p_title=>'Document Approval Request'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(189286695802496201)
,p_workflow_id=>wwv_flow_imp.id(189286065451496194)
,p_label=>'Document Type'
,p_static_id=>'DOCUMENT_TYPE'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(189286829276496202)
,p_workflow_id=>wwv_flow_imp.id(189286065451496194)
,p_label=>'Document ID'
,p_static_id=>'DOCUMENT_ID'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_is_required=>true
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(189286924907496203)
,p_workflow_id=>wwv_flow_imp.id(189286065451496194)
,p_label=>'Employee ID'
,p_static_id=>'EMPLOYEE_ID'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_is_required=>false
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(189286996600496204)
,p_workflow_id=>wwv_flow_imp.id(189286065451496194)
,p_label=>'Employee Name'
,p_static_id=>'EMPLOYEE_NAME'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_workflow_version(
 p_id=>wwv_flow_imp.id(73536696730595306)
,p_workflow_id=>wwv_flow_imp.id(189286065451496194)
,p_version=>'1.0_1_1'
,p_state=>'ACTIVE'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(74096985461671908)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_label=>'Approver'
,p_static_id=>'APPROVER'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(74097064489671909)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_label=>'Current Approval Level'
,p_static_id=>'CURRENT_APPROVAL_LEVEL'
,p_direction=>'VARIABLE'
,p_data_type=>'NUMBER'
,p_value_type=>'STATIC'
,p_value=>'1'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(74097177246671910)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_label=>'Max Approval Level'
,p_static_id=>'MAX_APPROVAL_LEVEL'
,p_direction=>'VARIABLE'
,p_data_type=>'NUMBER'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(74097223553671911)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_label=>'TaskOutcome'
,p_static_id=>'TASK_OUTCOME'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73536752617595307)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'Start'
,p_static_id=>'New'
,p_display_sequence=>10
,p_activity_type=>'NATIVE_WORKFLOW_START'
,p_diagram=>'{"position":{"x":730,"y":720},"z":1}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73536928580595309)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'Get document approval level'
,p_static_id=>'New_1'
,p_display_sequence=>20
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'PLSQL_PROCEDURE_FUNCTION'
,p_attribute_05=>'GET_APPROVAL_LEVEL_DOC'
,p_diagram=>'{"position":{"x":650,"y":870},"z":2}'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(73537151102595311)
,p_workflow_activity_id=>wwv_flow_imp.id(73536928580595309)
,p_direction=>'OUT'
,p_data_type=>'NUMBER'
,p_ignore_output=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'MAX_APPROVAL_LEVEL'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(73537220653595312)
,p_workflow_activity_id=>wwv_flow_imp.id(73536928580595309)
,p_name=>'p_doc_type'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'ITEM'
,p_value=>'DOCUMENT_TYPE'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73537375347595313)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'Check document approval type'
,p_static_id=>'New_3'
,p_display_sequence=>30
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'TRUE_FALSE_CHECK'
,p_attribute_03=>'WF_VARIABLE_EQ_VAL'
,p_attribute_08=>'MAX_APPROVAL_LEVEL'
,p_attribute_14=>'0'
,p_diagram=>'{"position":{"x":650,"y":990},"z":3}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73537614625595316)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'Generate vectors'
,p_static_id=>'New_2'
,p_display_sequence=>40
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'PLSQL_PROCEDURE_FUNCTION'
,p_attribute_05=>'GENERATE_DOC_EMBEDDINGS'
,p_diagram=>'{"position":{"x":360,"y":1100},"z":4}'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(73537801432595318)
,p_workflow_activity_id=>wwv_flow_imp.id(73537614625595316)
,p_name=>'p_doc_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'DOCUMENT_ID'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73537901742595319)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'Notify'
,p_static_id=>'New_4'
,p_display_sequence=>50
,p_activity_type=>'NATIVE_SEND_PUSH_NOTIFICATION'
,p_attribute_01=>'&EMPLOYEE_NAME.'
,p_attribute_02=>'Document ready'
,p_attribute_03=>'You document is ready.'
,p_diagram=>'{"position":{"x":360,"y":1290},"z":5}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73538367042595323)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'end_autoapproved'
,p_static_id=>'New_6'
,p_display_sequence=>70
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'COMPLETED'
,p_diagram=>'{"position":{"x":440,"y":1480},"z":7}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73538449875595324)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'Invoke approval task'
,p_static_id=>'New_7'
,p_display_sequence=>80
,p_activity_type=>'NATIVE_CREATE_TASK'
,p_attribute_01=>wwv_flow_imp.id(189200317119571032)
,p_attribute_02=>'Document approval request'
,p_attribute_05=>'DOCUMENT_ID'
,p_attribute_08=>'TASK_OUTCOME'
,p_attribute_09=>'APPROVER'
,p_diagram=>'{"position":{"x":650,"y":1140},"z":8}'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(73538631558595326)
,p_workflow_activity_id=>wwv_flow_imp.id(73538449875595324)
,p_task_def_param_id=>wwv_flow_imp.id(189278071559558067)
,p_value_type=>'ITEM'
,p_value=>'CURRENT_APPROVAL_LEVEL'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(73538726436595327)
,p_workflow_activity_id=>wwv_flow_imp.id(73538449875595324)
,p_task_def_param_id=>wwv_flow_imp.id(189331922459167936)
,p_value_type=>'ITEM'
,p_value=>'DOCUMENT_ID'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(73538839288595328)
,p_workflow_activity_id=>wwv_flow_imp.id(73538449875595324)
,p_task_def_param_id=>wwv_flow_imp.id(189278746153558065)
,p_value_type=>'ITEM'
,p_value=>'DOCUMENT_TYPE'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(73538927473595329)
,p_workflow_activity_id=>wwv_flow_imp.id(73538449875595324)
,p_task_def_param_id=>wwv_flow_imp.id(189546239628995347)
,p_value_type=>'ITEM'
,p_value=>'EMPLOYEE_ID'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(73539061110595330)
,p_workflow_activity_id=>wwv_flow_imp.id(73538449875595324)
,p_task_def_param_id=>wwv_flow_imp.id(189278373359558066)
,p_value_type=>'ITEM'
,p_value=>'EMPLOYEE_NAME'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73539109593595331)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'Update Status'
,p_static_id=>'New_8'
,p_display_sequence=>90
,p_activity_type=>'NATIVE_PLSQL'
,p_activity_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update DOCUMENT',
'set status = ''Rejected'',',
'approved_by = :APPROVER',
'where document_id = :DOCUMENT_ID;',
'commit;',
'end;'))
,p_activity_code_language=>'PLSQL'
,p_location=>'LOCAL'
,p_diagram=>'{"position":{"x":650,"y":1380},"z":9}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73539327955595333)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'Notify push'
,p_static_id=>'New_9'
,p_display_sequence=>100
,p_activity_type=>'NATIVE_SEND_PUSH_NOTIFICATION'
,p_attribute_01=>'&EMPLOYEE_NAME.'
,p_attribute_02=>'Document rejected!'
,p_attribute_03=>'Your document has been rejected!'
,p_diagram=>'{"position":{"x":650,"y":1480},"z":10}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73539792295595337)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'End - Reject'
,p_static_id=>'New_11'
,p_display_sequence=>120
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'COMPLETED'
,p_diagram=>'{"position":{"x":730,"y":1680},"z":12}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73539897528595338)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'Document Approved?'
,p_static_id=>'New_12'
,p_display_sequence=>130
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'TRUE_FALSE_CHECK'
,p_attribute_03=>'WF_VARIABLE_EQ_VAL'
,p_attribute_08=>'TASK_OUTCOME'
,p_attribute_14=>'APPROVED'
,p_diagram=>'{"position":{"x":650,"y":1260},"z":13}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73540116234595341)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'All levels of approval completed?'
,p_static_id=>'New_13'
,p_display_sequence=>140
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'CHECK_WF_VARIABLE'
,p_attribute_10=>'CURRENT_APPROVAL_LEVEL'
,p_diagram=>'{"position":{"x":1000,"y":1260},"z":14}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73540412501595344)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'Increment Approval Level'
,p_static_id=>'New_14'
,p_display_sequence=>150
,p_activity_type=>'NATIVE_PLSQL'
,p_activity_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':CURRENT_APPROVAL_LEVEL := :CURRENT_APPROVAL_LEVEL + 1;',
'end;'))
,p_activity_code_language=>'PLSQL'
,p_location=>'LOCAL'
,p_diagram=>'{"position":{"x":1000,"y":1140},"z":15}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73540689748595346)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'embedings'
,p_static_id=>'New_15'
,p_display_sequence=>160
,p_activity_type=>'NATIVE_INVOKE_API'
,p_attribute_01=>'PLSQL_PROCEDURE_FUNCTION'
,p_attribute_05=>'GENERATE_DOC_EMBEDDINGS'
,p_diagram=>'{"position":{"x":1000,"y":1380},"z":16}'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(73540828467595348)
,p_workflow_activity_id=>wwv_flow_imp.id(73540689748595346)
,p_name=>'p_doc_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'DOCUMENT_ID'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(73540979925595349)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'update status'
,p_static_id=>'New_16'
,p_display_sequence=>170
,p_activity_type=>'NATIVE_PLSQL'
,p_activity_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update DOCUMENT',
'set status = ''Approved'',',
'approved_by = :APPROVER',
'where document_id = :DOCUMENT_ID;',
'commit;',
'end;'))
,p_activity_code_language=>'PLSQL'
,p_location=>'LOCAL'
,p_diagram=>'{"position":{"x":1000,"y":1490},"z":17}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(74096207380671901)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'approved push notify'
,p_static_id=>'New_17'
,p_display_sequence=>180
,p_activity_type=>'NATIVE_SEND_PUSH_NOTIFICATION'
,p_attribute_01=>'&EMPLOYEE_NAME.'
,p_attribute_02=>'Document approved.'
,p_attribute_03=>'Your document has been approved.'
,p_diagram=>'{"position":{"x":1000,"y":1590},"z":18}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(74096641313671905)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'end_approved'
,p_static_id=>'New_19'
,p_display_sequence=>200
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'COMPLETED'
,p_diagram=>'{"position":{"x":1090,"y":1730},"z":20}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(74096772771671906)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_name=>'Update Status Public Doc'
,p_static_id=>'New_20'
,p_display_sequence=>210
,p_activity_type=>'NATIVE_PLSQL'
,p_activity_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update DOCUMENT',
'set status = ''Approved'',',
'approved_by = ''Automatically Approved''',
'where document_id = :DOCUMENT_ID;',
'commit;',
'end;'))
,p_activity_code_language=>'PLSQL'
,p_location=>'LOCAL'
,p_diagram=>'{"position":{"x":360,"y":1190},"z":21}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73536821709595308)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(73536752617595307)
,p_to_activity_id=>wwv_flow_imp.id(73536928580595309)
,p_diagram=>'{"source":{},"target":{},"vertices":[],"z":22,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73537058832595310)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(73536928580595309)
,p_to_activity_id=>wwv_flow_imp.id(73537375347595313)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50.003%","dy":"16.679%","rotate":true}},"vertices":[],"z":23,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73537411796595314)
,p_name=>'No Approval Needed'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(73537375347595313)
,p_to_activity_id=>wwv_flow_imp.id(73537614625595316)
,p_condition_expr1=>'TRUE'
,p_diagram=>'{"source":{"name":"left","args":{"dx":10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"81.818%","dy":"0%","rotate":true}},"vertices":[],"z":37,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73537511669595315)
,p_name=>'Approval Needed'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(73537375347595313)
,p_to_activity_id=>wwv_flow_imp.id(73538449875595324)
,p_condition_expr1=>'FALSE'
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"0%","rotate":true}},"vertices":[],"z":38,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73537776026595317)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(73537614625595316)
,p_to_activity_id=>wwv_flow_imp.id(74096772771671906)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{},"vertices":[],"z":24,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73538065116595320)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(73537901742595319)
,p_to_activity_id=>wwv_flow_imp.id(73538367042595323)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"0%","rotate":true}},"vertices":[],"z":25,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73538590616595325)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(73538449875595324)
,p_to_activity_id=>wwv_flow_imp.id(73539897528595338)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{},"vertices":[],"z":27,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73539274540595332)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(73539109593595331)
,p_to_activity_id=>wwv_flow_imp.id(73539327955595333)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"16.667%","rotate":true}},"vertices":[],"z":28,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73539442209595334)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(73539327955595333)
,p_to_activity_id=>wwv_flow_imp.id(73539792295595337)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"16.667%","rotate":true}},"vertices":[],"z":29,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73539967468595339)
,p_name=>'No'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(73539897528595338)
,p_to_activity_id=>wwv_flow_imp.id(73539109593595331)
,p_condition_expr1=>'FALSE'
,p_diagram=>'{"source":{},"target":{"name":"topLeft","args":{"dx":"50%","dy":"16.667%","rotate":true}},"vertices":[],"z":39,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73540075813595340)
,p_name=>'Yes'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(73539897528595338)
,p_to_activity_id=>wwv_flow_imp.id(73540116234595341)
,p_condition_expr1=>'TRUE'
,p_diagram=>'{"source":{"name":"right","args":{"dx":-10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"9.095%","dy":"50%","rotate":true}},"vertices":[],"z":40,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73540201522595342)
,p_name=>'No'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(73540116234595341)
,p_to_activity_id=>wwv_flow_imp.id(73540412501595344)
,p_condition_type=>'LESS_THAN'
,p_condition_expr1=>'&MAX_APPROVAL_LEVEL.'
,p_diagram=>'{"source":{"name":"top","args":{"dx":0,"dy":10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"83.333%","rotate":true}},"vertices":[],"z":41,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73540313302595343)
,p_name=>'Yes'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(73540116234595341)
,p_to_activity_id=>wwv_flow_imp.id(73540689748595346)
,p_condition_type=>'EQUALS'
,p_condition_expr1=>'&MAX_APPROVAL_LEVEL.'
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"16.667%","rotate":true}},"vertices":[],"z":42,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73540558911595345)
,p_name=>'Invoke next level of approval'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(73540412501595344)
,p_to_activity_id=>wwv_flow_imp.id(73538449875595324)
,p_diagram=>'{"source":{"name":"left","args":{"dx":10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"100%","dy":"50%","rotate":true}},"vertices":[],"z":31,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73540731715595347)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(73540689748595346)
,p_to_activity_id=>wwv_flow_imp.id(73540979925595349)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"0%","rotate":true}},"vertices":[],"z":32,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(73541052029595350)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(73540979925595349)
,p_to_activity_id=>wwv_flow_imp.id(74096207380671901)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"0%","rotate":true}},"vertices":[],"z":33,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(74096361173671902)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(74096207380671901)
,p_to_activity_id=>wwv_flow_imp.id(74096641313671905)
,p_diagram=>'{"source":{"name":"topLeft","args":{"dx":"54.545%","dy":"100%","rotate":true}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"0%","rotate":true}},"vertices":[],"z":34,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(74096832916671907)
,p_name=>'Update Status Public Doc'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(74096772771671906)
,p_to_activity_id=>wwv_flow_imp.id(73537901742595319)
,p_diagram=>'{"source":{},"target":{"name":"topLeft","args":{"dx":"50%","dy":"16.667%","rotate":true}},"vertices":[],"z":36,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_participant(
 p_id=>wwv_flow_imp.id(74097357863671912)
,p_workflow_version_id=>wwv_flow_imp.id(73536696730595306)
,p_participant_type=>'OWNER'
,p_name=>'Owner'
,p_identity_type=>'USER'
,p_value_type=>'STATIC'
,p_value=>'KING'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(188986220498789328)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>45849902140961
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189000141011789206)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189573446908845832)
,p_list_item_display_sequence=>55
,p_list_item_link_text=>'Task Pages'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tasks-alt'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189335217469104996)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'My Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tasks'
,p_parent_list_item_id=>wwv_flow_imp.id(189573446908845832)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189372935152102780)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Tasks Initiated by Me'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tasks'
,p_parent_list_item_id=>wwv_flow_imp.id(189573446908845832)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189449690396095793)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Workflow Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-workflow'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189394936523095980)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Workflows Initiated By Me'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-workflow'
,p_parent_list_item_id=>wwv_flow_imp.id(189449690396095793)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189478228491092512)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'My Workflows'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-workflow'
,p_parent_list_item_id=>wwv_flow_imp.id(189449690396095793)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189577977122806850)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Document Search'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-search'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189119970905788215)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(188991810190789265)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189154786402758056)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Document Types'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-text-o'
,p_parent_list_item_id=>wwv_flow_imp.id(189119970905788215)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(193110133153439207)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(189119970905788215)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15,16'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(188987430085789301)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>45815491689200
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189118091279788222)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189118480009788221)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189139010470787997)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(189118480009788221)
,p_required_patch=>wwv_flow_imp.id(189132592902788025)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189118964880788219)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(189118480009788221)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189119345239788217)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(189118480009788221)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(189121053769788207)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(188989991736789273)
,p_version_scn=>45815491688047
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189121439648788205)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189121880431788204)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&APP_SESSION.::&DEBUG.:10011::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189122246720788203)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10012:&APP_SESSION.::&DEBUG.:10012::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189122600426788201)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10013:&APP_SESSION.::&DEBUG.:10013::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189123014869788200)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10014:&APP_SESSION.::&DEBUG.:RR,10014::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189123474437788198)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10015:&APP_SESSION.::&DEBUG.:RR,10015::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(189123757602788197)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(188989893141789273)
,p_version_scn=>45815491688265
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189124165773788196)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189124555476788194)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(189136202036788009)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(189132592902788025)
,p_version_scn=>45815491689149
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(189136608700788008)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(189132374016788026)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/apex_data_pkg_departments_678462_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B03041400000808007944B35C124E74BB480000007E000000100000004445504152544D454E54532E6A736F6EABE652CA2C49CD2D56B28AE6AAE6524A492D482C2AC94DCD2B89CF4C51B232E4D251CA4BCC4D55B252F20852E2AAE5D2C154638450E3';
wwv_flow_imp.g_varchar2_table(2) := '1982438D31424D70624E6A3148592C100300504B03041400000808007944B35CB78CF76A0901000035020000180000004445504152544D454E54535F70726F66696C652E6A736F6E8591DD4BC33014C5DFF757843C37B20F1FC4B7C22A086E88D4279511';
wwv_flow_imp.g_varchar2_table(3) := 'D25B1BC947C9CD1C32F6BF9BDC4A87B8E243033DE7FE0E2737C71963BCD50644FCEA81B35B765D6409B57B4F62F087ACB5D22014E32838E59B34902D5E3EAC96CFF5DD0D273F0102C1808A3E90AD23581CBC0E64A65068275A1D30FE8D57F899D38D4768';
wwv_flow_imp.g_varchar2_table(4) := '087FE503DBFAA052C7A0AD387429137BA9A86E0CFB1FD49BBD7598B4F4F7923EC68E7426CF494BC37C5D3D964FF5A6DAD6BBFB352593DFC828C7052CCF32286DA511AA93C365AE2E20C28023ECCCFD5A4003BD0CD1828B3BDD9C798DE203BD1BAF4FFAA9';
wwv_flow_imp.g_varchar2_table(5) := '98E8BD2D37D544DDC574A5C57C7EB913E5FE53259D6FB4D8543FBD467EABBC5CB69A9DBE01504B010214001400000808007944B35C124E74BB480000007E000000100000000000000000002000B681000000004445504152544D454E54532E6A736F6E50';
wwv_flow_imp.g_varchar2_table(6) := '4B010214001400000808007944B35CB78CF76A0901000035020000180000000000000000002000B681760000004445504152544D454E54535F70726F66696C652E6A736F6E504B0506000000000200020084000000B50100000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(74139722768838475)
,p_file_name=>'APEX$DATA$PKG/DEPARTMENTS$678462.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/apex_data_pkg_document_type_488894_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B03041400000808007944B35C631AEF99100100000804000012000000444F43554D454E545F545950452E6A736F6EC592CD4AC4301485F77D8A90752B69A63A98AD08B31144BB119521D3DCCE04D224E6A75006DFDD54C71985222E942E02E1E6DC9B';
wwv_flow_imp.g_varchar2_table(2) := '7CE7649F6119A0F3983D66FBB41798D12CC761B08019BE75B2E70170AA08F08D933648A3D341BD931E8D22645A244C133BD001397889D28147DC5A677AAE50EB4C875AE97C404A6A401DD77C0BEE6C9CF8295A2BE8416156A65AE320DD971E8129A11705';
wwv_flow_imp.g_varchar2_table(3) := '392FCACB9A2C594519ADF049B0DE0C4973F3505FDFD763395AF173DF41F0BDEF35CB0FCC8B13F395D1AD14094772F5E7E0886B81567793FC7446FEF24BE671A364F35B7261C0EBA748085D1E6D4890C3D1093FC94A6664AD4EAC2BB9DDA9A1F8D7C8F394';
wwv_flow_imp.g_varchar2_table(4) := 'F77BECD1DAF4013EAAE3884963163318F39CD61B504B03041400000808007944B35C644025438C0100002A0600001A000000444F43554D454E545F545950455F70726F66696C652E6A736F6EBD555D6BC230147DF757943C9B51AB6CC3B7CE7658A8B368';
wwv_flow_imp.g_varchar2_table(5) := '15648E92A5E9CC967E90444564FF7D692CBA310BA3130B0DF4DC7B2EE7DCDEDEEE5B860112CA0894BB8200A36FF4DA252468F6A6409E6F4B2C414C90F6319564388F55421902B6DFB566E1E33DD071458082308265CE75984A928A436C4550C912906630';
wwv_flow_imp.g_varchar2_table(6) := 'A15CC8DFE5B1D894D5592E48ACE94B70E02639C74A23A729DCAE544D5120ACE54ABEAEA8395BA79950987A7A56B761ECF5A962194A7532F01C5D4E833192E8E8DA3AC104D314318857E8E0E0E60C05329269DA89F7D3757C225101DF459E1D8D6AFCB35D';
wwv_flow_imp.g_varchar2_table(7) := 'A3305C046E8DC64EBD8ECEAD699AE7A5687643318E3B1D4CBC20F4C64F17D5141381392D24554A1A4AB38360329EDB7EE4BB73D7BFCE5B4545C1F30D6211231BC29A2A1F4C5C3B74EB06B15B2FEBEEBC2ACC0992E4DBC0A96F254512A6487CE88485BAE0';
wwv_flow_imp.g_varchar2_table(8) := '68041D6709C225180EAD5E7FE4F5A7D37F3A881E160DA6C2B46A86A2F211BDEE9AEA9A05CE453BBB2EE22B77B67270E1CE563EFED05975BEE86D5A20AE5670B9A085FE29B43EBF00504B010214001400000808007944B35C631AEF991001000008040000';
wwv_flow_imp.g_varchar2_table(9) := '120000000000000000002000B68100000000444F43554D454E545F545950452E6A736F6E504B010214001400000808007944B35C644025438C0100002A0600001A0000000000000000002000B68140010000444F43554D454E545F545950455F70726F66';
wwv_flow_imp.g_varchar2_table(10) := '696C652E6A736F6E504B0506000000000200020088000000040300000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(74139919179838478)
,p_file_name=>'APEX$DATA$PKG/DOCUMENT_TYPE$488894.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/apex_data_pkg_employees_753351_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B03041400000808007944B35C54641C1012010000760300000E000000454D504C4F594545532E6A736F6EB5924D4BC3401086EFFB2BC29E1B4902B6242785622D1211C94544C260C6BA76BFD8AE6228FE77276DAC353645A185EC61DF7D788787C992';
wwv_flow_imp.g_varchar2_table(2) := '71E1512D7876CF968CA3B2D2D488A5A87896B0017F126EE14B0D0A79C6CFF33B4E99844DA45FA5A40415084900A8FA0CDF814AF0E4D1A806B6CF466F836DBFAF6DD37841715008AAA2C70A2D38AF50FBCD786764838DC14330C63794C6A26B58051A66E8';
wwv_flow_imp.g_varchar2_table(3) := '56604AF71723B4D0B3B202FF35ED830DBA46C3AED10DFA755FBF936D90C359C5DF5697B741BED6E81A8D7E19F1244A4EC3380AE3A488A26CF5F15D8AA3AEE2D5F47AB2DF704E638E2238418D0E649F655BFEB7D5A55DAF5CCC71BF9722E25F5E6DDAFF1F';
wwv_flow_imp.g_varchar2_table(4) := '4E8B3E97E1CE8DD1BAE2304E7F6CEC81CE27504B03041400000808007944B35C3A26C0B8B30100004807000016000000454D504C4F594545535F70726F66696C652E6A736F6EBD95DF4BC33010C7DFF757943E2FA25351F65668B755DA6E6CF5613829A1';
wwv_flow_imp.g_varchar2_table(5) := 'BDB9687E94242A63EC7F37CDC6A6B822B4C34203BDBBEFF573C785DB741CC75D120A48AF4B709DBE73D3AD4C8AF0176394E2B3B22D3155D03D8402CF4561022A97EB45D7BDC77470EF5ABF11200514722DA475130D4CED7C2BC0954A21C2D19248A57FA7';
wwv_flow_imp.g_varchar2_table(6) := 'CFD547959D0A0585952FDC9D7629646E182561E8736572AA12E71657CBF7BD54D077C695B199AF27F33ACEC69EC6C731B3C16E104FA2F13C08B2D0B779ADB7C01A1FCAEF1DCD90138629CA577857CAC50909A2C0ADECA8FB513EB0928A3540468AA39A28';
wwv_flow_imp.g_varchar2_table(7) := 'F4AA043F946EEDDB6E0DF3209CCED22CF1E2A006F9AA1EEBEAF2F23497ED7F66FFD1102BF2CE4F45714BA820F6C2A801D06D0D10304C685398C9689C34E84EAF86A55C09DEA231FBC14FE79333321DC6DBE668C8E607136F9AC64192FEDBB52CA0C45233';
wwv_flow_imp.g_varchar2_table(8) := 'E0BAC5C59C8EA3730EBF14B4710B632FF186C1F4DFFAC730C72F205B34EF611C266132CC7C2FAD6BE2753DD7DD69AC5741B8D9309989FFD64AB33B18D68861F566A3E6E641718C7C7FE1A60B7734EADDF4E3B03F9BFD558B399FEDAE31C3631654B5BE94';
wwv_flow_imp.g_varchar2_table(9) := '5D999DED17504B010214001400000808007944B35C54641C1012010000760300000E0000000000000000002000B68100000000454D504C4F594545532E6A736F6E504B010214001400000808007944B35C3A26C0B8B30100004807000016000000000000';
wwv_flow_imp.g_varchar2_table(10) := '0000002000B6813E010000454D504C4F594545535F70726F66696C652E6A736F6E504B0506000000000200020080000000250300000000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(74140265384838481)
,p_file_name=>'APEX$DATA$PKG/EMPLOYEES$753351.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000145494441547801EC944B4A03411086FF99454C88A26E04155D88513144890862407163B6EA5EBC81DEC23B78002FE0362B41100435246142C803922BE4357990';
wwv_flow_imp.g_varchar2_table(2) := '07D3A1218B84AE9A4CC8A61B6A6A687EAABEFEA96EF3E5F56DB0C830B1E0A501B403DA01B20301B38F58647F6AACF800BB59675F6A3240347C80F8D5F9D4F02DF911DADD6243900194471B003BDB9B2388464D299702CF00D65783C8972AB05B1D6CAC2D';
wwv_flow_imp.g_varchar2_table(3) := 'CBFACAEC19C0E3DD2D9E9FEE45448E42CAC652301380552CCB3AAEB36B803FAB806AAD211A7FFEA490F8FA8593C506E3C30678FF48209D2BA1DDEEE2321A66B49A2C65033CC4AF01C340ECEC1872DD5C9C8AEBE964B947CD6C8060C08F93C33D6A7DA58E';
wwv_flow_imp.g_varchar2_table(4) := '0D305E510FA11EC2F17970FB4F1EC2A495178F8DF3E0A8E23F5B20F39001ECBE89EF4C9114AD9EE13D00B9225348768059972CD700DA81B93BA09AC621000000FFFFDC26A917000000064944415403008EC5DE81A984A5EA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(188988491232789284)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000CEA494441547801EC9D0B70545719C7BFB39BC0E6456878B6686B5B2250B4B5432AAF22052930B5A5CA8C481D47D00E790009E028B4245322928C628B245BC843';
wwv_flow_imp.g_varchar2_table(2) := 'CA43473B14B4522C3314C7411CA0B1225079B68014CAAB05F27EEFEEF19CBB1BD8249BCDEE39F7DEBD7BF6BB73BFFB3EE77CDFFFFBEDD973EF5E880D7042052414408024C4C3A20008105220A5000224251F16468090012905102029F9B03002840C4829';
wwv_flow_imp.g_varchar2_table(3) := '200C9054AB585819051020655219994010A0C8E8AE4CAB089032A98C4C200850647457A65504489954462610042832BA2BD3AAF9008520DD8F7FF546CAC2B51B86E6AEAD78387775F963796B2A272C292A7F3A774DF973B1603C561E338F9D6BC0B5E09A';
wwv_flow_imp.g_varchar2_table(4) := '84209DE9974416204AC9E2E28A9179C515F39614956DCC2BAAF8775E51795BB2ABBD2EAEDD7E8DB4D373C40EC780780E5280F708817762C178AC3C661E3BD7806BC135E1DAE47935DAC035E3DA01D3102238990A506EF1E6414B8A37CECA5D535694575C';
wwv_flow_imp.g_varchar2_table(5) := 'B62FAFB8A2DA46E96926C2560A2407808E615AC433C339B0024C1B4DA3855C33AE1DD750D3B2A8620DEF9D97156E4A0B5CD498A3E601C43E29C4D33681AD561042560225D35848A9CC70965320D5AB25CDB71158E1E9D33E81C145E4AA0CBDB4E1006556';
wwv_flow_imp.g_varchar2_table(6) := '54C42F292E5BC03E296780C05F00C804C0C9100528C044F601DDCDB43EBDA4B8FC45AEBD210DF9556A2840CBD6940D73DC84C32CA84AD6E69799E16C8E022328854D0937E9A15C366C30B249C300CA2D2E7FC44D48956F5C63640C58770F0AB01E2983D0';
wwv_flow_imp.g_varchar2_table(7) := 'B6C3CB56578EEEE112E9C3860094B7A6E24942E110F36E18339D66AC46508187DD76CFC1DCE2CAC982E58316D31D20DEF300A17B59AB3840662258644E25D4B3C7889E485780320B2B1259CFB3838996C80C676B2990E88AF36CE739D2D32D5D0172C479';
wwv_flow_imp.g_varchar2_table(8) := '3632E71E6186B30515601FEED1BE1CE9E69D6E00E51695CD0742E6E9E61956648C022C475AAE74AA5D178096AD5B974080ACD3C927ACC6600558AE5ECB64C30D3D9AD10520775322EF79EED1C321ACC31405D21C71F4877AB4240F10A50C68580AD69DD0';
wwv_flow_imp.g_varchar2_table(9) := 'B3400A1092A7C74F1ED200E5FDB26206F36F04339CA34A013ACA973B29AFA501A21EC0DE07A273D223775200CD2FDCE220004F47A77CE835CF1DBF019251420AA0FEF69671AC71A93A58799C23A7808D36268C95695E2AF91EBB8D0324D33E968DB002B2';
wwv_flow_imp.g_varchar2_table(10) := '399402888DE211A0080320DD3CA55239140688F2DB778027A503B0700531E25A64005AF4EB8D4398C00398E11CDD0A0C5954FCBA701E857BA0BE9E78E146A35B6FF5BCEF63EB3354342A61803C14F0950D51D52D564E26971200B910208B8120EA8E878A';
wwv_flow_imp.g_varchar2_table(11) := 'E7521820426C09A20E63396B2940A82D4ED4236180287E85896A6EBD72368807C1491820C01EA867C9A3EC8C4C67200C90DDE316A6D6287D2953A2A9BE0E6A6FDF849A9B374CB3BAEA5BD0D6DA625458C6D72BD11908034481B88C8F2CBC16AA3FBF0E0D';
wwv_flow_imp.g_varchar2_table(12) := '7535D0DADCC412DA6A9AB5343532583F8386DAEAF01C56E06A6180AC167B735303B8DADB6164FA4350F8934CD858B4DC707BF07EEF3F7B9B367922F44B4D81A6867AA88F3188940188C3C3A19E3E792C0C1ED09F6F1A6ED4D7425252228C1BF338F4EB97';
wwv_flow_imp.g_varchar2_table(13) := '02CD3106913200B11F76B574A6B0646A1B662C08B9D34A82A32F8CCBF083A8E6F69D732A6FA8039005B2D409A2C68698F83A43807406EF2E44C9025F673A3B63427508900122C7124408900100F12A131C0EDF9848ED9E0801E2D936C862012204C82078';
wwv_flow_imp.g_varchar2_table(14) := '3AAABD0B91F716BFB1BEB6E394126B0448228DC989DE17123C6E77D05A3844E39FE0B7F8C9D05857AB3DF00C5A208A4E2A07D0DD2733C667E1FE2F785FE43B7EEA0C5457D7426D6D7D8FD6DAD206A3D2876B4EB5B5346B6B1516CA01646652A68C7D1C92';
wwv_flow_imp.g_varchar2_table(15) := '9212E0D2E5AB70E0F0BF60FFC1F7835AD591639A7B6EB7EE3F236AF54662810049A89E94E080554B17C0EC67BE09DF9E39B5579B32F1EB12AD59B3A8720075FC3E6596DCC9890E9836710C4C9F94D1AB4DCCF8AA596E99D68E720099A61C36A429800069';
wwv_flow_imp.g_varchar2_table(16) := '32E0425401044854392CA72980006932E0425401E500D2EB39D06FDFDC0D255BDE12D5356ACAC93AAA1C40B282B8D853E50DDBFE04474F9C864487F749B37F9D576EDC840B9F5E0B6AFC1AFF322A6F23407ED9E5F054FE61179CFCE83C3C367A042C78E1';
wwv_flow_imp.g_varchar2_table(17) := '39BFB300273FFE048A4A37C3AB65BF0F6AFC9A53E72F752AABEA0E02E497D94DDBFF0A27CE9E8347193C59DF7FDEEF8C7773D8D001BD3E2CEC78A078DFE001DE428A2F950348E441A2DBE381F23FEE820F4F9E85AF8C4A87CC1766054C7BFF94E45E1F16';
wwv_flow_imp.g_varchar2_table(18) := '763C50EC9F9214B00ED50E2A0750A041746B7B3BBCBDEF9FD0DCDA16307F5B76ECD1E0E15F5B0B7FF01DB0F9BD2C1FB0001EBCA3807200DD89CC6FE3DCC5ABB06FFF61706EDD011C26BF53F0C68E77E13F1F9EEAF16BCBFF5ADCEEAE404C00343AFD01F8';
wwv_flow_imp.g_varchar2_table(19) := 'C6F80CB878E90A946E7EEB0E445B76EE8123C74E6A03E6EC00631EE832DDACAE85CA37DF81D7B7ED0C6AFC9A5B35755D4A2BB6EB0B272600E2B1CE7D762AF05FC3FFC720726EDD09DBFEBC173E387A82F53C2321D0809997E96A8DCDAD708ADDA19DFAE8';
wwv_flow_imp.g_varchar2_table(20) := '025BF76C673EBE004D2DAD5D8B2BB9AF1C40C106D1DF7DE6299836793C5CB87819AA8E1CF70D983BDFAA07CBF203F70D86F5AB96F5FA4FA6D7BDB214BE387450B0AA9439A71C408106D1FED99A3D7D123C3F730A4C9E90013860F657466C5B398082F540';
wwv_flow_imp.g_varchar2_table(21) := '1D12CD98F4047CEF5B533B76712DA180720049688145051440800444C32277154080EE6A815B020A840F90402358445D05102075736B4A6408902932ABDB887200119D72856F248626A47200851676CF57F197CAF08DC49EF5E97A0601F25384C3836F24';
wwv_flow_imp.g_varchar2_table(22) := 'FA0912C22602E42712BE91E82746889B260214A247929785F25346D726F08DC4AE8A84BEAF1C408106D1FC25327C23317428C2B952398002057F0EDF480C248B2EC76202207C235117560256121300F1C8F18D44AE82FEA61C40C106D1F8462202D4AB02';
wwv_flow_imp.g_varchar2_table(23) := '8106D1FE85F08D447F35E4B7A3A1070A2BCA603D504745F846628712F26BE5009297046B08470104281CB5F0DA6E0A2040DD24C103E128800085A3165EDB4D01650022C47BFF55D7D0D42D48AB1CA8AD6FD05C21C4EBABB613E50B6500B2C7C569A9D877';
wwv_flow_imp.g_varchar2_table(24) := 'A00A3EABB6DE1F34B9F6F96D788FF9C69DB4C75BEE2FA673B7844C19801C89C960B3D980FFBBF4C2572B6061FE5AB092FD62FD26387BEEA2E6A323419DFF3B48198008219036F85E48EA970A7D1312A04FDFBE96B2BE09899A6FDC4742F02B0C3C042C37';
wwv_flow_imp.g_varchar2_table(25) := 'D8B0D9ED9094920AA96983A0FFC02196B2D4B4819A6F36BB5DE8ABC2D042D423FCE783847B20F621B21C40868AAC70E532B91406884A50AB702EA23234995C0A03642371D80345252EDD9D96C9A50440D61B037597068F84A2804D623C2B0C105097F0C0';
wwv_flow_imp.g_varchar2_table(26) := '2B94A0227A4DAC352E914B61805AED14BFC214014D2697C200B952E36E31FD5A98E11CDD0AB4F8722914853040955959ED00B44AA8552C64210568953797622E0903E46B6EBF6F8DABE855402A875200D93C20D538E014710564732805508DDBF13E5300';
wwv_flow_imp.g_varchar2_table(27) := 'C7414C84289D5B7C3914765F0AA0AD853F6AA1047609B7AE5CC1E80A88E78EE750C66B2980B4863D9EF5DA1A17D1A7800EB99306C859B0907F8DE1DD58F4E153E5CB9D94E7D200795BA7D80B798588A2A53E39D305A0B4F61B3B99729F32C3393A14B8E2';
wwv_flow_imp.g_varchar2_table(28) := 'CB99B4B7BA00545858E8020A8BA5BDC10A4C518052C8D172A6436BBA00C4FD282DC8E67763257C1BCDD20A94380BB277EBE5A16E0071875A06929FB19F373EE0DB68612960CAC5ECB67DBF3747FA35A72B40FC37159B0DE630F76A98E16C2D056ED8A87D';
wwv_flow_imp.g_varchar2_table(29) := '2ECF919E6EE90A10776CFDCB3917A98DF23FC67591EFA3594101F209B5C38C92FC0537F4F6467780B883CE97738EBA892B0308FD1BDF478B9C0284C0DFDDA47D8CF3A5ECE34678610840DCD10D2B17DFBA367CC04CB65DCE0CE708284081BE767578DA74';
wwv_flow_imp.g_varchar2_table(30) := '9E0BA39A370C20EEF08E3973DCA5F9D939EC163F87EDB731C3D91C059A0985B9CEFC9C9FF21C18D9A4A1007538CE6EF1CBED943EC4EE02565180CB1DC771ADBB02EC612E29645AA79714646F0713265300E271FCA620E78A7365F6EAEBE9690F02A5B319';
wwv_flow_imp.g_varchar2_table(31) := '487BD971B6624B9C85156005DDCC765320CF5E4B4FFB52697ED6CFB9D6EC9829B369007544C3BBD4D2829CB79DF9D9335BECE41ED6D54E66E79632A8B60181FFB26D17339C032BE0E21A5180DF514A9651627BCA11177F0F1B26CC72E667BDCBB50D5CCC';
wwv_flow_imp.g_varchar2_table(32) := 'B8A3A603E41F4AE54B59B5ACAB3DC004286150CD2F5D99FD28DB8E6F888BEFE78A77DF4BE3C970EA86AF01B54D2400D3298559B1603C561E338F9D6BC0B5E09A706DB846ECC337CF5990B5DEB932F31F6B57BC580F119C220A504F716F66A26C5CBEE8BA';
wwv_flow_imp.g_varchar2_table(33) := '7379D679E72BD9C74B0B320F95E467EFE38FE063C178AC3C661E3BD7806BC135E949AF481EB72440911404DB0E4F0104283CBDF0EA2E0A20405D04C1DDF0144080C2D34B9DAB758A0401D249C858AD06018AD5CCEB143702A49390B15A0D0214AB99D729';
wwv_flow_imp.g_varchar2_table(34) := '6E0448272163B51A04285633AF53DC08904E42C64E359D2345803AEB817B612A80008529185EDE5981FF030000FFFF93EE0E45000000064944415403004347838A57D5A64E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(188988878142789280)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700000B61494441547801EC9D5B6C1C5719807F6C92D8B93451522A202584D228D4098D7A21A8CDCD5CEC943C405302120A0F3CF4C90F7D40A2420AE20522A408215124';
wwv_flow_imp.g_varchar2_table(2) := '848A7840422001158A696EB54393AAA169455B15298AB8234481A6761CC7B1BDB1939AF9B7DEE3F5D63B33BB7B667CCE9CAFF2EE9ED93373CE7FBEFF7CCECCACF7B4EDB1C33F9AE1018350E7409BF01F040226800001279FA18B2000B3206802081074FA';
wwv_flow_imp.g_varchar2_table(3) := '197CC002907C08700AC41C089C00FF02043E01421F3E02843E03021F3F02043E01421F3E0284380318B321800006058510092040885967CC8600021814144224800021669D311B0208605050088140ED1811A09608DB41114080A0D2CD606B0920402D11';
wwv_flow_imp.g_varchar2_table(4) := 'B68322800041A59BC1D61240805A226C074520200182CA2B834D490001528262B76212408062E69551A52480002941B15B3109204031F3CAA85212408094A0BCDE8DE0EB124080BA68A808810002849065C658970002D445434508041020842C33C6BA04';
wwv_flow_imp.g_varchar2_table(5) := '10A02E1A2A8A4020690C08904488FA4213408042A797C1251140802442D4179A0002143ABD0C2E8900022411A2BED0040A2C40A1F3C6E02C1140004B2069C64F0208E067DE88DA120104B0049266FC2480007EE68DA82D1140004B209D6A866052134080';
wwv_flow_imp.g_varchar2_table(6) := 'D4A8D8B1880410A08859654CA90920406A54EC5844020850C4AC32A6D4041020352A76F48140A331062D4069625C462FBF2943FF7B5D2EBDFE2FEF1E972FFD57C64647E4E68D1B8DE69DFD67090429C05B376FCA95A137E4EAC8B05C9F9C14DD9EE5E1D5';
wwv_flow_imp.g_varchar2_table(7) := 'CB8DE96999BC3626C36FFC47C6C746BD8ADD9560831460746448A6AE5F77250756E218BF3A1A093D64A5AD901A094E80C9896B323D3BF957AF5E258F1EDC2F470E3D263F3CFCB8178FEAC9B9F793BB65C3FAF799B74A13139104C3669B423281E004D053';
wwv_flow_imp.g_varchar2_table(8) := '9E0A962F7DB657EEEDDA242B977754DEF2EAB5A36399DCB36DAB7C68C3ED266EBDAED1533BF306855802051220769CA6727AAA64CA9B3FBCC1947D2EDCBDE5AE0524884E8766667C1E562EB10727C0CC5B739362D99225B940CEBC937789BC538209D16B';
wwv_flow_imp.g_varchar2_table(9) := '1D418258FCC109104BC3E7CA0524D0D33D24884F2A02C4F3F1AB16091ACE1702348CCCF10390A0A104214043B81CDDB9362C24A82552771B01EAA2F1BCA222C107E76E91EA35C195CBDC1DAACE2C0254D3285A5925E88A6E91564930559A1424984B3402';
wwv_flow_imp.g_varchar2_table(10) := 'CCB12866090962F38A00B1780A5289047513890075D114ACA2AE046F8ACF1F96B59A25046895A04FC7CF4A70C7C60F98A8A74AA5E89A205C0910C04C85400A91041FEDFA88D44A3076F54A2000E60F1301E6F3707E4BFF84BB12E44C0B7FE7532B817EB1';
wwv_flow_imp.g_varchar2_table(11) := '667AAA58DF91A8708A7B4580383A0ED66DBCFDFD26AAA1E111536EA6A0126CA86A6F727CAC9966BC3E06013C4BDFCEEDDB4CC4AF5DB828978686A36BD8B9BF703595290B9B37DD61F69C9E9E32E5500A1E0B104A8AE68F73CB9D1B65DB96CDE537C7C727';
wwv_flow_imp.g_varchar2_table(12) := 'E485975E91FE138372F4F840538F81679F2FB7A54F37A7C3FB723D0268E63D7B1C7C78AF6CBD6B936751BB192E02B89997D8A8F42B9C7D5FDE2F8F1E7C44B6DFB35556AF5A19BB3F95F50920407D36CED7DCDB75A77CE5C03EF9CED7FB5AFA42BFF303CD';
wwv_flow_imp.g_varchar2_table(13) := '304004C8102E4DBB4F0001DCCFD13B23E41D6B0410C01A4A1AF2910002F8983562B6460001ACA1A4211F0920808F5923666B0410C01A4A1ACA8380ED3E10C03651DAF38A00022C42BA4EFFFE65F9E6F79E94F3AF5D5C84DEE9B29A000254D3C8A17C74E0';
wwv_flow_imp.g_varchar2_table(14) := '9C3C75ECB40C0D5F895E0773E8912EE20820401C1DCB75FD83E7E4D49973A6D5DEDD0F9A3285C52180003971D7C97FF2D9AAC9DFFDA0F4ECBCAF6EEFCFFDE18FF2D56F7D5FFA0E1D69EAA1C76A1B753BA0A24CC02301CAF17AF97434FACD5F3BF91FEED9';
wwv_flow_imp.g_varchar2_table(15) := '193B96E383CF4BA9D4FC5714F5586D23B6132A0501329E04FDA7A3D39EAADFFC7BBB7748D2E4D790EEBFBB4B5F5A7ADCBF6D4B4BC787703002649865BDE03DF9BBB9D39E4FEF79403ED7B323558F07F675B7F427CEFAFF3C3BF0993DA9FA0A792704C828';
wwv_flow_imp.g_varchar2_table(16) := 'FB3AF9AB2F7875F23FD2BB2BA3DE68B6590208D02CB998E38E9D393FEF6E0F933F06D6225721404202CEBF7A41BEF1DD27E5F40BAF24ECF976B54EFE6303CFBDBD113DEB397FCBBFF9A376F8C98600022470FDE5D383727924FAD02A7AD55B9971BB1F3F';
wwv_flow_imp.g_varchar2_table(17) := 'F3A2544FFEDEE85667DA73FEB876A9CB8E000224B0ED8D2E5C2BBBE8AD4CBDAB53D9AE7E3D71F645797AE0AC794B277F9ABB3DE6000A8B42000112B03FB47BBB7C6AD7C7CD5E7A57474F73CC1B514127FF6F9FB13BF9F5432CFD30AB8F0FC222C2D9FD20';
wwv_flow_imp.g_varchar2_table(18) := '400AB69F7F68CF3C098E45E7F83AE9F5D013675F12DB935FDBD50FB1F4C32C2D37F3D063B58D668E0DE9180448996D9540EFE65476D749FF839FFE3A9AFC672A6F895EF0DA3AEDB98F0FC2CA5CB37E42800608EBDD9CEE1D1F33475CFCF3DF4D59E5B079';
wwv_flow_imp.g_varchar2_table(19) := 'C1FB053E08336CB32C20408374BFB8EF13522D811EAE935FE5D0320FBF08204013F952097ABA1F281FA9A73D4CFE320A2F9F10A0C9B4EDEFD955FE5B1D9BA73D4D86C2612D10408016E071A8FF041C16C07FB88CC07D0208E07E8E883043020890215C9A';
wwv_flow_imp.g_varchar2_table(20) := '769F0002B89F2322CC900002640897A6DD2780002EE6889872238000B9A1A623170920808B5921A6DC0820406EA8E9C8450208E062568829370208901BEAB98E581D7A8E456D29EF6D04C899B8AE17C4EAD039438FE90E0162E0D8AED25525AA17CB6275';
wwv_flow_imp.g_varchar2_table(21) := '68DB841B6F0F011A67D6D4113AF9755589CAC1BA6A04AB4357682CDE2B02E4C09ED5A17380DC641708D024B8B487E93A42A7581D3A2DAEDCF7734880DCC79E79877AC17B92D5A133E7DC4A0708D00ABD986375F2575FF0F2C5F918588B58850019C0D795';
wwv_flow_imp.g_varchar2_table(22) := 'E398FC1980CDA049044880CAEAD009803CAF46808404B23A740220CFAB11202181B9AC0E9D1003D5D911408004B6AC0E9D00C8F36A044891405D18B77A897456874E01CD935D102065A25402BD9559D99DD5A12B24FC7E458006F2A76B80562F8CCBEAD0';
wwv_flow_imp.g_varchar2_table(23) := '0DC073745704683031BA306EB5047AB8FECBA0726899476304167B6F046822032A01AB433701CEC14310A0C9A4B03A7493E01C3B0C011C4B08E1E44B0001F2E54D6F8E114000C7124238F912584401F21D28BD4160210208B01015DE0B86000204936A06';
wwv_flow_imp.g_varchar2_table(24) := 'BA10010458880AEF05430001824935035D88407002B4B5B71B0E13A5EBA69C6BC1A1CEC6274B269AB6F63936E6CD82178213E0DD4B969A94FEF59FFF36E5500B7FFAC71C836A36A1F0084E80CE152B4C6E7FD1FF8CBC7AF16F52FD5BD05416BC706DA224';
wwv_flow_imp.g_varchar2_table(25) := '2F5FF88BFCAAFF9419E9F2152B4D39944270022CEB582E4B3B3ACBF91D1D1D931FFFEC29F9DAB79F90BE4347827A3C7EF809F9C9CF7F23A363E36516CB3A3B0D97F21B813C052780E6F596356BA364776891474460694787AC5AB32E2A85F713A4006DED';
wwv_flow_imp.g_varchar2_table(26) := 'EDB266DD6D72CBDA75A2BFF9DADA03BCF88BC6BCAC73799981B2686BCB672AB8A65898A39ECD4247E70A59BDF63D72EB7BD7CB6DEB3704F5D031AF5E7BAB2883591C41BE042D40901967D0F30820C03C1C6C8446000142CB38E39D470001E6E160233402';
wwv_flow_imp.g_varchar2_table(27) := '390A101A5AC6EB030104F0214BC498190104C80C2D0DFB4000017CC812316646000132434BC33E1040803CB2441FCE12400067534360791040803C28D387B30410C0D9D410581E0410200FCAF4E12C0104703635C508CCF5512080EB1922BE4C092040A6';
wwv_flow_imp.g_varchar2_table(28) := '7869DC750208E07A86882F53020890295E1A779D0002B89E21E2CB94408602641A378D43C00A0104B08291467C258000BE668EB8AD1040002B1869C4570208E06BE688DB0A0104B082B1A61136BD218000DEA48A40B32080005950A54D6F08208037A922';
wwv_flow_imp.g_varchar2_table(29) := 'D02C082040165469D31B0208E04DAAFC08D4B72811C0B78C11AF5502086015278DF94600017CCB18F15A2580005671D2986F0410C0B78C11AF55021605B01A178D4120170208900B663A71950002B89A19E2CA850002E482994E5C258000AE6686B87221';
wwv_flow_imp.g_varchar2_table(30) := '80003630D386B70410C0DBD411B80D02086083226D784B0001BC4D1D81DB2080003628D286B70410C0DBD4B911B8EF51FC1F0000FFFF4241416800000006494441540300AFB98A5B54305F1F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(188989128762789278)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D0B7C54D59DC7FF6726134240798946908A10E802B6C5C54FB7EBA3B6DDCF5A773FBB95DA5D3EA5455B9F09AF402D8B42823B95445C97AE';
wwv_flow_imp.g_varchar2_table(2) := '900009B45B414AED474164BBFD58DB6AB54B5AF583455450C34B14050492288F3CE671F79C99CC9DC96392C9CCBDE79E7BCF2FB967EE63EE3DFFFFFFFB3FE7775F33777C843F1000016D094000B44D3D0207012208005A0108684C0002A071F211BADE04';
wwv_flow_imp.g_varchar2_table(3) := '44F410004101050434250001D034F1081B0404010880A08002029A128000689A7884AD378144F4108004098C4140430210000D938E904120410002902081310868480002A061D211B2DE0452A38700A4D2C0340868460002A059C2112E08A4128000A4D2';
wwv_flow_imp.g_varchar2_table(4) := 'C0340868460002A059C211AEDE04BA460F01E84A04F320A01101088046C946A820D0950004A02B11CC8380460420001A251BA1EA4DA0A7E821003D51C13210D0840004409344234C10E8890004A0272A5806029A10800068926884A9378174D14300D291';
wwv_flow_imp.g_varchar2_table(5) := 'C17210D0800004A04B92E757570F58187C74E89CE0DAA27B2B7F3666DEF29F5C51F648DD84F90FD54D5E50B5EEF373ABD6FF75D98A75D350D463207223722472257226722772287229722A72DB25DDDACF6A2900F397AF1FCF1BC92D0B2AEB7E545655F7';
wwv_flow_imp.g_varchar2_table(6) := '0C2FBBCBAA6A3FE463839DC96F8D060636E505FCC7C2ACFD7D9F2F728842D4C00CDA6B906F8F9F8CD728EADB85A21E03911B9123912B9133913B9143914B9153915B91E38E5CF39CD73D23DA80680B3F58B16E9C8E6AA085002CACDA30B5AC6AFDB2B2AA';
wwv_flow_imp.g_varchar2_table(7) := 'BA977839CB7CC601DE48B6198C1EE049BF9997A9446C14E14F1302B15CF39CD3CDA20D88B61089FA0E8AB6C1C5E1452E0815F31FAEFB825760F41687270520187C32BFECA1BA7F5C5055BB6E7E55DDFB518AEE26321EE420BECCCB205E3080404F0478DB';
wwv_flow_imp.g_varchar2_table(8) := '6037308396B308BDCE05E1102FAB78F93BD1A67ADAC0EDCB3C25003F58B1B69827EBA1C640E32132E8D706B1D98C688CDB9304FF1D237005B7BC8097DF8B3635BFB2B64AB4313EEF99C1F502C02FF00C9E5F557B07EFF8FF1789FAF7F3CC2CE165342F18';
wwv_flow_imp.g_varchar2_table(9) := '40C04A02A319634B451BE36DED8FBCCD7D5FB43D2B0D385197AB05A0ACB2F69BFE7CFFCB8CD87F7378D7F18201046410B89EB7B9C7F202792FF2D3CCAFCB3098AD8DBEB673A5002C5C5EFB15AEC27F26C69EE6E76B53FA0A12EF83803D048C69FC34F337';
wwv_flow_imp.g_varchar2_table(10) := 'A22D8A36698F0D7B6B7595008843AEB2AAF54F447DEC0F1CCB9778C100022A10F89268936555759B451B55C1A14C7D708D0094556EB886DFCFDDC3AFE67F3BD3E0B01E084826308BB7D1D7C587C424DBCDDA9C2B04604155DD6DC4A262AFAFE58735B2CE';
wwv_flow_imp.g_varchar2_table(11) := '2E367482C0788AFAFE146BB34E584FB199C9A4DA0260184CDC7A318836F160F279C100026E20902FDAEC82CABAE5AA3BABAC00880F5E2C7868FD5671EB457588F00F047A226030AA985F55B749B4E59EDE5761999202100C06F31AF31AB77115BD450548';
wwv_flow_imp.g_varchar2_table(12) := 'F00104B225C0886E3B1D687A4AB4E96CEBB0733B2505A029BFE87162F44F76068EBA4140160146C6371A03458FC9B227EC645A9413007EF1E461C3A099990680F540C025046689B6AD9AAF4A09C0FCCAF50BF961FF7DAA41823F20600501D1B6451BB7A2';
wwv_flow_imp.g_varchar2_table(13) := '2EABEA504600E63D547B2D63C68FAD0A0CF580808A04781B5F5956B95E998FAD2B2100E22AA9CF60E2569F12FEA8D870E0936708F8F9DD81C7449BB72BA2FED4AB44876B0A343EC89D1ECF0B0610F03C017E51B0B8A3CD3B1EABE3025056557B253F375A';
wwv_flow_imp.g_varchar2_table(14) := 'E43809380002120988363FEFC1F59F9368B247538E0B0011AB24223F2F18404027027E9FDF70FC93828E0A4059E5866B78C6C533F9F80803086847E066AB2F08F697A0A302402CF29FFD7518EB8380A708B0A83802762C24C70460E143EBA71331710440';
wwv_flow_imp.g_varchar2_table(15) := 'F803017D09B01BCA56D4DDE454FC8E0940D4882E742A68D80501A508448DFB9DF2C71101985BB9E67222261ED14DF8030110605F9EB7FC27E209C439A1C866634704C0CFFCB77367192F184000048898CF17FE1E39F0275F000C83777CDFF71D88152641';
wwv_flow_imp.g_varchar2_table(16) := '406102EC368AF50DB92EFAE49A239A5F55FB3744063F05906D19F64040690257C4FB865C1FA50B808FF9F8D57FB941C21A08B88100632CEBBB01D9C6E7CB76C36CB7330C921E64B6BE623B10904BC0E30230EF3F6A4611A3CFCB850A6B20E01A025FBCE7';
wwv_flow_imp.g_varchar2_table(17) := 'E1F543647A2BF5088085F36EE4C1F18B80FC15030880405702AC2012FD87AE0BED9C972A003EF2E1D77CECCC26EA763D0146BEAF503FFF7259DD97CBC6FDDDD620636A7FB7C1FA20A01301D97D449A00048341610BE7FF3AB566C49A0D81CF75F4956CB6';
wwv_flow_imp.g_varchar2_table(18) := 'EDF736A253F67BA36C36680E8C129D7F6036DB621B10D08840E1A9FC4B27CA8A579A00448D28CEFF656515765C4DC06744333E55CE35506902C018931654AE50B03D083849801193D657A40940948CB14E42856D10700B0183E8AF64F92A4D00984145B2';
wwv_flow_imp.g_varchar2_table(19) := '82821D1070350183A4ED2CA50900310800E10F04322190615FC9A4AABED69122001DB73546F4E50CDE070110881118DED167623376BE481180F7078E19C483C8E30503088040DF04021FD1A5057DAF96FB1A5204E0C2964FFDB9BB8A1A40401F0285743E';
wwv_flow_imp.g_varchar2_table(20) := '5F46B45204206F508194606400830D109041A0AF3E63950F520420DCEEC311805519433D5A1090D567A40840BB11C6F9BF16CD16415A4540569F912200F97E1C0158D530508F1E0464F519290210094300F468B688D22A02BDF519AB6C887AA408803FDF';
wwv_flow_imp.g_varchar2_table(21) := '878B80827697120987A8BDADD5B525D4DE464634DA252ACC5A4120EA6752AE9B4911006A6FB7828927EA884622F449E3293AF9D10774FAC4316A3EF5B16B4BD3C91374F2D8511EC747D472EE8C27F2A34A108148C84302A00A5587FD107BFBC68F8F515B';
wwv_flow_imp.g_varchar2_table(22) := 'CB79320CC3616FAC331F0987E94C7313359F3E493822B08EAB8C9AE41C01C88844711BF13DFF498A7AF890B9BDB5859A4E9D8008D8D816ADAE1A026035D134F57DDA7C9A778CF85E7F54D1489AF3BD19B472D9025A57B5D855A562C19D9D22BCF16BD7D3';
wwv_flow_imp.g_varchar2_table(23) := 'D8CF5C662E0B87423111F0B2D099C17A600202202189E210B9BDB5D5B454F2DD6FD19513C75261C10073995B27061614D017AE9C44138BC79921081168E6470210011389B213100009A91157FB1366860F1B4A23875F9898F5CC78D2C4F13461FC15663C';
wwv_flow_imp.g_varchar2_table(24) := '42049A4E1DF7F4298F19AC8B27200012921789464C2B175E38D89CF6DAC4E4CF16773A128884C2FC74002260559EEDA807026007D5AE75A65CF1675DDFF3D87CD723018880DA098600A89D1F577A97F64820923C127265601E741A02E0C1A4AA10923812';
wwv_flow_imp.g_varchar2_table(25) := '48BD30183F123841E276A80AFEC187380108409C035E6D20D04D04C2E29A0044201BD4766D0301B08B2CEA8D118008C43028FB0201503635DE712C260213C69B0189CF453489CF09E09A80C9C4A909088053E435B33B69C2389AD84D04F82D428880A32D';
wwv_flow_imp.g_varchar2_table(26) := '0102E0287EBD8C77178148FC730210815E1B829D6F4200ECA48BBABB1180087443E2E8020880A3F8F5349E4E042291B09E401C8C1A02E0207C9D4DF72802274F1044406EAB8000C8E50D6B2904BA8A80F89050F3E98F89523E3A9DB2BA969376070D01B0';
wwv_flow_imp.g_varchar2_table(27) := '9BB0C7EA1F5C38B05344B93ED9A8AB08884F0C9E3DF349271B98B18F0004C03EB6C99A9977BE0274E1E0421A9422024D9FE4FE2C402102C5295F256E399B7B9D49F898EA8D0004A0373A78AF47025FBDF68BE6F2B7DE7E97CE9D3B6FCE673B317962F283';
wwv_flow_imp.g_varchar2_table(28) := '42E2A8423C4F20DBBAB05DE604200099B3C29A1D04FEFEBA69347448FCA1264D4DCDF4FB97EAE90F3BFF4C3B5FDE9575A97FE535F2FB930FC20D87F024E90EDCB68E2000B6E2F566E581BC3CBA7DC63FD380FCE4CF3D7CFAE9593ADDD8945389A47C20C8';
wwv_flow_imp.g_varchar2_table(29) := 'A0F8F313BD49509DA820003272E1C1ABDA13C68EA6650BEFA4CBC75C2A83206CD84400026013D84ED57AE822606A5CC3875C40F795DE4A0F2E2AA1BB677D8BA6DFF4B59C4AE2B422D506A6ED250001B0976FBC760F1E01C4038BBF5E346C085D35693CDD';
wwv_flow_imp.g_varchar2_table(30) := '78FDD53995A143E3D715087F240B0104401669D8010105094000144C0A5C020159042000B248C30E0828480002A06052E092DE0464460F0190491BB6404031021000C51202774040260108804CDAB005028A118000289610B8A33701D9D14300641357C0';
wwv_flow_imp.g_varchar2_table(31) := 'DED6675FA28A951BE8B5B71A14F026C5058F7F602A255265262100CAA4428E2375BFD8412FEC7C851A9B9AE9973B9E936334432BDE796A4286012BB01A04408124C870211C8950ED9667E88DBDEF9AE6AE9E3AC59C5661C250C109CD7C8000689070D1F9';
wwv_flow_imp.g_varchar2_table(32) := 'D7FFFC197A735FF2907FCAC4F174CBD76F481B7D4B5B3BFDEAF97A5AB3696B4E45D4D1CAEB4A6B086F98049C98800038415DA2CD503842A2F3EF6D38685A159DFF9EEF4EA7405EF2011CE69B1D13F5BBDEA2675FA8A77D0D87722AA28E3FEDDEDB512B46';
wwv_flow_imp.g_varchar2_table(33) := 'AA118000A896110BFD89EDF9B76CA7EE9DFFE65E3BBF7061D8D00BC4C89232ACE3E9417D56E6D1AF4DF719B7832B40001C846FA769D1F96B7FBE3DB6F74ED849EEF9F3128BD28EA74D9940F36E9F91D3F7FBC5F30116DE3533F655E1B48652DE60B80B90';
wwv_flow_imp.g_varchar2_table(34) := '4243CE2404400E67A956C461FF9A4DDBE86D7EF89E301CEFFC7DEFF913EB8BF1E4E2B1397DBF5F3C1F60E215634455191543E323808C00D9B01204C006A84E56293AFFDAC7B751C3C1F74C37929DBFEF3DBFB91126B42000015038CDFB8F7C480D873FC8';
wwv_flow_imp.g_varchar2_table(35) := 'D8C3B65088D66E7EBA87CE2F2EF8B9A0F3E31420E35C5BB52204C02A9216D7F3EA9E77E8D10D5B68D54F9FA0C7B73F477D3D255774FE9A8D5BA9E1C061D393E49EDF6F2E537A02A700D2D30301908E3C3383E75A5ACD155FDEB587366FFF6D5A114874FE';
wwv_flow_imp.g_varchar2_table(36) := '43EF258F16929DDF057B7E33523D279C8C1A02E024FD5E6C5F336D0A8D199D7CE4B6108127763CDF6D8BB6F630ADD9B895BA77FEDC0FFBCFB7B6D1A1A3C7722AA28E6E4EA75B80538074646C5B0E01B00D6D6E150F080468C11D33B808149915ED7CF52F';
wwv_flow_imp.g_varchar2_table(37) := 'B465C7EFCC79D1F96B363D4507BBEDF945E7CFEDB0FFF0D1E3B468F96A5A59BB39A7B264C55A3AF2E109D3674CA8450002A0563E3A7953583080CAF8BDF8514523CDE5F5AFEE8E89405B7B88AA373E9966CF9F5BE717C6F6ED4FDE4510F3D99650384CFB';
wwv_flow_imp.g_varchar2_table(38) := '0E1CC976736C6733010880CD8073AD7ED0C0025A78E74C2ABAA4B3082C7D641D1D3E72D4AC3E7ECE9FFB9E3F51E1A4E2B134E4824189D9ACC7C3870DA5C9C59767BDBDD737743A3E0880D319C8C0FEE0C202BAF7AE6F53D1C517996BB7B4B499D3F1CEDF';
wwv_flow_imp.g_varchar2_table(39) := 'BF0FF9981BA7991837A68856DC3F97D6552DCEA9542EBA872E1F7D491A2B5D16E32E401720F6CF4200EC676C8985C18503E9DEBB67D2C811C33AD597ECFCB8DADF090C6632220001C808931A2BC545E03B74F1C8113187AEFC6C31C5BFD5E791CE8FBB00';
wwv_flow_imp.g_varchar2_table(40) := 'B1BCCA7C8100C8A46D812D715EBEB874162D9A7D2BCDB9ED963EBFD56781495461130115AA8500A890857EFA50C8EF0E8CBB2CF919817E6EAEEEEAB806203D371000E9C8611004D4210001502717F00404A413800048470E832040A40A0308802A99801F';
wwv_flow_imp.g_varchar2_table(41) := '20E00001088003D061120454210001502513F003041C20000170003A4CEA4D40A5E821002A6503BE808064021000C9C0610E045422000150291BF005042413800048060E737A13502D7A08806A1991E0CFD6675FA28A951BE8B5B71A2458EB87097C1BB0';
wwv_flow_imp.g_varchar2_table(42) := '1FB0AC591502600D47D7D452F78B1DF4C2CE57A8B1A9997EB9E339A5FC664A79A387331000B52B2C8500000C67494441543DF24CB1DF0ADCF20CBDB1F75D33E2ABA74E31A7559830547042331F20001A245C747EF113E16FEE4B1EF28B2709DDF2F51BD2';
wwv_flow_imp.g_varchar2_table(43) := '46DFD2D64EBF7ABE9ED66CDA9A531175B4F2BAD21AD2E80D15438500A898150B7D0A8523243AFFDE868366ADA2F3C79F2494FEE9C1F5BBDEA2675FA8A77D0D87722AA28E3FEDDE6BDAC6845A0420006AE5C3526F627BFE2DDBA97BE7EFFB01A2C3865E60';
wwv_flow_imp.g_varchar2_table(44) := '992FC3865C98595D782048669C2C5C0B0260214C95AA129DBFF6E7DB637BEF845FC93D7FDFCF109C366502CDBB7D064DBFE96B39958577CDA4AB268D4FB8D0EB98E12E40AF7CEC78130260075587EB1487FD6B366DA3B7F9E17BC29578E7EF7BCF9F585F';
wwv_flow_imp.g_varchar2_table(45) := '8C27178FA51BAFBF3AA732F18A31A2AA8C8AE1E123808C0038B01204C001E8769A149D7FEDE3DBA8E160F2977D929DBFEF3DBF9DBEA16EF5084000D4CB89E9D1FE231F52C3E10FCCF9BE26DA42215ABBF9E91E3ABFF8C52017747E9C02F49562CBDF8700';
wwv_flow_imp.g_varchar2_table(46) := '588ED49A0A5FDDF30E3DBA610BADFAE913F4F8F6E7C8E0FFBDD52C3A7FCDC6ADD470E0B0B95A72CFEF3797293D815300E9E9810048479E99C1732DADE68A2FEFDA439BB7FF964B40CF1F954974FEEE3F112ECEF95DB0E73723F5E684CA51410014CDCE35';
wwv_flow_imp.g_varchar2_table(47) := 'D3A6D098D1C967FF0B117862C7F3DDBC6D6B0FD39A8D5BA97BE7CFFDB0FF7C6B1B1D3A7A2CA722EAE8E674BA0538054847C6B6E51000DBD0E656F180408016DC31838B409159D1CE57FF425B76FCCE9C179DBF66D35374F0BDE47582F861BFE8FCB91DF6';
wwv_flow_imp.g_varchar2_table(48) := '1F3E7A9C162D5F4D2B6B37E75496AC584B473E3C61FA8C09B5084000D4CA47276FC42F0095F17BF1A38A469ACBEB5FDD1D1381B6F610556F7C32CD9E3FB7CE2F8CEDDB9FBC8B20E6B32DA17098F61D3892EDE6D8CE660210009B01E75AFDA08105B4F0CE';
wwv_flow_imp.g_varchar2_table(49) := '99547449671158FAC83A3A7CE4A859BD557BFE4485938AC792F81DC2C47CB6E3E1C386D2E4E2CBB3DDDCF5DBA91E000440F50C71FF061716D0BD777D9B8A2EBE88CFC5879696B6F8047F8D777E71C12FF73D3FAF2E368C1B53442BEE9F4BEBAA16E7542A';
wwv_flow_imp.g_varchar2_table(50) := '17DD43978FBE2456679F2FB80BD02722AB578000584DD4A6FA06170EA47BEF9E4923470CEB6421D9F971B5BF1318CC6444000290112635568A8BC077E8E29123620E5DF9D9628A7FABCF239D1F7701627995F902019049DB025BE2BC7C71E92C5A34FB56';
wwv_flow_imp.g_varchar2_table(51) := '9A73DB2D14C8B3EEB0DF02F750450A01374C4200DC90A52E3E16160CA07197253F23D0E56DF7CEE21A80F4DC4100A42387411050870004409D5CC01310904E0002201D390CEA40C02D314200DC9229F8090236108000D800155582805B084000DC9229F8';
wwv_flow_imp.g_varchar2_table(52) := '090236108000D8001555EA4DC04DD1430064642BE5FE76CF8FF490E184FA360C23AABE931EF310022021A17E7FF2A3BA67CE9C9560D19D269A3F39633A9ECACC5C8809CB0940002C47DABDC24020DF5C78BAB1994E367E6ACE63224EE0F8A926FA244500';
wwv_flow_imp.g_varchar2_table(53) := '02F903E26FE0D5560210005BF1C62B673E1F151416C667F8EBFA2DDB68EF81F748FCFE1E9FD57A387BBE95DE6C788F7EF2C433268782C241C4983B7F2BD80CC22513100049891A3C6438315FBC517F74FC24AD7DEC49FAE183AB684EF9235A97C555D554';
wwv_flow_imp.g_varchar2_table(54) := 'BBE9493AC6998854F8B8580E1ED2F92BCF62398A3D042000F670ED56AB68D843868F2431EEF62616C4080836434680510C86A417088024D0C24CFE80021A7EC9281A30B01087B802484761FCC84830116C70EEDF0145D20802200974C24C6C2F37FC221A';
wwv_flow_imp.g_varchar2_table(55) := '396A0C8DB8E4521A7AD1C55A17C160E4A56368086722D82438B971EC469FA50840C81F88B8118EDD3EFBF302248E0A742E8281DD9CDD587F84F2DA65F82D45007C11030220239BB0E11902FEBCA8943E2345006405E399EC2310ED09B4473C2400B282D1';
wwv_flow_imp.g_varchar2_table(56) := 'BED500806304AC369CCFF2C256D7D9537D528E006405D353805806026E249097EFA123000A9D6F716312E033083845207CAED53B170187D2E8F34E81845D10702301597D46CA2940303843A859F2B7ACDC9811F80C026908D8B0B8ADA3CFD85075E72AA5';
wwv_flow_imp.g_varchar2_table(57) := '0840DC243B1E1FE3150440A07702F2FA8A4401302000BD671DEF82400781E87B1D13B68F240A0041006C4F270C788180C13C7804C088DEF14272100308A412B063DA6790F78E000C325E27FC810008F44940665F91760A10653E08409FA9C70A204024B3';
wwv_flow_imp.g_varchar2_table(58) := 'AFF86401BFA8FD5803B715E505030880407A02E73BFA4AFA352C7C479A00048341D1F9F75BE83BAA02014709D864FCCD8EBE6253F59DAB952600C2ACC108A701843F10484F801193DA47A40A008BD28B843F100081B4040CC3F0AE001801FFFFF2C80D5E';
wwv_flow_imp.g_varchar2_table(59) := '308000087427604403A1FFE9BED8BE25528F006AEEBBFB2819F4867DE1A066109043C0162BBC6FACB96FFE47B6D49DA652A902207C608C7E23C6282000029D0938D137E40B40D4800074CE3BE6402046206A44933F8F145B62FF8B7401387FB1AF9E881D';
wwv_flow_imp.g_varchar2_table(60) := '21FC810008A412787F44F8E35DA90B644C4B17800D252521A2E84619C1C10608D841C09E3A8DC782C1A094E700A6FA2F5D0084F18811798C8F71378043C000029C4098FCBE9FF1B1F4C11101585B31EF08EFFDBF951E2D0C82809A047E5D7D7FC9FB4EB8';
wwv_flow_imp.g_varchar2_table(61) := 'E688008840FD51E36131460101DD09F8A2C62AA718382600AB96CD7ED1207ACEA9C0611704B22160F536A20F88BE6075BD99D6E79800C41CF4D37DB1315E404053024684FD9B93A13B2A0035F797EEE1C1EFE0050308E84860C79A074ADE743270470540';
wwv_flow_imp.g_varchar2_table(62) := '04EEF74516F1F1595E3080804E04CE1951F643A703765C001E5D32F78061B0654E83807D10E88B80A5EF1BB4A86659C9414BEBCCA232C70540F87C7CE2B01A3EDEC90B0610F03C0146545F5D515AA742A04A08C053336644F8A9C0ED1C084E0538040C9E';
wwv_flow_imp.g_varchar2_table(63) := '26702E1A65DF532542250440C010A702CC30BECFA7A3BC6000012F12889261DCAAC2A17F02AE3202201C5A5D317B1B31562EA6514040250256F8C2AF75FDB0BA62F6762BEAB2AA0EA504400455BDB4E46132487C5740CCA280805708ACAEA92871EC137F';
wwv_flow_imp.g_varchar2_table(64) := 'E9202A2700C2D1D691AC848F7FC70B0610F00281EDC343C7EF5531102505407C65B835C4A633A2A75584069F40A01F0476F0B63C2B188C3D16BF1F9BC95955490110A16F08969C5FBDB4E45F984195621E05049C229083DD15FC94F69BA22DE75087AD9B';
wwv_flow_imp.g_varchar2_table(65) := '2A2B00B1A819335657942EE34702E2B64924B60C2F20A03E8176C330665597972EE517B50D95DD555B003AC8AD2E2F7D9C31762D9F7D97170C20A02E01466F460DBAB6A662F616759D4C7AE60A0110EEF2D381573E0D0D984A64FC88CF8778C100022A11';
wwv_flow_imp.g_varchar2_table(66) := 'E06DD258DE3A824D5B53512AFDD97ED982708D00880037066F6FAD2E9F1D8C30DF957CFE57BC6000015B096450B938C4DFEAF74526F3B6F980B8809DC136CAACE22A0148505BBBF49E86EAF2D26F4499711DBF3E509F588E3108C82460307AD1F019D378';
wwv_flow_imp.g_varchar2_table(67) := '5BFC57F1495699B6ADB2E54A014804BF66E9EC7A7E7DE03AC388FE2D196C335FDEC60B0610B093401B31DA22763E354B4BBF5AB364F66E3B8DD95DB7AB052001A7A662CECBD51525B70542EC329E1CF18415C7BF6699F00D63CF103844CCB84FB4B1EAA5';
wwv_flow_imp.g_varchar2_table(68) := 'A5B3C4CEC70B917942001289F871B0E4144FCE4A7E4856CCC8B8892F5FC74FD03EE0630C20D06F02A2EDF07654CB4F336FE46D6A7CF5D2D98F8836D6EF8A14DEC0530290CA7975F9ECE778D2E6D694977EC6F0D3547EBE261E3AF247BECE395E3080404F';
wwv_flow_imp.g_varchar2_table(69) := '0444DBE06D843DE023DF55A2EDF07634677579A9673F96EE590148CDAE78F6203F5FABE48270032F83FDBEE8782E08DF62063DC8D713CF247C9DC890FAABACDC2E06C708C472CD734E3B441B106DC188B262D13678E16DA464F9AAF27BC4FB8E7928CBB0';
wwv_flow_imp.g_varchar2_table(70) := '1602D015E6A34BE61CE282F0F4EA8AD27FE7099FCECB55D5E5B34757979732E382F6025FA865583814B934CFC8FF4C34EA1F47019AC81BC91446D12F44884D235FF46A14F51888DC881C895C899C89DC891C8A5C8A9C8ADC8A1C57C773CD735E3A5DB401';
wwv_flow_imp.g_varchar2_table(71) := 'D11654FA8E7ED7F66AE7BC9602D01BD09AB2B2B655C11F34AF0BCE3DFE5F15777CB066D9DD87AB1797EEE78D64DFEAF2396FAC2D2FF94BF59239AFA1A8C740E446E448E44AE44CE44EE450E452E454E4B6B7DCA7BEA7CB340440974C234E10E8810004A0';
wwv_flow_imp.g_varchar2_table(72) := '0728580402BA108000E89269C409023D108000F400058BF426A053F410009DB28D5841A00B01084017209805019D08400074CA366205812E0420005D8060566F02BA450F01D02DE388170452084000526060120474230001D02DE3881704520840005260';
wwv_flow_imp.g_varchar2_table(73) := '60526F023A460F01D031EB8819043A0840003A406004023A128000E89875C40C021D0420001D2030D29B80AED1430074CD3CE206014E0002C0216000015D09400074CD3CE206014E0002C02160D09B80CED1430074CE3E62D79E000440FB2600003A1380';
wwv_flow_imp.g_varchar2_table(74) := '00E89C7DC4AE3D010880F64D406F00BA47FFFF000000FFFF59BF9A1E00000006494441540300DA3964C449A944860000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(188989399593789277)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD099454E599FFF1A77ADF9BA61B450C28ABC82220B88D27F9672627718920202202224448D4184F32F33F3393CC3E6796AC93312A688CB2';
wwv_flow_imp.g_varchar2_table(2) := 'C50DD42492E8CC7174664E24CE1CC789C62518659766E97DEFA6979AFB16B6367457DD5BDD5575DFE58B16DD5DF7BDF7BECFE7B9DABFBEB7EA76D6DD7FFF409407061C031C031C031C031C036E1D0359C21F04104000010410704C408400E05CCB291801';
wwv_flow_imp.g_varchar2_table(3) := '04104000010200C700020820800002CE09A8823903A01478208000020820E0980001C0B186532E0208208080EB02A7EA27009C72E06F0410400001049C12200038D56E8A4500010410705DA0BF7E0240BF041F11400001041070488000E050B329150104';
wwv_flow_imp.g_varchar2_table(4) := '1040C075818FEB27007C6CC1670820800002083823400070A6D5148A00020820E0BAC0C0FA09000335F81C010410400001470408008E349A3211400001045C1738BD7E02C0E91E7C850002082080801302040027DA4C910820800002AE0B9C593F01E04C';
wwv_flow_imp.g_varchar2_table(5) := '11BE460001041040C001010280034DA6440410400001D70506D74F00186CC233082080000208582F4000B0BEC5148800020820E0BAC050F513008652E1390410400001042C17200058DE60CA4300010410705D60E8FA090043BBF02C020820800002560B';
wwv_flow_imp.g_varchar2_table(6) := '1000AC6E2FC52180000208B82E10AF7E02403C199E470001041040C062010280C5CDA5340410400001D705E2D74F00886FC312041040000104AC15200058DB5A0A4300010410705D2051FD0480443A2C430001041040C052010280A58DA52C0410400001';
wwv_flow_imp.g_varchar2_table(7) := 'D70512D74F0048ECC352041040000104AC14200058D9568A4200010410705DC0AF7E02809F10CB114000010410B0508000606153290901041040C07501FFFA0900FE468C400001041040C03A010280752DA5200410400001D70582D44F0008A2C4180410';
wwv_flow_imp.g_varchar2_table(8) := '400001042C13200058D650CA4100010410705D2058FD0480604E8C420001041040C02A01028055EDA4180410400001D70582D64F00082AC5380410400001042C12200058D44C4A4100010410705D2078FD0480E0568C440001041040C01A01028035ADA4';
wwv_flow_imp.g_varchar2_table(9) := '100410400001D70592A99F00908C1663114000010410B0448000604923290301041040C07581E4EA270024E7C568041040000104AC10200058D1468A4000010410705D20D9FA0900C98A311E0104104000010B0408001634911210400001045C1748BE7E';
wwv_flow_imp.g_varchar2_table(10) := '0240F266AC81000208208080F1020400E35B48010820800002AE0B0CA77E02C070D45807010410400001C3050800863790E92380000208B82E30BCFA0900C373632D0410400001048C16200018DD3E268F00020820E0BAC070EB27000C578EF510400001';
wwv_flow_imp.g_varchar2_table(11) := '0410305880006070F3983A0208208080EB02C3AF9F00307C3BD6440001041040C058010280B1AD63E20820800002AE0B8CA47E02C048F458170104104000014305080086368E692380000208B82E30B2FA090023F3636D0410400001048C14200018D936';
wwv_flow_imp.g_varchar2_table(12) := '268D00020820E0BAC048EB27008C5490F5114000010410305080006060D398320208208080EB0223AF9F00307243B68000020820808071020400E35AC68411400001045C174845FD04805428B20D0410400001040C13200018D630A68B00020820E0BA40';
wwv_flow_imp.g_varchar2_table(13) := '6AEA2700A4C691AD20800002082060940001C0A87631590410400001D70552553F012055926C070104104000018304080006358BA92280000208B82E90BAFA0900A9B3644B0820800002081823400030A6554C1401041040C0758154D64F0048A526DB42';
wwv_flow_imp.g_varchar2_table(14) := '0001041040C010010280218D629A0820800002AE0BA4B67E02406A3DD91A020820800002460810008C6813934400010410705D20D5F51300522DCAF61040000104103040800060409398220208208080EB02A9AF9F00907A53B688000208208080F60204';
wwv_flow_imp.g_varchar2_table(15) := '00ED5BC40411400001045C174847FD048074A8B24D0410400001043417200068DE20A68700020820E0BA407AEA2700A4C795AD228000020820A0B5000140EBF630390410400001D705D2553F01205DB26C170104104000018D0508001A3787A921800002';
wwv_flow_imp.g_varchar2_table(16) := '08B82E90BEFA0900E9B365CB082080000208682B4000D0B6354C0C01041040C0758174D64F0048A72EDB4600010410404053010280A68D615A0820800002AE0BA4B77E02407A7DD93A0208208000025A0A1000B46C0B934200010410705D20DDF51300D2';
wwv_flow_imp.g_varchar2_table(17) := '2DCCF6114000010410D0508000A0615398120208208080EB02E9AF9F00907E63F68000020820808076020400ED5AC28410400001045C17C844FD04804C28B30F0410400001043413200068D610A68300020820E0BA4066EA270064C699BD208000020820';
wwv_flow_imp.g_varchar2_table(18) := 'A095000140AB7630190410400001D70532553F012053D2EC070104104000018D0408001A3583A92080000208B82E90B9FA090099B3664F08208000020868234000D0A6154C0401041040C075814CD64F00C8A436FB4200010410404013010280268D601A';
wwv_flow_imp.g_varchar2_table(19) := '0820800002AE0B64B67E024066BDD91B0208208000025A081000B46803934000010410705D20D3F51300322DCEFE104000010410D0408000A0411398020208208080EB0299AF9F00907973F688000208208040E8020480D05BC00410400001045C1708A3';
wwv_flow_imp.g_varchar2_table(20) := '7E024018EAEC1301041040008190050800213780DD2380000208B82E104EFD048070DCD92B020820800002A10A100042E567E70820800002AE0B84553F01202C79F68B0002082080408802048010F1D9350208208080EB02E1D54F0008CF9E3D23800002';
wwv_flow_imp.g_varchar2_table(21) := '0820109A000120347A768C00020820E0BA4098F51300C2D467DF0820800002088424400008099EDD2280000208B82E106EFD048070FDD93B020820800002A1081000426167A70820800002AE0B845D3F0120EC0EB0FF6002D1A8749FEC928EB6166969AC';
wwv_flow_imp.g_varchar2_table(22) := '97C6DAE3527BEC889CA83E2435D587795866A0FAAAFADBE0F559F55BF55DF55FBCE320D801C3280410F0132000F809B13C5481685F9FB4353789FA46D0DC502BAD4D8D5E086895935D5DD2D7DB2B12F5FEF5BE29447978DF1BA3D63C545F557FBBBD3E77';
wwv_flow_imp.g_varchar2_table(23) := 'B4B5C6FADE545F2BF55E2050C783EA77A807263B4760C402E16F8000107E0F98411C819EEE93B16FFC6D2D4DDE4FFF27A5B7A737F60D2ECE709EB658407DC35781A0E7E44951C74343CD3151C787C525531A0269172000A49D981D242BD0E7FDD4DFDAD4';
wwv_flow_imp.g_varchar2_table(24) := '10FBE6DFD3DD9DECEA8C7740401D17EAAC506B73A3A8E3C5819229D132011DCA2100E8D005E6F091406F4F8F34D7D7487B6B8B44FBBCF3FB1F2DE113044E1750C7477B4B73EC785181E0F4A57C8500027E0204003F2196674EC0BB8EDFE47DF357D7F733';
wwv_flow_imp.g_varchar2_table(25) := 'B753F664BA803A5ED48B420901A677D2A5F9EB512B01408F3E300B4F409DCEE57FE21E04FF262DA02E03A810107BA740D26BB302026E0A1000DCECBB7655F7749F94F6B696C0F38A442292939B23C54585525A5AC2C324839262AF5F45929D95DAFFFDA8';
wwv_flow_imp.g_varchar2_table(26) := '10A0DE29420808FC9F11034312D065B7A9FD2F5097AA98875102D1BEBED87BFBD55BBFFC267EEEB8B172CD67FF9F7CE5B69BE56FFEF08BF28DAFAC933FBEE3161E0619A89EFDDDFFBF5D562CBD56242209FF5C3277A64C9938414A8A0B138EEB5FD8DBD3';
wwv_flow_imp.g_varchar2_table(27) := 'CB8B47FB31F888808F0001C00788C5E917E8EC688BBDCD2FD19EB2B3B3E5928B2F922FAD5A220B3F7D994C9FF809A9282B893D2ACB4B85873906E52545929B9323D3BC1EE6E7E5C56D7B967786E0ACAA2AB970DA14F9D41597CACC0B268B5F6010F5272A';
wwv_flow_imp.g_varchar2_table(28) := 'A2DE2678B2AB537DC50301CD04F4990E01409F5E383B93CE8EF684B547B222B26CE16765DD0D574BD5A8D2846359688E407B7B97243AEB93959D2DD95E50C8CACE96DCBC3C993279925C79E902C9CDCDF52D52DD37A0B9A18E7B05F84A31C065812C978B';
wwv_flow_imp.g_varchar2_table(29) := 'A7760D04A251E9EDE94938914F5DB1407E6FDECC84635868A280F7A37A826947221111F5908FFF545556C8E5975C1C2804A81B0735D6D510023EE6E3330D04749A020140A76E383897DEDE1E51AF0188577A41419E5CF3A9CB2437273BDE109EB75AC00B';
wwv_flow_imp.g_varchar2_table(30) := '0167D4377A54995C71E97CC9CFCF3F63C9E02F6321A0F684703960B00DCF204000E0180855A0FBE44951A76BE34D42FDF45FE65D338EB79CE7DD14A8282F95CB175C2C7979FE9703D4BB03D4FD257AB8ABA49B078B5655EB351902805EFD706E3689DEB2';
wwv_flow_imp.g_varchar2_table(31) := '95959D259F387B8C7326141C4C605479895C16300444FBA2D2587782CB01C16819E5880001C09146EB5A66A2005059512E15DEE95E5DE7CEBCC21718ED1D1F972D982779F9F1DF4DD03F4B7539409D09E07240BF081F332DA0DBFE0800BA75C4B1F9247A';
wwv_flow_imp.g_varchar2_table(32) := '01605969899414057BFFB7636C943B4060F4A872B9E292F912E472406F4FAF34C55E18C82F991A40C8A78E0A10001C6DBC096567452252CAF57F135A15FA1C4795257139207AEA7240A2B34FA117C4042C14D0AF2402807E3D61461F0A442211C9CDE610';
wwv_flow_imp.g_varchar2_table(33) := 'FD90830F3E02A3BDCB01975E3C37D099007539A0B991FB04F890B2D87201FEEF6A7983290F0197042A478F8ABD3050DD69D0AFEEDEEE1E69E472801F13CB5324A0E36608003A7685392180C0B005D49980CB2F556F110CFAC2C013C2E5806173B3A2C102';
wwv_flow_imp.g_varchar2_table(34) := '0400839BC7D41140606881D1A3CAE5B2F97325C86D83D50B03B96DF0D08E3C9B2A013DB74300D0B32FCC0A0104462830BAA25C82DE36B8B7A7FF72C0C911EE95D51130478000604EAF982902082429307A54995CAEEE139017F472402D9703923466B8BF';
wwv_flow_imp.g_varchar2_table(35) := '80AE230800BA7686792180404A04D49980CB1678970372727CB7A7CE0434D5D70AB70DF6A56280050204000B9A48090820905860F4A853970382DC2C48BD45B0B18E17062616656970017D471200F4ED0D33430081140AA83301DC272085A06CCA780102';
wwv_flow_imp.g_varchar2_table(36) := '80F12DA4000410082A10BB4FC0FC7992CC7D02D46581A0DB671C02670AE8FC350140E7EE3037041048B9803A13A0DE1D10FC72C071E9E9E6DD01296F041B0C5D8000107A0B98000208645A408500753920E87D029A1A786160A67B64C7FEF4AE8200A077';
wwv_flow_imp.g_varchar2_table(37) := '7F981D0208A449405D0EB8FC12EF72406EAEEF1E4EDD36F884F4F6F05B047DB118608C0001C098563151041048B540ECDD01B1FB04F88780D8BB03EA6BB81C90EA2658BC3DDD4B2300E8DE21E6870002691548EA7240778FA8FB04702620AD2D61E31912';
wwv_flow_imp.g_varchar2_table(38) := '200064089ADD208080BE02495D0EE8E99186DA13DE99002E07E8DB511D66A6FF1C0800FAF788192280400604D4E500F50B8482BE3BA039F6C240DE1D9081D6B08B34091000D204CB661140C03C017526E0B280F709E8E9EEF62E07D408F70930AFCF9998';
wwv_flow_imp.g_varchar2_table(39) := 'B109FB200098D025E6880002191350AF09087A9F80DE9E5E69AC53F709E07240C61AC48E522640004819251B4200015B04540850F7090872394085805397030801B6F47FE47598B1050280197D62960820906181642F07A85F20D4DBD393E159B23B0486';
wwv_flow_imp.g_varchar2_table(40) := '2F400018BE1D6B228080E502EA4C40D0CB01B1FB04C42E07F0C240CB0F0BDFF24C19400030A553CC13010442115021E0D28BE704FB05423DBDA26E1BCC7D024269153B4D528000902418C31140C03D81CAD11572D98279C14240F7A9FB041002DC3B4E4E';
wwv_flow_imp.g_varchar2_table(41) := '556CCEDF0400737AC54C1140204481CAD1A3BC10305782FC02A1D8E580D86D83796160882D63D73E0204001F201623800002FD0295EA4CC0FCB9929393DDFF54DC8FEA17083535D4486F2F2F0C8C8B64E102934A220098D42DE68A0002A10B547A67022E';
wwv_flow_imp.g_varchar2_table(42) := '5F70B1E4E6E4F8CE458580C6DA13C2E5005F2A068420400008019D5D228080D9022A045CBADFED10C7000010004944415460AE04B91CA0DE1AD8DC582F9C0930BBE7C1666FD628028059FD62B60820A0894055129703BABBBAA4A5A14E9399330D044E09';
wwv_flow_imp.g_varchar2_table(43) := '10004E39F037020884211089BFD3686CD1A9BF639F6AF8973A1310BB1C909BEB3BBB935E08E8686BF11DC70073054C9B3901C0B48E315F042C11C8CFCD11F51BF8E295138DF68944F50E006AEE2A045C3A3FD87D025A9B1AA5AFCFAB4BADC80381900508';
wwv_flow_imp.g_varchar2_table(44) := '00213780DD23E0AA407E5E9E8CA91A1DB77CF556BAB6F68EB8CB755A10BB1CB0609EEFBB03A25EA06969F42E05781F759A3F7349858079DB200098D733668C801502050579525A522CF1FE44FBA252D7D8186FB176CFAB3301B1CB013EEF0EE8EAEC90CE';
wwv_flow_imp.g_varchar2_table(45) := '8E76EDE6CF84DC132000B8D7732A46400B81C2FC3C193BA632E15C3EA83E9670B96E0B5508B874FE5C894412BFB8A1B3BD55B7A9339F110A98B83A01C0C4AE3167042C119830EE6C9104DF2B6B6BEBE5D091A362D29FAACA0A9933EBC28453EE51BF3590';
wwv_flow_imp.g_varchar2_table(46) := 'CB00098D58987E010240FA8DD9030208C411F8C4D82A2928288CB3F4D4D3AFBFF9B69CA8F1AE9B9FFAD288BF277C629C9425B8BCD1D7D7CB7D018CE864D0499A398E006066DF9835025608A8CB000BE6CE4C584BB42F2AAFBCFABFB2FFE061512FA24B38';
wwv_flow_imp.g_varchar2_table(47) := '589385914844C68D1B1B7F365191935D9DF197B304810C0810003280CC2E104020BEC0672E9F27A347C77F3740FF9ABF797B8FECFEEFFF9103873E909696165177D853EF14D0EED1D7273D3DDD525A9CF8CC46F7C9AEFED2F868B880A9D3270098DA39E6';
wwv_flow_imp.g_varchar2_table(48) := '8D802502675755C89597CE9144AF05900FFFD4D537CA1B6FFD565EFAE57FC9CF5FF877F9C5BFFDA77E8F17FE439E7BE13FE5D55FBFF5E1AC87FED0D3CD6F0A1C5A866733254000C89434FB410081B8029F5A305BE6CD4E7C2960D0CADE6974ED7EFAEFED';
wwv_flow_imp.g_varchar2_table(49) := '1535A720972AF8DD00833A6AE813E64E9B00606EEF983902D608141716C8E2CF7D522A2B13BF2DD09A8255215E80511F782010960001202C79F68B0002A7098CA928932FAEBC5E0A8B125F3B3F6D25BE4020640193774F0030B97BCC1D01CB04C68FAD92';
wwv_flow_imp.g_varchar2_table(50) := 'AFACBB49264C182F91AC043708B0AC6ECA41200C01024018EAEC130104E20A9C3FEE2C59BBEC1A993D6BA69424782F7DDC0DB000818C0998BD230280D9FD63F608582930B672947C69F93572E7AD37CA27AF982F85850556D64951088429400008539F7D';
wwv_flow_imp.g_varchar2_table(51) := '2380405C81482422EA6CC0CDD77D46BEF38DBBE4EEF537CBE73E7DA5CC9D3D43E6CDBE50E6CD9A2E73675D107B5C3463AACC9E3E459BC7F429E749796949DCDA58608780E95510004CEF20F347C00181ACAC2C993E71BC2CFEEC95F2C515D7C986150B65';
wwv_flow_imp.g_varchar2_table(52) := 'C3CD8B64C38A538F2FAD5C2CB7AF5EA2C7E3962572E72DCB64F1D5BF2FBC8EC18183D3E012090006378FA923E0BA402412914844B387442427275BE6CE98C2A50BAB0F50F38B230098DF432A4000010D055ADBBB241A8D683833A684C0290102C02907FE';
wwv_flow_imp.g_varchar2_table(53) := '46000104522AD0D3DBE36D8FBBFD780856FE6B435104001BBA480D0820800002082429400048128CE10820800002AE0BD8513F01C08E3E52050208208000024909100092E262300208208080EB02B6D44F00B0A593D4810002082080401202048024B018';
wwv_flow_imp.g_varchar2_table(54) := '8A00020820E0BA803DF51300ECE925952080000208201058800010988A810820800002AE0BD8543F01C0A66E520B0208208000020105080001A1188600020820E0BA805DF51300ECEA27D520800002082010488000108889410820800002AE0BD8563F01';
wwv_flow_imp.g_varchar2_table(55) := 'C0B68E520F020820800002010408000190188200020820E0BA807DF51300ECEB2915218000020820E02B4000F02562000208208080EB0236D64F00B0B1ABD4840002082080808F0001C00788C50820800002AE0BD8593F01C0CEBE521502082080000209';
wwv_flow_imp.g_varchar2_table(56) := '05080009795888803D0251894A5F5F9F3D055109021912B0753704005B3B4B5D087C2870BCAE511EFBE9BFCA5F7FEF21F99BEFFF487EFEE26E696E6DFF70291F1040C055010280AB9DA76E2704F67F705CEE7DE44979F9D537A4A6BE31F678EEA5DDB2FD';
wwv_flow_imp.g_varchar2_table(57) := '99E7A5A7B7D709038A44606402F6AE4D00B0B7B754E6B8C05BEF1F947B373F21F58D4D8324DE7E77AFEC7EEDCD41CFF3040208B823400070A7D754EA90C01B7BF6CBB61DBBA4B3B32B6ED5AFBCF61BE9E83C1977390B104040C466030280CDDDA5362705';
wwv_flow_imp.g_varchar2_table(58) := 'DE3F582DDB9E7A565ADB125FE7EFEBED93BE282F0A74F220A168043C01028087C0BF08D822F0B677DAFFFEAD4F4A4747FC9FFCFB6B9D7FD185525C58D0FF251F1140609080DD4F1000ECEE2FD53924F0FABBFB65AB77DABFABABDBB7EAB32B2BE45397CE';
wwv_flow_imp.g_varchar2_table(59) := 'F51DC7000410B0578000606F6FA9CC2181F70E55CBF69DBB7C4FFB2B92E2A242B9FEDACF486141BEFA32658FAE93DDD2D8D226F54DAD52D7D4A2DDA3B1A55D3ABC39A6AC603664BD80ED0512006CEF30F5592FA0DEE7BF71CB0EEFB47FA76FADB93939B2';
wwv_flow_imp.g_varchar2_table(60) := '7AD9753277FA24DFB1410734B5B6C973FFF18ADCB3F909F9871F3C2CDFBCEF11F9D67D9BB57B7CFBFE2DF2FD871E955D2FBE2C3D3D3D41CB631C02D60A1000AC6D2D85B920A0DEE77FCFC38F4B5797FFABF98B0A0B65C3EAA532E7828929A33978E4B8FC';
wwv_flow_imp.g_varchar2_table(61) := 'DD3D8FC8CF5FF8A51C3874545ADB3BB57D34B6B4CA07D527E4F9977E25DF7DF0513956DB9032073664A380FD351100ECEF31155A2AB0F7F0517960FB4E69F44EB7FB95A84EFBDFB4F82A9935F57CBFA1492DFFAFD7DF92B6F68EA4D6D161F0A1EAE3F2DC';
wwv_flow_imp.g_varchar2_table(62) := 'BFEFD6612ACC0181D0040800A1D1B36304862FF0BE77CD7FE3D69DD212E096BEB9B9B9B26AE9B572C9AC69C3DFE1106B46A351A93E7A7C8825663CF5DEBE4312F5FE3163B6CC32D3022EEC8F00E04297A9D12A8177DE3F240F3DF69340D7FC8B0A0B62A7';
wwv_flow_imp.g_varchar2_table(63) := 'FDE75E38392D069148242DDB65A30820907E010240FA8DD903022913D87BF8986CDDF9ACB4B4B4F96EB3A4B848562CBE5A664D39CF77EC700644221119555E3E9C55B55867ECD96324E2FDA3C564988466026E4C8700E0469FA9D20281BAC666D9B87547';
wwv_flow_imp.g_varchar2_table(64) := 'A0D3FE79DE69FF9B975C230B527CDAFF4CC6699352FB9A8233B79FAEAFF3F372E5CA0573D2B579B68B801102040023DAC4245D173874AC46FEE9A1C7029DF62F2C2890F5AB96CABC349DF61FD88BDFBB78867C79DD72B962FE453263DA249975C1648D1F';
wwv_flow_imp.g_varchar2_table(65) := '9364F6F4C972F14517CA1FDFB126EDE168A0139F9B25E0CA6C0900AE749A3A8D15A86F6A9107B7ED9406EF0C805F11B1D3FE4BBCD3FE53CFF31B9AB2E533A79C2FB72CBD5AEEBA7599DCB9E6068D1FCBE48E5B6E90F5372D9473CEAA4C59FD6C08015305';
wwv_flow_imp.g_varchar2_table(66) := '0800A6768E793B2170E0C831F9FB7B374B4353AB6FBDF97979A24EFBA7FAD5FEBE3B6600025609B8530C01C09D5E53A961027BF61D924DDB9E0E74DABFA0205FD6AF5E9A91D3FE8631325D0410882340008803C3D3088429A0EEF0B765C7B3D2D2EAFF6A';
wwv_flow_imp.g_varchar2_table(67) := 'FFD2E22259B9F45A99397942985366DF085821E05211040097BA4DAD46081C38725CEEDBF2A434B7B4FBCE373F3F4F962FBE5A16CC9CEA3B9601082080C0400102C0400D3E472064813DFB0E7BA7FD9F0A76DA3FDF3BEDBF7289CC9F3125E459B37B046C';
wwv_flow_imp.g_varchar2_table(68) := '1170AB0E02805BFDA65A8D050E1E3D215B77EC0A7CDA7FD50D9F979969BAC98FC64C4C0D0104522440004811249B315BA02F1A95C6E656A96D680EA590A69636D9B8798734B5F8BFDABFC0FBC97FF9F557CBFC99FCE41F4AB3D8A9B502AE15460070ADE3';
wwv_flow_imp.g_varchar2_table(69) := 'D43B48E0586DBD7CE7C11FCB5F7EEF41F9DB7F7E48EE79E449397CAC66D0B8743D71B4C6DBFF03DBA5A52DD835FFF52B17F3CD3F5DCD60BB083824400070A8D9943A5840FDC4FFA3277E26070F1F959E9EDED8E3DDBD07E5478FFF54DED97B68F00A297E';
wwv_flow_imp.g_varchar2_table(70) := '46DDE467D3B6A7A43EE04D7E562FBB4E6670DA3FC55D6073082801F71E0400F77A4EC503045E7AE535A93E3AF8A7FD9ADA06D9F2E4B3B2FFC8F101A353FBA93ADDFFCDFBB74A6D7DA3EF86D5FBFC975F7F95F0823F5F2A0620804040010240402886D927';
wwv_flow_imp.g_varchar2_table(71) := 'D079B25BF61E3818B7B056EF94FC03DB76CABBFB3F883B66B80B8E79A7FDBFBD69BBA87DF86D43DDE1EFB6954B78AB9F1F14CB111881808BAB12005CEC3A35C704F272B2252B921DFB3CDE5F2DADEDF2E3677E217BF61F8E3724E9E7D5E9FE4DDB9E9686';
wwv_flow_imp.g_varchar2_table(72) := 'A616DF75D5BDFDD72C5FC84D7E7CA518800002C90A6425BB02E311B045202B2B4BA69E3FDEB79CBAFA26D9BAE359A93E51E73BD66F40636B9B7C6BD336A9A96FF01B2AEAB7FAA9D3FE99F8AD7EBE93610002560BB8591C01C0CDBE53F58702D7FCFE1572';
wwv_flow_imp.g_varchar2_table(73) := 'EED8B33EFC2AFE87A6E6B6D8DDF90E1C39117F90CF92D8BB0DBCD3FEEAAC82CF50C9CBCD95752BAEE7B4BF1F14CB114060D802048061D3B1A20D028505F9F2B5F52B64DCD9637CCB696C6A95AD4FED92BD87AA7DC79E39A0A1B945366DF74EFB077CB5FF';
wwv_flow_imp.g_varchar2_table(74) := 'ADCB17C9AC0CFE4ADF33E7CBD708B824E06AAD0400573B4FDD1F09141516C81D6B6E9073038480E3DE6500F54B7A8E781F3FDA80CF272D6D1DF2DD071F15F5CE029FA1A2E6B27CD1E764DE8CC97E43B5591E8DF6C96B6FEE91477FF22F72FFD6A764E336';
wwv_flow_imp.g_varchar2_table(75) := 'F578DAFBA8D74305B0CD3B77C98BBF7A4DDADA3BB5F163220884254000084B9EFD6A255039AA4CEEBE6D85549497F9CEABAEA159EE7BE409397CACD6776C6D439377CD7FAB3404F8C93FD73BEDBF569DF69F35CD77BBBA0C68EBE8946F7CEB0179F88967';
wwv_flow_imp.g_varchar2_table(76) := '65F7FFFC46DEFEDD3E79EB5DF5D8EB7DD4EBF1E69EBDF2EAEBBF95A77FF1A2FCE37D9B53F29A0E5DFAC03C4622E0EEBA0400777B4FE56708941617CAD736AC943195A3CE5832F8CBA696365167020E56C77F4D80BAC9CFC62D3BA5DE0B0C83B770FA3325';
wwv_flow_imp.g_varchar2_table(77) := 'C545DE357FEFB4BF6137F979F9D53702DDBEF8F46AC3FF4AF5E685975F0D7F22CC00811005080021E2B36BFD04AA2ACAE4B69B9748D568FF1070F478AD6CDDB14B6A86B891CFF1DA06F9DE0F1F15F5C23FBF2AD5ABFD6FF44EFBCF9D6ECE69FFFE9ADE79';
wwv_flow_imp.g_varchar2_table(78) := '6F5FFFA7C67D7C7FEF01891A376B269C6A0197B7470070B9FBD43EA4C08473C6C8EDB7DC206525C5432E1FF8E4B19ABAD8EF0EA8AEA9FFE8E943474FC80F363F19ECB47F4E4EEC27FF4B0C3AEDDF5F6834EA7DFBF4FEEDFFDAB48F3DBDBD12ABC1B48933';
wwv_flow_imp.g_varchar2_table(79) := '5F04522440004811249BB14B60DC5995F2F5AFAC95CA006702EABDEBFC8F3CFE33F9EF37F6C47E7FC00F7FFC4CA06FFEC54585F285954B64D6D4F38DC48B442232F6EC2A23E7AE263D79D204C9F26A509FF37055C0EDBA09006EF79FEA1308947B6700EE';
wwv_flow_imp.g_varchar2_table(80) := 'BCF5461953599160D4A945D5C76B64DBCE5DB11707AA3BFD9D7A36FEDFC58505B27CD15532E78289F10719B0E4B2B9B345BD7EC180A99E36C5F3C68D95EBFEE0CAD39EE30B045C132000B8D671EA4D4AE09CAA0AF9EAFA9BA5ACB4C477BDA0A79373BCD3';
wwv_flow_imp.g_varchar2_table(81) := 'FEB7DE74BD5C32DB9C57FBC72B7ED2F8B1F2E777AF93859FFDA44C9C708EA8B31ABA3ECACB4A64FCB967C9359FB952FEE84B2B656CD5E87865F1BC2302AE9799E53A00F523E02750E17DE3B873ED8D12E435017EDB52DF1C6F5BB5C43BED7F9EDF506396';
wwv_flow_imp.g_varchar2_table(82) := '2B976B3E7D85DCBD6E85FCD9DD5F90AFDFB54EFEF4AEB5DA3DFEE4CEB5F2D5F5AB64A1F793BF0A61C600335104D224400048132C9BB54B60C2D831B2EEE6C5521EE04C40BCCAD537FFE58BAE9639D326C61B62F4F3F979B932AAB458469797486579A976';
wwv_flow_imp.g_varchar2_table(83) := '8F51A54552E8CDD16864269F42013695050102080413B8E0FC73E58BAB97C64E73075BE3E351EA27CE35372EF4380404E400001000494441544EFB4FFDF8493E43000104421420008488CFAECD1398F889B172FB9A655254581878F2EA27FF0DAB96CAEC';
wwv_flow_imp.g_varchar2_table(84) := '6966BEDA3F70A10C44C02001A62A4200E02840204981C9E3CF11F5D37C9057BFAB31375D7F15DFFC933466380208A45F8000907E63F660A1C045179C2F6B962F948282FCB8D5A9D3FEAB967D5E161878939FB845B100012B04284209100094020F048621';
wwv_flow_imp.g_varchar2_table(85) := '306BCA79F2E5B5CBA5A464F01D034B4B8B65C3EAA5D6BEE06F185CAC8200029A091000346B08D3314B405D0EB86BDD4D327FCECCD80D71D45BE22E9A39DDBB44B048664FE59ABF59DD64B6AE0850E7290102C02907FE4660D80213C656C96DCB3F2F7FF5';
wwv_flow_imp.g_varchar2_table(86) := '871BE42FBEB65E6E5FB948664E1E3FECEDB12202082090090102402694D9871302C505F9A21E4E144B9108182BC0C4FB05B2FA3FE12302082080000208B823400070A7D7548A000208382F00C0C70204808F2DF80C01041040000167040800CEB49A4211';
wwv_flow_imp.g_varchar2_table(87) := '400001D705A87FA0000160A0069F238000020820E0880001C091465326020820E0BA00F59F2E400038DD83AF10400001041070428000E0449B2912010410705D80FACF1420009C29C2D70820800002083820400070A0C99488000208B82E40FD83050800';
wwv_flow_imp.g_varchar2_table(88) := '834D7806010410400001EB050800D6B7980211400001D705A87F280102C0502A3C87000208208080E5020400CB1B4C7908208080EB02D43FB400016068179E450001041040C06A010280D5EDA538041040C07501EA8F2740008827C3F308208000020858';
wwv_flow_imp.g_varchar2_table(89) := '2C4000B0B8B99486000208B82E40FDF1050800F16D5882000208208080B50204006B5B4B6108208080EB02D49F48800090488765082080000208582A4000B0B4B19485000208B82E40FD89050800897D588A000208208080950204002BDB4A5108208080';
wwv_flow_imp.g_varchar2_table(90) := 'EB02D4EF274000F0136239020820800002160A10002C6C2A2521800002AE0B50BFBF0001C0DF881108208000020858274000B0AEA51484000208B82E40FD410408004194188300020820808065020400CB1A4A3908C413884A54FAFAFAE22DE67904AC11';
wwv_flow_imp.g_varchar2_table(91) := 'A09060020480604E8C42C05881E3758DF2D84FFF55FEFA7B0FC9DF7CFF47F2F317774B736BBBB1F530710410488D000120358E6C05012D05F67F705CEE7DE44979F9D537A4A6BE31F678EEA5DDB2FD99E7A5A7B757CB393329044626C0DA4105080041A5';
wwv_flow_imp.g_varchar2_table(92) := '18878061026FBD7F50EEDDFC84D437360D9AF9DBEFEE95DDAFBD39E8799E40000177040800EEF49A4A1D127863CF7ED9B66397747676C5ADFA95D77E231D9D27E32E670102260A30E7E0020480E0568C44C00881F70F56CBB6A79E95D6B6C4D7F9FB7AFB';
wwv_flow_imp.g_varchar2_table(93) := 'A42FCA8B028D682A9344200D02048034A0B24904C21278DB3BED7FFFD627A5A323FE4FFEFD739B7FD185525C58D0FF251F11B04080129211200024A3C55804341678FDDDFDB2D53BEDDFD5D5ED3BCBB32B2BE45397CEF51DC7000410B0578000606F6FA9';
wwv_flow_imp.g_varchar2_table(94) := 'CC2181F70E55CBF69DBB7C4FFB2B92E2A242B9FEDACF486141BEFA32658FAE93DDD2D8D226F54DAD52D7D4A2DDA3B1A55D3ABC39A6AC6036A49D00134A4E8000909C17A311D04E40BDCF7FE3961DDE69FF4EDFB9E5E6E4C8EA65D7C9DCE9937CC7061DD0';
wwv_flow_imp.g_varchar2_table(95) := 'D4DA26CFFDC72B72CFE627E41F7EF0B07CF3BE47E45BF76DD6EEF1EDFBB7C8F71F7A5476BDF8B2F4F4F4042D8F7108582B4000B0B6B514E682807A9FFF3D0F3F2E5D5DFEAFE62F2A2C940DAB97CA9C0B26A68CE6E091E3F277F73C223F7FE19772E0D051';
wwv_flow_imp.g_varchar2_table(96) := '696DEFD4F6D1D8D22A1F549F90E75FFA957CF7C147E5586D43CA1CD8900E02CC2159010240B2628C47401381BD878FCA03DB774AA377BADD6F4AEAB4FF4D8BAF925953CFF71B9AD4F2FF7AFD2D696BEF486A1D1D061FAA3E2ECFFDFB6E1DA6C21C10084D';
wwv_flow_imp.g_varchar2_table(97) := '8000101A3D3B4660F802EF7BD7FC376EDD292D016EE99B9B9B2BAB965E2B97CC9A36FC1D0EB166341A95EAA3C7875862C653EFED3B2451EF1F3366CB2CFD04589EBC0001207933D64020548177DE3F240F3DF69340D7FC8B0A0B62A7FDE75E38392D738E';
wwv_flow_imp.g_varchar2_table(98) := '442269D92E1B450081F40B1000D26FCC1E104899C0DEC3C764EBCE67A5A5A5CD779B25C545B262F1D5326BCA79BE638733201289C8A8F2F2E1ACAAC53A63CF1E2311EF1F2D26C3244628C0EAC31120000C478D75100841A0AEB159366EDD11E8B47F9E77';
wwv_flow_imp.g_varchar2_table(99) := 'DAFFE625D7C882149FF63FB3EC699352FB9A8233B79FAEAFF3F372E5CA0573D2B579B68B801102040023DAC4245D173874AC46FEE9A1C7029DF62F2C2890F5AB96CABC349DF61FD88BDFBB78867C79DD72B962FE453263DA249975C1648D1F9364F6F4C9';
wwv_flow_imp.g_varchar2_table(100) := '72F14517CA1FDFB126EDE168A0139FA75780AD0F4F8000303C37D642206302F54D2DF2E0B69DD2E09D01F0DB69ECB4FF12EFB4FFD4F3FC86A66CF9CC29E7CB2D4BAF96BB6E5D2677AEB941E3C732B9E3961B64FD4D0BE59CB32A53563F1B42C054010280';
wwv_flow_imp.g_varchar2_table(101) := 'A99D63DE4E081C38724CFEFEDECDD2D0D4EA5B6F7E5E9EA8D3FEA97EB5BFEF8E198040A802EC7CB8020480E1CAB11E026916D8B3EF906CDAF674A0D3FE0505F9B27EF5D28C9CF64F73D96C1E010432244000C81034BB412019017587BF2D3B9E959656FF';
wwv_flow_imp.g_varchar2_table(102) := '57FB971617C9CAA5D7CACCC91392D9056311B0428022862F400018BE1D6B2290168103478ECB7D5B9E94E69676DFEDE7E7E7C9F2C557CB8299537DC732000104101828400018A8C1E708842CB067DF61EFB4FF53C14EFBE77BA7FD572E91F933A6843C6B';
wwv_flow_imp.g_varchar2_table(103) := '768F405802EC772402048091E8B12E0229143878F4846CDDB12BF069FF55377C5E66A6E9263F292C8B4D218080A60204004D1BC3B4322BD0178D4A6373ABD436346776C71FEEADA9A54D366EDE214D2DFEAFF62FF07EF25F7EFDD5327F263FF97FC8C707';
wwv_flow_imp.g_varchar2_table(104) := '4705287B6402048091F9B1B60502C76AEBE53B0FFE58FEF27B0FCADFFEF34372CF234FCAE1633519ABEC688DB7FF07B64B4B5BB06BFEEB572EE69B7FC6BAC38E10B0578000606F6FA92C8080FA89FF474FFC4C0E1E3E2A3D3DBDB1C7BB7B0FCA8F1EFFA9';
wwv_flow_imp.g_varchar2_table(105) := 'BCB3F750802D8C6C88BAC9CFA66D4F497DC09BFCAC5E769DCCE0B4FFC8D059DB1201CA18A9000160A482AC6FB4C04BAFBC26D54707FFB45F53DB205B9E7C56F61F399EB6FAD4E9FE6FDEBF556AEB1B7DF7A1DEE7BFFCFAAB8417FCF95231000104020A10';
wwv_flow_imp.g_varchar2_table(106) := '00024231CC3E81CE93DDB2F7C0C1B885B57AA7E41FD8B653DEDDFF41DC31C35D70CC3BEDFFED4DDB45EDC36F1BEA0E7FB7AD5CC25BFDFCA058EE9400C58E5C8000307243B660A8405E4EB66445B213CEBEA5B55D7EFCCC2F64CFFEC309C725B3509DEEDF';
wwv_flow_imp.g_varchar2_table(107) := 'B4ED6969686AF15D4DDDDB7FCDF285DCE4C7578A01082090AC4056B22B301E015B04B2B2B264EAF9E37DCBA9AB6F92AD3B9E95EA1375BE63FD0634B6B6C9B7366D939AFA06BFA1A27EAB9F3AED9F89DFEAE73B190620A09500934985000120158A6CC358';
wwv_flow_imp.g_varchar2_table(108) := '816B7EFF0A3977EC59BEF36F6A6E8BDD9DEFC09113BE63E30D88BDDBC03BEDAFCE2AC41BD3FF7C5E6EAEAC5B713DA7FDFB41F888000229172000A49C940D9A245058902F5F5BBF42C69D3DC677DA8D4DADB2F5A95DB2F750B5EFD833073434B7C8A6EDDE';
wwv_flow_imp.g_varchar2_table(109) := '69FF80AFF6BF75F9229995C15FE97BE67CF91A019D05985B6A040800A971642B060B141516C81D6B6E9073038480E3DE6500F54B7A8E781F8396DCD2D621DF7DF05151EF2CF05B47CD65F9A2CFC9BC1993FD866AB33C1AED93D7DEDC238FFEE45FE4FEAD';
wwv_flow_imp.g_varchar2_table(110) := '4FC9C66DEAF1B4F751AF870A609B77EE92177FF59AB4B5776AE3C74410084B800010963CFBD54AA0725499DC7DDB0AA9282FF39D575D43B3DCF7C81372F858ADEFD8DA8626EF9AFF566908F0937FAE77DA7FAD3AED3F6B9AEF767519D0D6D129DFF8D603';
wwv_flow_imp.g_varchar2_table(111) := 'F2F013CFCAEEFFF98DBCFDBB7DF2D6BBEAB1D7FBA8D7E3CD3D7BE5D5D77F2B4FFFE245F9C7FB36A7E4351DBAF4C1AD79506DAA040800A992643BC60B941617CAD736AC943195A37C6B696A69137526E06075FCD704A89BFC6CDCB253EABDC0E0B7C192E2';
wwv_flow_imp.g_varchar2_table(112) := '22EF9ABF77DADFB09BFCBCFCEA1B816E5FEC577FA697ABDEBCF0F2AB99DE2DFB43402B01028056ED6032610B545594C96D372F91AAD1FE21E0E8F15AD9BA6397D40C71239FE3B50DF2BD1F3E2AEA857F7E35A957FBDFE89DF69F3BDD9CD3FEFD35BDF3DE';
wwv_flow_imp.g_varchar2_table(113) := 'BEFE4F8DFBF8FEDE0312356ED64C1881D40910005267C9962C119870CE18B9FD961BA4ACA4D8B7A2633575B1DF1D505D53FFD1D843474FC80F363F19ECB47F4E4EEC27FF4B0C3AEDDF5F6834EA7DFBF4FEEDFFDAB48F3DBDBD12ABC1B489335F04522440';
wwv_flow_imp.g_varchar2_table(114) := '004811249BB14B60DC5995F2F5AFAC95CA006702EABDEBFC8F3CFE33F9EF37F6C47E7FC00F7FFC4CA06FFEC54585F285954B64D6D4F38DC48B442232F6EC2A23E7AE263D79D204C9F26A509FF330458079A6528000904A4DB6659540B97706E0CE5B6F94';
wwv_flow_imp.g_varchar2_table(115) := '319515BE75551FAF916D3B77C55E1CA8EEF4E7B7427161812C5F7495CCB960A2DF50AD975F3677B6A8D72F683DC9212677DEB8B172DD1F5C39C4129E42C01D0102803BBDA6D261089C5355215F5D7FB3949596F8AE1DF474728E77DAFFD69BAE974B669B';
wwv_flow_imp.g_varchar2_table(116) := 'F36AFF78C54F1A3F56FEFCEE75B2F0B39F948913CE11755643D7477959898C3FF72CB9E63357CA1F7D69A58CAD1A1DAF2C9ED7548069A556202BB59B636B08D82750E17DE3B873ED8D12E435017ED5AB6F8EB7AD5AE29DF63FCF6FA831CB95CB359FBE42';
wwv_flow_imp.g_varchar2_table(117) := 'EE5EB742FEECEE2FC8D7EF5A277F7AD75AED1E7F72E75AF9EAFA55B2D0FBC95F8530638099280269122000A40996CDDA253061EC185977F362290F7026205EE5EA9BFFF24557CB9C6913E30D31FAF9FCBC5C19555A2CA3CB4BA4B2BC54BBC7A8D22229F4';
wwv_flow_imp.g_varchar2_table(118) := 'E66834B2D393A7F8540B64A57A836C0F015B052E38FF5CF9E2EAA5B1D3DCC9D6A87EE25C73E342EFB4FFD46457653C02082090160102405A58D9A8AD02133F31566E5FB34C8A0A0B0397A87EF2DFB06AA9CC9E66E6ABFD0317CA4004D228C0A6532F4000';
wwv_flow_imp.g_varchar2_table(119) := '48BD295BB45C60F2F873E4961BAF0BF4EA77F5CD5FBDDA9F6FFE961F1494878081020400039BC694C317506FDF5BB37CA11414E4C79D8C3AEDBFDA0B0A36BCDA3F6E912C40202302EC241D02048074A8B24D2704664D394FBEBC76B994940CBE63606969';
wwv_flow_imp.g_varchar2_table(120) := 'B16C58BDD4DA17FC39D1608A44C072010280E50DA6BCF40AA8CB0177ADBB49E6CF9919BB24A0DE1277D1CCE9B2E6C645327B2AD7FCD3ABCFD65D11A0CEF4081000D2E3CA561D129830B64A6E5BFE79F9AB3FDC207FF1B5F572FBCA453273F27887042815';
wwv_flow_imp.g_varchar2_table(121) := '01044C14200098D835E6ACA5407141BEA8879693635208182BC0C4D3259095AE0DB35D04104000010410D0578000A06F6F9819020820E0BC0000E9132000A4CF962D238000020820A0AD000140DBD63031041040C07501EA4FA70001209DBA6C1B010410';
wwv_flow_imp.g_varchar2_table(122) := '4000014D0508009A36866921800002AE0B507F7A050800E9F565EB08208000020868294000D0B22D4C0A010410705D80FAD32D400048B730DB4700010410404043010280864D614A08208080EB02D49F7E010240FA8DD903020820800002DA091000B46B';
wwv_flow_imp.g_varchar2_table(123) := '0913420001045C17A0FE4C08100032A1CC3E104000010410D04C8000A05943980E020820E0BA00F567468000901967F68200020820808056020400ADDAC16410400001D705A83F530204804C49B31F0410400001043412200068D40CA682000208B82E40';
wwv_flow_imp.g_varchar2_table(124) := 'FD9913200064CE9A3D218000020820A08D0001409B563011041040C07501EACFA400012093DAEC0B0104104000014D0408009A3482C6D87A5300000B7249444154690C1638D9DD236DED5D8317F00C02060864676549D48079EA3445E6925901024066BD';
wwv_flow_imp.g_varchar2_table(125) := 'D9DB190259D9D9673CF3F1971D9D5DD2D0DCFAF1137C86804102BDBDBDD2E385D87853CECA8E7FECC75B87E71148A5000120959A6C2B6981EC9C9CB8EBB4B4B64A43534BDCE52C40406781E6F676E9EDED893BC544C77EDC95AC5E407199162000645A9C';
wwv_flow_imp.g_varchar2_table(126) := 'FD9D2690939B77DAD703BF686FEF941375F5039FE273048C11A83E5623D1BEF81701121DFBC614C9448D16200018DD3EF3279FAB0240247E1DEFEE3D107F214B10D054A0EB64B7BCF3BB7DF167E71DF3B1633FFE08E7965070E60508009937678F030472';
wwv_flow_imp.g_varchar2_table(127) := '727325E2FD33E0A9D33EFDDDDE83F2CEFB874E7B8E2F10D05DE0ADF7F6CB9EF7E2875775CCAB635FF73A989FDD020400BBFBAB7D7559D9F15F03A0261F8D4665F38E9FC9AFDF795F7DC90301ED05F6EC3D2C8FFDE45FA4BB27FEF57F5544B6CFB1AFC6B8';
wwv_flow_imp.g_varchar2_table(128) := 'F3A0D23004080061A8B3CF8F04229188E415147CF4F5509FB4B575C8F6A77E2EFFB6FB35E9EBEB1B6A08CF2110BA807AD7CA2F5F7D531E7AEC19E9E8E84C389FFCC24211EFD817FE2010A2405688FB66D708C4048A4BCB252B3BF15BA23ABB4ECA33CFBD';
wwv_flow_imp.g_varchar2_table(129) := '28DF7DF0517971F7FFCABE0F8E49536BBBB4B6774A7BE7491E1884720CD435B5C8BEC347E557BF7E4BFEE9A1C7E5F19F3E2F1D9D89EF5DA15EFD5F54521E3BF6F9EB94007F8723400008C79DBD0E1050AF862E2DAF18F04CFC4F0F7C70549E79FE45B9F7';
wwv_flow_imp.g_varchar2_table(130) := 'E1C7E5DB1BB7CA771ED8CE0383CC1F039BB6C937EFDFE21D83DBE4070F3F218F3EFDBC1C397622FE813B60893AD6B9FE3F00844F431320008446CF8E070AE417144A6171C9C0A7E27EAE5E17A05E65DDE0FDF45553D720C76BEA786090D963A0B65E6AEB';
wwv_flow_imp.g_varchar2_table(131) := '1BA5A5B54D4E76778B3A26E31EB00316A8633CCF3BD6073CC5A7024158020480B0E4D9EFE902DEF5D012EF2C40766EE217059EBE125F21608E404E5E9EA89FFE853F0868224000D0A4114C43241289C8A8D163242F3F5FF883804D02EAA7FEF28A2AF10E';
wwv_flow_imp.g_varchar2_table(132) := '72E1CFE9027C159E0001203C7BF63C8440764EAE947921A0A8A4542259912146F01402E608A863B8A8B44CCA2A2A253BC16DAFCDA98899DA2490655331D4628740565696A8CB011555678B3A6D6A475554E19A40AE7726ABA26AAC94948D12754CBB567F';
wwv_flow_imp.g_varchar2_table(133) := 'B07A1915A60001204C7DF69D5040BD3B408500F5D3534151B1E4E6E5F13FD284622C0C53407D93CFCDCB1375AC968DAE9451956709AFF60FB323ECDB4F20CB6F00CB1108532012899CFA1FAA770AB5DCFB1F6AD9E82A292E2B17754D353B27DBBBA41AE1';
wwv_flow_imp.g_varchar2_table(134) := 'E1194522384422993750C7A03A16D531A98ECD72758C7AC76A416171ECB80CF3BF1D13F6CD1CC315200084EBCFDE9310503F61E5E517487169B9F7D3D518A93CFB5C19336E3C0F0C423B06D43138AA724CEC9854C7A63A469338A4198A40A802048050F9';
wwv_flow_imp.g_varchar2_table(135) := 'D939020820E0AA0075872D400008BB03EC1F0104104000811004080021A0B34B041040C07501EA0F5F8000107E0F980102082080000219172000649C9C1D22800002AE0B50BF0E0204001DBAC01C104000010410C8B0000120C3E0EC0E010410705D80FA';
wwv_flow_imp.g_varchar2_table(136) := 'F5102000E8D10766810002082080404605080019E5666708208080EB02D4AF8B000140974E300F04104000010432284000C82036BB420001045C17A07E7D040800FAF482992080000208209031010240C6A8D911020820E0BA00F5EB244000D0A91BCC05';
wwv_flow_imp.g_varchar2_table(137) := '0104104000810C0910003204CD6E10400001D705A85F2F0102805EFD6036082080000208644480009011667682000208B82E40FDBA09100074EB08F341000104104020030204800C20B30B041040C07501EAD74F8000A05F4F9811020820800002691720';
wwv_flow_imp.g_varchar2_table(138) := '00A49D981D20800002AE0B50BF8E0204001DBBC29C10400001041048B3000120CDC06C1E010410705D80FAF5142000E8D91766850002082080405A05080069E565E308208080EB02D4AFAB000140D7CE302F041040000104D228400048232E9B46000104';
wwv_flow_imp.g_varchar2_table(139) := '5C17A07E7D050800FAF686992180000208209036010240DA68D930020820E0BA00F5EB2C4000D0B93BCC0D01041040008134091000D204CB6611400001D705A85F6F010280DEFD6176082080000208A4458000901656368A000208B82E40FDBA0B100074';
wwv_flow_imp.g_varchar2_table(140) := 'EF10F3430001041040200D02048034A0B249041040C07501EAD75F8000A07F8F982102082080000229172000A49C940D22800002AE0B50BF0902040013BAC41C11400001041048B1000120C5A06C0E010410705D80FACD10200098D12766890002082080';
wwv_flow_imp.g_varchar2_table(141) := '404A05080029E5646308208080EB02D46F8A0001C0944E314F041040000104522840004821269B420001045C17A07E73040800E6F48A992280000208209032010240CA28D910020820E0BA00F59B24400030A95BCC15010410400081140910005204C966';
wwv_flow_imp.g_varchar2_table(142) := '10400001D705A8DF2C01028059FD62B6082080000208A44480009012463682000208B82E40FDA60910004CEB18F345000104104020050204801420B209041040C07501EA374F8000605ECF9831020820800002231620008C98900D20800002AE0B50BF89';
wwv_flow_imp.g_varchar2_table(143) := '02040013BBC69C11400001041018A10001608480AC8E000208B82E40FD660A1000CCEC1BB3460001041040604402048011F1B132020820E0BA00F59B2A400030B573CC1B010410400081110810004680C7AA08208080EB02D46FAE0001C0DCDE31730410';
wwv_flow_imp.g_varchar2_table(144) := '40000104862D400018361D2B22800002AE0B50BFC902040093BBC7DC11400001041018A60001609870AC86000208B82E40FD660B1000CCEE1FB3470001041040605802048061B1B112020820E0BA00F59B2E400030BD83CC1F0104104000816108100086';
wwv_flow_imp.g_varchar2_table(145) := '81C62A08208080EB02D46FBE0001C0FC1E5201020820800002490B100092266305041040C07501EAB7418000604317A901010410400081240508004982311C010410705D80FAED102000D8D147AA4000010410402029010240525C0C460001045C17A07E';
wwv_flow_imp.g_varchar2_table(146) := '5B040800B674923A104000010410484280009004164311400001D705A8DF1E0102803DBDA412041040000104020B100002533110010410705D80FA6D122000D8D44D6A41000104104020A00001202014C310400001D705A8DF2E0102805DFDA41A041040';
wwv_flow_imp.g_varchar2_table(147) := '0001040209100002313108010410705D80FA6D132000D8D651EA410001041040208000012000124310400001D705A8DF3E0102807D3DA5220410400001047C050800BE440C400001045C17A07E1B0508003676959A104000010410F0112000F800B11801';
wwv_flow_imp.g_varchar2_table(148) := '0410705D80FAED142000D8D957AA42000104104020A1000120210F0B11400001D705A8DF56010280AD9DA52E0410400001041208100012E0B008010410705D80FAED152000D8DB5B2A43000104104020AE0001202E0D0B10400001D705A8DF66010280CD';
wwv_flow_imp.g_varchar2_table(149) := 'DDA536041040000104E2081000E2C0F034020820E0BA00F5DB2D4000B0BBBF54870002082080C09002048021597812010410705D80FA6D172000D8DE61EA43000104104060080102C010283C85000208B82E40FDF60B1000ECEF31152280000208203048';
wwv_flow_imp.g_varchar2_table(150) := '80003088842710400001D705A8DF050102800B5DA646041040000104CE1020009C01C29708208080EB02D4EF860001C08D3E5325020820800002A70910004EE3E00B041040C07501EA77458000E04AA7A9130104104000810102048001187C8A000208B8';
wwv_flow_imp.g_varchar2_table(151) := '2E40FDEE081000DCE93595228000020820F0910001E0230A3E410001045C17A07E970408002E759B5A114000010410F8508000F021041F10400001D705A8DF2D0102805BFDA65A0410400001046202048018037F21800002AE0B50BF6B020400D73A4EBD';
wwv_flow_imp.g_varchar2_table(152) := '082080000208780204000F817F11400001D705A8DF3D0102807B3DA7620410400001048400C04180000208382F00808B02040017BB4ECD0820800002CE0B10009C3F0400400001D705A8DF4D0102809B7DA76A0410400001C70508008E1F00948F0002AE';
wwv_flow_imp.g_varchar2_table(153) := '0B50BFAB020400573B4FDD08208000024E0B10009C6E3FC5238080EB02D4EFAE0001C0DDDE53390208208080C3020400879B4FE90820E0BA00F5BB2C400070B9FBD48E00020820E0AC0001C0D9D653380208B82E40FD6E0BFC1F000000FFFF4793F84B00';
wwv_flow_imp.g_varchar2_table(154) := '0000064944415403001128CBA5E62B152E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(188989700860789275)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188980968382789352)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>45815491681550
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188981206195789351)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>45815491681558
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188981522068789350)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>45815491681559
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188981842376789349)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>45815491681565
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188982166882789348)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>45815491681571
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188982472020789347)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>45815491681583
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188982706286789346)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>45815491681583
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188983054103789345)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>45815491681585
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188983368460789344)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>45815491681594
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188983611650789343)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>45815491681595
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188983968672789342)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>45815491681619
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188984246995789341)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>45815491681628
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188984551232789340)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>45815491681628
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(188984833910789339)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>45815491681631
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(188991810190789265)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>45815491681980
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(188991905318789265)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>45815491681980
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(188992017806789265)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>45815491681985
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(188991414513789268)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>45815491681930
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(188991652790789266)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>45815491681935
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(188991760783789266)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>45815491681953
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(188992713043789260)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(188989893141789273)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>45815491681995
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189099121983788434)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>45815491686142
);
end;
/
prompt --application/shared_components/user_interface/lovs/departments_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(193096459508439276)
,p_lov_name=>'DEPARTMENTS.NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEPARTMENTS'
,p_return_column_name=>'DEPARTMENT_ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45849902139630
);
end;
/
prompt --application/shared_components/user_interface/lovs/document_types
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189279248425543926)
,p_lov_name=>'DOCUMENT_TYPES'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DOCUMENT_TYPE'
,p_return_column_name=>'TYPE'
,p_display_column_name=>'TYPE'
,p_default_sort_column_name=>'TYPE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45815493277852
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189106601463788404)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(189106601463788404)||'.'
,p_location=>'STATIC'
,p_version_scn=>45815491686189
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189106914791788403)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/employees_first_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(193097543568439263)
,p_lov_name=>'EMPLOYEES.FIRST_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EMPLOYEES'
,p_return_column_name=>'EMPLOYEE_ID'
,p_display_column_name=>'FIRST_NAME'
,p_default_sort_column_name=>'FIRST_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45849902139739
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189018546708788842)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>45815491683861
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_due
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189337752009104985)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.DUE'
,p_lov_query=>'.'||wwv_flow_imp.id(189337752009104985)||'.'
,p_location=>'STATIC'
,p_version_scn=>45815496322569
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189338034530104984)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Overdue'
,p_lov_return_value=>'|0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189338384722104982)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Next hour'
,p_lov_return_value=>'0|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189338849128104981)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Next 24 hours'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189339233784104979)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Next 7 days'
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189339660005104978)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Next 30 days'
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189340062008104977)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'More than 30 days'
,p_lov_return_value=>'720|'
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_initiated
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189344114151104962)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.INITIATED'
,p_lov_query=>'.'||wwv_flow_imp.id(189344114151104962)||'.'
,p_location=>'STATIC'
,p_version_scn=>45815496322634
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189344456284104962)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Last hour'
,p_lov_return_value=>'|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189344805122104960)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Last 24 hours'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189345264970104959)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Last 7 days'
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189345680813104958)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Last 30 days'
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189346014877104956)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Older than 30 days'
,p_lov_return_value=>'720|'
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_priority
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189221452399569715)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45815493106812
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_state
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189342376292104968)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.STATE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_state )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45815496322579
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_type
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189340850900104974)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_type )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45815496322572
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189066054311788595)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(189066054311788595)||'.'
,p_location=>'STATIC'
,p_version_scn=>45815491685374
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189066293546788593)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189066738005788590)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/workflow_charts_lov_time_unit
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189472129828095716)
,p_lov_name=>'WORKFLOW_CHARTS.LOV.TIME_UNIT'
,p_lov_query=>'.'||wwv_flow_imp.id(189472129828095716)||'.'
,p_location=>'STATIC'
,p_version_scn=>45815496405131
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189472471441095715)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Seconds'
,p_lov_return_value=>'SEC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189472799008095713)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Minutes'
,p_lov_return_value=>'MIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189473231530095712)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Hours'
,p_lov_return_value=>'HOUR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189473587527095710)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Days'
,p_lov_return_value=>'DAY'
);
end;
/
prompt --application/shared_components/user_interface/lovs/workflow_console_lov_initiated
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189399226976095962)
,p_lov_name=>'WORKFLOW_CONSOLE.LOV.INITIATED'
,p_lov_query=>'.'||wwv_flow_imp.id(189399226976095962)||'.'
,p_location=>'STATIC'
,p_version_scn=>45815496403272
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189399509730095961)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Last hour'
,p_lov_return_value=>'|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189399886391095960)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Last 24 hours'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189400375343095958)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Last 7 days'
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189400740167095957)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Last 30 days'
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(189401119687095956)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Older than 30 days'
,p_lov_return_value=>'720|'
);
end;
/
prompt --application/shared_components/user_interface/lovs/workflow_console_lov_workflow_state
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(189397868753095968)
,p_lov_name=>'WORKFLOW_CONSOLE.LOV.WORKFLOW_STATE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_workflow.get_lov_workflow_state )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45815496403258
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(188993053946789255)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(189132137383788027)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(188985754773789332)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(188985971188789332)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(189120796762788209)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(189336143566104991)
,p_short_name=>'My Tasks'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(189373803136102776)
,p_short_name=>'Tasks Initiated by Me'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(189395786682095976)
,p_short_name=>'Workflows Initiated By Me'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(189450674461095789)
,p_short_name=>'Workflow Dashboard'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(189479179358092508)
,p_short_name=>'My Workflows'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(189578786126806846)
,p_short_name=>'Document Search'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(193119196972439155)
,p_short_name=>'Employees'
,p_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>15
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(188986668435789325)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(189141073534774002)
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>66
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(189141073534774002)
,p_theme_id=>42
,p_name=>'Redwood Light (copy_1)'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-layout--fixed t-PageBody--scrollTitle rw-mode-header--dark rw-mode-nav--dark rw-mode-body-header--dark rw-mode-body--dark rw-pillar--pebble'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-layout--fixed t-PageBody--scrollTitle","rw-layout--fixed t-PageBody--scrollTitle","rw-mode-header--dark","rw-mode-nav--dark","rw-mode-body-header--dark","rw-mode-body--dark","rw-pillar--pebble"],"vars":{},"customCSS":"","useCustomLess'
||'":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#44129192092788636.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(189141399396773998)
,p_theme_id=>42
,p_file_name=>'44129192092788636.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(188985087012789338)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>45815491681633
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(188989893141789273)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>45815491681916
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(188989991736789273)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>45815491681920
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(189132374016788026)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>45815491689078
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(189132592902788025)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>45815491689078
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(188985385364789336)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>45815491681634
);
end;
/
prompt --application/shared_components/navigation/search_config/document_search
begin
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(189577349887813048)
,p_label=>'Document Search'
,p_static_id=>'document_search'
,p_search_type=>'VECTOR'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'DOCUMENT_EMBEDDINGS'
,p_oratext_index_column_name=>'VECTOR_EMB'
,p_vector_provider_id =>wwv_flow_imp.id(278352603733588335)
,p_vector_search_type=>'EXACT'
,p_vector_distance_metric=>'COSINE'
,p_return_max_results=>100
,p_pk_column_name=>'DOCUMENT_ID'
,p_title_column_name=>'DOCUMENT_NAME'
,p_subtitle_column_name=>'CHUNK_ID'
,p_description_column_name=>'CHUNK_DATA'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.::P18_CHUNK_ID,P18_DOCUMENT_ID:&CHUNK_ID.,&DOCUMENT_ID.'
,p_icon_source_type=>'INITIALS'
,p_version_scn=>45815498979781
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Document Management'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188802626281380587)
,p_plug_name=>'Documents'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'document_id',
', description',
', filename',
', mime_type',
', created_by',
', nvl2(updated_on, updated_on, created_on) as last_modified_on',
', dbms_lob.getlength(document)  document',
', status',
', case when status = ''Approved'' then ''fa fa-thumbs-up fa-2x fam-check fam-is-success''',
'when status = ''Waiting'' then ''fa fa-thumbs-up fa-2x fam-clock fam-is-warning''',
'when status = ''Rejected'' then ''fa fa-thumbs-up fa-2x fam-x fam-is-danger''',
'else ''fa fa-thumbs-up fa-2x fam-information fam-is-danger''',
'end user_icon',
', approved_by',
', document_type',
'from document',
'where created_by = :APP_USER'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_required_role=>wwv_flow_imp.id(188992017806789265)
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(188802768036380588)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'WF_WS'
,p_internal_uid=>43790886594395222
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188802854846380589)
,p_db_column_name=>'DOCUMENT_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Document Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188802908128380590)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188803039151380591)
,p_db_column_name=>'FILENAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188803175649380592)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188803852154380599)
,p_db_column_name=>'STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="font-size: 35px" aria-hidden="true" img src="#USER_ICON#" class="fa #USER_ICON#"></span>',
'#STATUS#'))
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188803912542380600)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Approved/Rejected By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188804133751380602)
,p_db_column_name=>'LAST_MODIFIED_ON'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Last Modified On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188804226909380603)
,p_db_column_name=>'DOCUMENT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Document'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:DOCUMENT:DOCUMENT:DOCUMENT_ID::MIME_TYPE:FILENAME:::attachment::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188804314501380604)
,p_db_column_name=>'USER_ICON'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'User Icon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188804923296380610)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(189279248425543926)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189550339881960367)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(189171525195676613)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'441597'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESCRIPTION:DOCUMENT_TYPE:FILENAME:STATUS:APPROVED_BY:DOCUMENT:LAST_MODIFIED_ON'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189001028238789200)
,p_plug_name=>'Document Management'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(188804515499380606)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(188802626281380587)
,p_button_name=>'Refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Refresh'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(188804458405380605)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(188802626281380587)
,p_button_name=>'UPLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload New Document'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4::'
,p_icon_css_classes=>'fa-cloud-upload'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188804610842380607)
,p_name=>'Refresh page'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(188804515499380606)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188804743450380608)
,p_event_id=>wwv_flow_imp.id(188804610842380607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188802626281380587)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189299357488406812)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(188802626281380587)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189299467104406813)
,p_event_id=>wwv_flow_imp.id(189299357488406812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188802626281380587)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Document Types'
,p_alias=>'DOCUMENT-TYPES'
,p_step_title=>'Document Types'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189155268566758055)
,p_plug_name=>'Document Types'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DOCUMENT_TYPE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Document Types'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(189155337739758055)
,p_name=>'Document Types'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'WF_WS'
,p_internal_uid=>44143456297772689
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189155989107758048)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189156423236758047)
,p_db_column_name=>'TYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189156854519758045)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189157195010758044)
,p_db_column_name=>'APPROVAL_LEVEL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Approval Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189157591669758042)
,p_db_column_name=>'CREATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189158044918758041)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189158402292758039)
,p_db_column_name=>'UPDATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189158787645758038)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(189161000281756498)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'441492'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:TYPE:DESCRIPTION:APPROVAL_LEVEL:CREATED:CREATED_BY:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189159313611758036)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189155268566758055)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189159643014758035)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(189155268566758055)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189160157587758033)
,p_event_id=>wwv_flow_imp.id(189159643014758035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189155268566758055)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Edit Document Types'
,p_alias=>'EDIT-DOCUMENT-TYPES'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Document Types'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189144599356758106)
,p_plug_name=>'Edit Document Types'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DOCUMENT_TYPE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189150573770758073)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189150881952758071)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189150573770758073)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189152378047758066)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189150573770758073)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189152726867758065)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(189150573770758073)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189153038739758063)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(189150573770758073)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189144932843758104)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_item_source_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189145365764758099)
,p_name=>'P3_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_item_source_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_prompt=>'Type'
,p_source=>'TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Public;Public,Private;Private,Confidential;Confidential,Highly-Confidential;Highly-Confidential'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189145739936758094)
,p_name=>'P3_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_item_source_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189146114474758092)
,p_name=>'P3_APPROVAL_LEVEL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_item_source_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_prompt=>'Approval Level'
,p_source=>'APPROVAL_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:0;0,1;1,2;2,3;3'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Specify the level of approval required for your document. Here are the guidelines:',
'',
'<br>0 - means no approval required</br>',
'<br>1 - requires first line manager approval</br>',
'<br>2 - requires HR approval</br>',
'<br>3 - requires upper management approval</br>'))
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>0 - means no approval required</br>',
'<br>1 - requires first line manager approval</br>',
'<br>2 - requires HR approval</br>',
'<br>3 - requires upper management approval</br>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189146510403758091)
,p_name=>'P3_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_item_source_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189146975788758089)
,p_name=>'P3_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_item_source_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189147373044758087)
,p_name=>'P3_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_item_source_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189147752719758085)
,p_name=>'P3_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_item_source_plug_id=>wwv_flow_imp.id(189144599356758106)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189150986516758071)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189150881952758071)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189151833898758068)
,p_event_id=>wwv_flow_imp.id(189150986516758071)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189153870558758061)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(189144599356758106)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Edit Document Types'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44141989116772695
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189154233206758060)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>44142351764772694
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189153409892758062)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(189144599356758106)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Edit Document Types'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44141528450772696
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Maintain Documents'
,p_alias=>'MAINTAIN-DOCUMENTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Maintain Documents'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189182593521602424)
,p_plug_name=>'Maintain Documents'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DOCUMENT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189192123502602385)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189192525939602384)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189192123502602385)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189193906283602379)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189192123502602385)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P4_DOCUMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189194336747602378)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(189192123502602385)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4_DOCUMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189194778276602377)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(189192123502602385)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4_DOCUMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188804985993380611)
,p_name=>'P4_DOCUMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_prompt=>'Document Type'
,p_source=>'DOCUMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DOCUMENT_TYPES'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189182935555602422)
,p_name=>'P4_DOCUMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Document Id'
,p_source=>'DOCUMENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189183374273602420)
,p_name=>'P4_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>32767
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189183717705602418)
,p_name=>'P4_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_source=>'FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189184094982602417)
,p_name=>'P4_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_source=>'MIME_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189184914752602413)
,p_name=>'P4_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189185368751602412)
,p_name=>'P4_CREATED_ON'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_source=>'CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189186168500602408)
,p_name=>'P4_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189186521839602407)
,p_name=>'P4_UPDATED_ON'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_source=>'UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189187303990602404)
,p_name=>'P4_DOCUMENT'
,p_source_data_type=>'BLOB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_prompt=>'Document'
,p_source=>'DOCUMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'DROPZONE_BLOCK',
  'display_download_link', 'Y',
  'dropzone_title', 'Upload a document',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIME_TYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189187749434602402)
,p_name=>'P4_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_default=>'Waiting'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189188085910602401)
,p_name=>'P4_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_item_source_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_source=>'APPROVED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189299543455406814)
,p_name=>'P4_EMP_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(189182593521602424)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(189299712129406816)
,p_computation_sequence=>10
,p_computation_item=>'P4_EMP_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select employee_id from employees where upper(first_name) = upper(:APP_USER)'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(189185824534602409)
,p_validation_name=>'P4_CREATED_ON must be timestamp'
,p_validation_sequence=>60
,p_validation=>'P4_CREATED_ON'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(189185368751602412)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(189187012206602405)
,p_validation_name=>'P4_UPDATED_ON must be timestamp'
,p_validation_sequence=>80
,p_validation=>'P4_UPDATED_ON'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(189186521839602407)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189192667880602384)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189192525939602384)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189193480921602381)
,p_event_id=>wwv_flow_imp.id(189192667880602384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189195526848602374)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(189182593521602424)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Maintain Documents'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44183645406617008
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188804872865380609)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Invoke Workflow'
,p_attribute_01=>'START'
,p_attribute_02=>wwv_flow_imp.id(189286065451496194)
,p_attribute_03=>'P4_DOCUMENT_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43792991423395243
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(189298951549406808)
,p_page_process_id=>wwv_flow_imp.id(188804872865380609)
,p_workflow_variable_id=>wwv_flow_imp.id(189286829276496202)
,p_page_id=>4
,p_value_type=>'ITEM'
,p_value=>'P4_DOCUMENT_ID'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(189299073695406809)
,p_page_process_id=>wwv_flow_imp.id(188804872865380609)
,p_workflow_variable_id=>wwv_flow_imp.id(189286695802496201)
,p_page_id=>4
,p_value_type=>'ITEM'
,p_value=>'P4_DOCUMENT_TYPE'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(189299176870406810)
,p_page_process_id=>wwv_flow_imp.id(188804872865380609)
,p_workflow_variable_id=>wwv_flow_imp.id(189286924907496203)
,p_page_id=>4
,p_value_type=>'ITEM'
,p_value=>'P4_EMP_ID'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(189299268367406811)
,p_page_process_id=>wwv_flow_imp.id(188804872865380609)
,p_workflow_variable_id=>wwv_flow_imp.id(189286996600496204)
,p_page_id=>4
,p_value_type=>'ITEM'
,p_value=>'P4_CREATED_BY'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189195929749602373)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>44184048307617007
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189195101299602375)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(189182593521602424)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Maintain Documents'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44183219857617009
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Task Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Task Details'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(() => {',
'    apex.jQuery("a.taskActionMenu").each((index, item) => {',
'        const element = apex.jQuery(item);',
'        const actionName = decodeURI(element.attr("href")).match(/\$([^?]+)/)[1];',
'        const actionLabel = element.text();',
'        apex.actions.add({',
'            name: actionName,',
'            label: actionLabel,',
'            action: (event, element, args) => {',
'                if (args.do === "submit") {',
'                    apex.page.submit(actionName.toUpperCase());',
'                }',
'                else if (args.do === "openRegion") {',
'                    apex.theme.openRegion(actionName.toUpperCase());',
'                }',
'            }',
'        });',
'    });',
'});'))
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189202171198569790)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id,',
'       task_type,',
'       task_def_name,',
'       details_app_name,',
'       details_link_target,',
'       subject,',
'       initiator,',
'       actual_owner,',
'       priority,',
'       due_on,',
'       due_in,',
'       due_in_hours,',
'       due_code,',
'       state_code,',
'       is_completed,',
'       outcome,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_human_task.get_tasks (',
'                   p_context => ''SINGLE_TASK'',',
'                   p_task_id => :P5_TASK_ID ) );'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'BADGE_COL_WIDTH', 't-ContentRow-badge--auto',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_SIZE', 't-Badge--md',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&TASK_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}',
    '{if ACTUAL_OWNER/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.ASSIGNED_TO_USER 0=&ACTUAL_OWNER!HTML.}.',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    {case DUE_CODE/}',
    '        {when OVERDUE/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_HOUR/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_24_HOURS/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <span class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</span>',
    '        {otherwise/}',
    '            {if DUE_IN/}',
    '                <span role="separator" aria-label="&middot;"> &middot; </span>',
    '                &{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.',
    '            {endif/}',
    '    {endcase/}',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    {case PRIORITY/}',
    '        {when 1/}',
    '            <strong class="u-danger-text">&{APEX.TASK.PRIORITY.1.DESCRIPTION}.</strong>',
    '        {when 2/}',
    '            <span class="u-danger-text">&{APEX.TASK.PRIORITY.2.DESCRIPTION}.</span>',
    '        {when 3/}',
    '            &{APEX.TASK.PRIORITY.3.DESCRIPTION}.',
    '        {when 4/}',
    '            &{APEX.TASK.PRIORITY.4.DESCRIPTION}.',
    '        {when 5/}',
    '            &{APEX.TASK.PRIORITY.5.DESCRIPTION}.',
    '    {endcase/}',
    '{endif/}',
    '{if OUTCOME/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &OUTCOME.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&SUBJECT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189202550446569781)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189203055090569778)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189203579432569777)
,p_name=>'TASK_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189204049386569775)
,p_name=>'DETAILS_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189204518564569774)
,p_name=>'DETAILS_LINK_TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_LINK_TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189205049306569772)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189205494618569770)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189205996962569769)
,p_name=>'ACTUAL_OWNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_OWNER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189206553721569767)
,p_name=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189207028306569765)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189207408153569764)
,p_name=>'DUE_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189207939765569762)
,p_name=>'DUE_IN_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN_HOURS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189208447788569761)
,p_name=>'DUE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189208938209569759)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189209456405569757)
,p_name=>'IS_COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189209957819569756)
,p_name=>'OUTCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189210466355569754)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189210969191569752)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189211457050569751)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189211898572569749)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189212382225569748)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189212886155569746)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189219339355569724)
,p_plug_name=>'Delegate'
,p_region_name=>'DELEGATE'
,p_parent_plug_id=>wwv_flow_imp.id(189202171198569790)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_delegate )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189220900906569716)
,p_plug_name=>'Priority'
,p_region_name=>'SET_PRIORITY'
,p_parent_plug_id=>wwv_flow_imp.id(189202171198569790)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_priority )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189222808763569710)
,p_plug_name=>'Due'
,p_region_name=>'SET_DUE_DATE'
,p_parent_plug_id=>wwv_flow_imp.id(189202171198569790)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_due_date )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189224480814569704)
,p_plug_name=>'Request Information'
,p_region_name=>'REQUEST_INFO'
,p_parent_plug_id=>wwv_flow_imp.id(189202171198569790)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_request_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189226064730569699)
,p_plug_name=>'Submit Information'
,p_region_name=>'SUBMIT_INFO'
,p_parent_plug_id=>wwv_flow_imp.id(189202171198569790)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189227660375569693)
,p_plug_name=>'Invite Participant'
,p_region_name=>'ADD_OWNER'
,p_parent_plug_id=>wwv_flow_imp.id(189202171198569790)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189229247803569688)
,p_plug_name=>'Remove Participant'
,p_region_name=>'REMOVE_OWNER'
,p_parent_plug_id=>wwv_flow_imp.id(189202171198569790)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_remove_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189230879176569683)
,p_plug_name=>'Cancel Task'
,p_region_name=>'CANCEL'
,p_parent_plug_id=>wwv_flow_imp.id(189202171198569790)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Do you really want to cancel this task?</p>',
'<p>This will mark the task as no longer needed.</p>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_cancel )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189231988493569679)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select param_static_id,',
'       param_label,',
'       param_value,',
'       is_updatable,',
'       is_required',
'  from apex_task_parameters',
' where task_id = :P5_TASK_ID',
'   and is_visible = ''Y''',
'   and param_static_id not in (''DOCUMENT_ID'',''EMPLOYEE_ID'')',
''))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P5_TASK_ID'
,p_plug_query_num_rows=>20
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_task_parameters',
' where task_id = :P5_TASK_ID'))
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'HIDE_BORDERS', 'N',
  'OVERLINE', '&PARAM_LABEL.',
  'REMOVE_PADDING', 'N',
  'TITLE', '&PARAM_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189232465570569677)
,p_name=>'PARAM_STATIC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_STATIC_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189232966744569676)
,p_name=>'PARAM_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189233444436569674)
,p_name=>'PARAM_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189233952298569672)
,p_name=>'IS_UPDATABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_UPDATABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189234464826569671)
,p_name=>'IS_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189235413791569667)
,p_plug_name=>'Edit Parameter'
,p_parent_plug_id=>wwv_flow_imp.id(189231988493569679)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P5_CAN_UPDATE_PARAMS = ''Y'''
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(190414973386296279)
,p_plug_name=>'View documents'
,p_parent_plug_id=>wwv_flow_imp.id(189231988493569679)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCUMENT_ID,',
'       DESCRIPTION,',
'       FILENAME,',
'       MIME_TYPE,',
'       CREATED_BY,',
'       CREATED_ON,',
'       UPDATED_BY,',
'       UPDATED_ON,',
'       dbms_lob.getlength(document)  document,',
'       STATUS,',
'       APPROVED_BY,',
'       DOCUMENT_TYPE,',
'       ''fa fa-eye'' PREVIEW',
'  from DOCUMENT',
' where document_id = :P5_DOCUMENT_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P5_DOCUMENT_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(190416473427296294)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'WF_WS'
,p_internal_uid=>45404591985310928
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190416579118296295)
,p_db_column_name=>'DOCUMENT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Document Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190416607147296296)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190416729308296297)
,p_db_column_name=>'FILENAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Document Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190416828856296298)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190416907554296299)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190417053618296300)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190417175762296301)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190417219045296302)
,p_db_column_name=>'UPDATED_ON'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190417359366296303)
,p_db_column_name=>'DOCUMENT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Document'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:DOCUMENT:DOCUMENT:DOCUMENT_ID::MIME_TYPE:FILENAME:::attachment::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190417440844296304)
,p_db_column_name=>'STATUS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190417561096296305)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190417621959296306)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190417712262296307)
,p_db_column_name=>'PREVIEW'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Preview'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(190486208973475456)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'454744'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FILENAME:DOCUMENT_TYPE:DESCRIPTION:DOCUMENT:PREVIEW:CREATED_BY:CREATED_ON:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189238526332569655)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_string.get_initials(created_by) as user_initials,',
'       ''u-color-''||ora_hash(created_by,45)  as user_css_class,',
'       created_by                           as user_name,',
'       text                                 as comment_text,',
'       created_on                           as comment_date',
'  from apex_task_comments',
' where nvl(:P5_ALL_COMMENTS, ''N'') = ''N''',
'       and task_id = :P5_TASK_ID',
'    or nvl(:P5_ALL_COMMENTS, ''N'') = ''Y''',
'       and task_id in ( ',
'                select task_id',
'                  from apex_tasks',
'               connect by prior previous_task_id = task_id',
'                 start with task_id = :P5_TASK_ID )',
' order by created_on desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P5_TASK_ID,P5_ALL_COMMENTS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>'No Comments'
,p_no_data_found_icon_classes=>'fa-comments-o fa-lg'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'AVATAR_CSS_CLASSES', '&USER_CSS_CLASS.',
  'AVATAR_DESCRIPTION', '&USER_NAME.',
  'AVATAR_INITIALS', 'USER_INITIALS',
  'AVATAR_SHAPE', 't-Avatar--circle',
  'AVATAR_TYPE', 'initials',
  'COMMENT_DATE', 'COMMENT_DATE',
  'COMMENT_TEXT', 'COMMENT_TEXT',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--chat',
  'USER_NAME', 'USER_NAME')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189238945835569654)
,p_name=>'USER_INITIALS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_INITIALS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189239468634569652)
,p_name=>'USER_CSS_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_CSS_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189239938934569650)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189240405086569649)
,p_name=>'COMMENT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189240973318569647)
,p_name=>'COMMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189242665418569640)
,p_plug_name=>'Add Comment'
,p_parent_plug_id=>wwv_flow_imp.id(189238526332569655)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_comment )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189244272647569634)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_msg,',
'       event_creator,',
'       event_timestamp',
'  from table ( apex_human_task.get_task_history (',
'                   p_task_id     => :P5_TASK_ID,',
'                   p_include_all => :P5_ALL_HISTORY ) )',
' order by event_timestamp desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P5_TASK_ID,P5_ALL_HISTORY'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'COMMENT_DATE', 'EVENT_TIMESTAMP',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'EVENT_CREATOR')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189244638435569633)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189245159937569631)
,p_name=>'EVENT_CREATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_CREATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189245610106569630)
,p_name=>'EVENT_TIMESTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TIMESTAMP'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189246543719569626)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189220166430569720)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189219339355569724)
,p_button_name=>'CLOSE_DELEGATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189222060368569712)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189220900906569716)
,p_button_name=>'CLOSE_SET_PRIORITY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189223614941569707)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189222808763569710)
,p_button_name=>'CLOSE_SET_DUE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189225274365569701)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189224480814569704)
,p_button_name=>'CLOSE_REQUEST_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189226840403569696)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189226064730569699)
,p_button_name=>'CLOSE_SUBMIT_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189228436831569691)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189227660375569693)
,p_button_name=>'CLOSE_INVITE_PARTICIPANT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189230056541569685)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189229247803569688)
,p_button_name=>'CLOSE_REMOVE_PARTICIPANT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189231195954569681)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189230879176569683)
,p_button_name=>'CLOSE_CANCEL_TASK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189237688122569658)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189235413791569667)
,p_button_name=>'CLOSE_UPDATE_PARAMETER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189243432200569637)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189242665418569640)
,p_button_name=>'CLOSE_ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189246975654569625)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189246543719569626)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189247306710569624)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189246543719569626)
,p_button_name=>'CLAIM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Claim Task'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_claim )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189247771986569622)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(189246543719569626)
,p_button_name=>'REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reject'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_reject )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-times-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189248120758569620)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(189246543719569626)
,p_button_name=>'APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_approve )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189241392795569645)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189238526332569655)
,p_button_name=>'OPEN_DIALOG_ADD_COMMENT'
,p_button_static_id=>'OPEN_DIALOG_ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Comment'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'not apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )',
'and apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_comment )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189220532388569718)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189219339355569724)
,p_button_name=>'DELEGATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delegate'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189222420832569711)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189220900906569716)
,p_button_name=>'SET_PRIORITY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Priority'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189224007336569705)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189222808763569710)
,p_button_name=>'SET_DUE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Due Date'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189225592525569700)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189224480814569704)
,p_button_name=>'REQUEST_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189227259821569695)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189226064730569699)
,p_button_name=>'SUBMIT_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189228865931569689)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189227660375569693)
,p_button_name=>'INVITE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Invite Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189230413936569684)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189229247803569688)
,p_button_name=>'REMOVE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189231585149569680)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189230879176569683)
,p_button_name=>'CANCEL_TASK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel Task'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-danger'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189238113875569657)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189235413791569667)
,p_button_name=>'UPDATE_PARAMETER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189241810006569643)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189238526332569655)
,p_button_name=>'OPEN_DIALOG_SUBMIT_INFORMATION'
,p_button_static_id=>'OPEN_DIALOG_SUBMIT_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189243842415569636)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189242665418569640)
,p_button_name=>'ADD_COMMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Comment'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(189276447974569528)
,p_branch_name=>'Reload Dialog'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.::P5_TASK_ID:&P5_TASK_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189200970844569797)
,p_name=>'P5_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189201284121569795)
,p_name=>'P5_CAN_UPDATE_PARAMS'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189219758988569722)
,p_name=>'P5_NEW_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189219339355569724)
,p_prompt=>'New Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( ',
'           apex_human_task.get_task_delegates ( ',
'               p_task_id => :P5_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189221298453569715)
,p_name=>'P5_NEW_PRIORITY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189220900906569716)
,p_prompt=>'New Priority'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select priority',
'  from apex_tasks',
' where task_id = :P5_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189223251721569708)
,p_name=>'P5_NEW_DUE_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189222808763569710)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Due Date'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(due_on, ''YYYY-MM-DD HH24:MI'')',
'  from apex_tasks',
' where task_id = :P5_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'INLINE',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189224812750569703)
,p_name=>'P5_REQUEST_INFO_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189224480814569704)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189226473741569697)
,p_name=>'P5_SUBMIT_INFO_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189226064730569699)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189227990610569692)
,p_name=>'P5_NEW_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189227660375569693)
,p_prompt=>'New Potential Owner'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189229668978569687)
,p_name=>'P5_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189229247803569688)
,p_prompt=>'Potential Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( ',
'           apex_human_task.get_task_delegates ( ',
'               p_task_id => :P5_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189235837997569665)
,p_name=>'P5_PARAM_STATIC_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189235413791569667)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189236113158569664)
,p_name=>'P5_PARAM_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189235413791569667)
,p_prompt=>'Parameter'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189236552823569663)
,p_name=>'P5_PARAM_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189235413791569667)
,p_prompt=>'Current Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189236938708569661)
,p_name=>'P5_NEW_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(189235413791569667)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189237296704569660)
,p_name=>'P5_IS_REQUIRED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(189235413791569667)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189242276802569642)
,p_name=>'P5_ALL_COMMENTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189238526332569655)
,p_prompt=>'Include comments from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P5_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189242993479569639)
,p_name=>'P5_COMMENT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189242665418569640)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189246125738569628)
,p_name=>'P5_ALL_HISTORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189244272647569634)
,p_prompt=>'Include history from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P5_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190414682416296277)
,p_name=>'P5_DOCUMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189231988493569679)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(190414809205296278)
,p_computation_sequence=>10
,p_computation_item=>'P5_DOCUMENT_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select param_value',
'  from apex_task_parameters',
' where task_id = :P5_TASK_ID',
'   and param_static_id = ''DOCUMENT_ID''',
''))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(189201780751569794)
,p_computation_sequence=>10
,p_computation_item=>'P5_CAN_UPDATE_PARAMS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case ',
'    when apex_human_task.is_allowed (',
'            p_task_id   => :P5_TASK_ID,',
'            p_operation => apex_human_task.c_task_op_set_params )',
'    then ''Y''',
'    else ''N''',
'end'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(189267254456569559)
,p_validation_name=>'Delegate'
,p_validation_sequence=>10
,p_validation=>'P5_NEW_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(189220532388569718)
,p_associated_item=>wwv_flow_imp.id(189219758988569722)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(189267658154569558)
,p_validation_name=>'Request Information'
,p_validation_sequence=>20
,p_validation=>'P5_REQUEST_INFO_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a message'
,p_when_button_pressed=>wwv_flow_imp.id(189225592525569700)
,p_associated_item=>wwv_flow_imp.id(189224812750569703)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(189268027311569556)
,p_validation_name=>'Submit Information'
,p_validation_sequence=>30
,p_validation=>'P5_SUBMIT_INFO_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a message'
,p_when_button_pressed=>wwv_flow_imp.id(189227259821569695)
,p_associated_item=>wwv_flow_imp.id(189226473741569697)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(189268429155569555)
,p_validation_name=>'Invite Participant'
,p_validation_sequence=>40
,p_validation=>'P5_NEW_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(189228865931569689)
,p_associated_item=>wwv_flow_imp.id(189227990610569692)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(189268821480569554)
,p_validation_name=>'Remove Participant'
,p_validation_sequence=>50
,p_validation=>'P5_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(189230413936569684)
,p_associated_item=>wwv_flow_imp.id(189229668978569687)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(189269216913569553)
,p_validation_name=>'Update Parameter'
,p_validation_sequence=>60
,p_validation=>'P5_NEW_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a new parameter value'
,p_validation_condition=>':REQUEST = ''UPDATE_PARAMETER'' and :P5_IS_REQUIRED = ''Y'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(189236938708569661)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(189269666144569551)
,p_validation_name=>'Add Comment'
,p_validation_sequence=>70
,p_validation=>'P5_COMMENT_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a comment'
,p_when_button_pressed=>wwv_flow_imp.id(189243842415569636)
,p_associated_item=>wwv_flow_imp.id(189242993479569639)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189248560661569618)
,p_name=>'Refresh - Comments'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_ALL_COMMENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189248914936569617)
,p_event_id=>wwv_flow_imp.id(189248560661569618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189238526332569655)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189250308151569612)
,p_name=>'Edit Parameter'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.parameter'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189250742219569611)
,p_event_id=>wwv_flow_imp.id(189250308151569612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189235413791569667)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189251243410569609)
,p_event_id=>wwv_flow_imp.id(189250308151569612)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(189238113875569657)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189251781185569606)
,p_event_id=>wwv_flow_imp.id(189250308151569612)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PARAM_STATIC_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189252225492569604)
,p_event_id=>wwv_flow_imp.id(189250308151569612)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PARAM_LABEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-label")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189252736605569603)
,p_event_id=>wwv_flow_imp.id(189250308151569612)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PARAM_VALUE,P5_NEW_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-value")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189253231642569601)
,p_event_id=>wwv_flow_imp.id(189250308151569612)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_IS_REQUIRED'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-required")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189253773959569600)
,p_event_id=>wwv_flow_imp.id(189250308151569612)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189265837847569563)
,p_name=>'Disable/Enable Update Button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_NEW_VALUE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.items.P5_NEW_VALUE.value != apex.items.P5_PARAM_VALUE.value'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189266219536569562)
,p_event_id=>wwv_flow_imp.id(189265837847569563)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(189238113875569657)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189266760042569560)
,p_event_id=>wwv_flow_imp.id(189265837847569563)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(189238113875569657)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189249407774569615)
,p_name=>'Refresh - History'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_ALL_HISTORY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189249847643569614)
,p_event_id=>wwv_flow_imp.id(189249407774569615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189244272647569634)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189254251366569598)
,p_name=>'Add Comment'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189241392795569645)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189254651176569597)
,p_event_id=>wwv_flow_imp.id(189254251366569598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189242665418569640)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189255085625569596)
,p_name=>'Submit Information'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189241810006569643)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189255560722569594)
,p_event_id=>wwv_flow_imp.id(189255085625569596)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189226064730569699)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189256058252569593)
,p_name=>'Cancel'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189246975654569625)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189256386612569592)
,p_event_id=>wwv_flow_imp.id(189256058252569593)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189256971799569590)
,p_name=>'Close Delegate Dialog'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189220166430569720)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189257376195569589)
,p_event_id=>wwv_flow_imp.id(189256971799569590)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189219339355569724)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189257859224569588)
,p_name=>'Close Change Priority Dialog'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189222060368569712)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189258182951569586)
,p_event_id=>wwv_flow_imp.id(189257859224569588)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189220900906569716)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189258761033569585)
,p_name=>'Close Change Due Date Dialog'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189223614941569707)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189259128132569584)
,p_event_id=>wwv_flow_imp.id(189258761033569585)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189222808763569710)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189259608629569582)
,p_name=>'Close Request Information Dialog'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189225274365569701)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189260001138569581)
,p_event_id=>wwv_flow_imp.id(189259608629569582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189224480814569704)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189260503442569580)
,p_name=>'Close Submit Information Dialog'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189226840403569696)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189260939923569578)
,p_event_id=>wwv_flow_imp.id(189260503442569580)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189226064730569699)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189261420070569577)
,p_name=>'Close Invite Participant Dialog'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189228436831569691)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189261827347569576)
,p_event_id=>wwv_flow_imp.id(189261420070569577)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189227660375569693)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189262360346569574)
,p_name=>'Close Remove Participant Dialog'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189230056541569685)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189262760009569573)
,p_event_id=>wwv_flow_imp.id(189262360346569574)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189229247803569688)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189263221421569571)
,p_name=>'Close Cancel Task Dialog'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189231195954569681)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189263617348569570)
,p_event_id=>wwv_flow_imp.id(189263221421569571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189230879176569683)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189264116153569569)
,p_name=>'Close Edit Parameter Dialog'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189237688122569658)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189264575460569567)
,p_event_id=>wwv_flow_imp.id(189264116153569569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189235413791569667)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189265014451569566)
,p_name=>'Close Add Comment Dialog'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189243432200569637)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189265410193569565)
,p_event_id=>wwv_flow_imp.id(189265014451569566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189242665418569640)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189270066867569550)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Renew Task'
,p_attribute_01=>'RENEW_TASK'
,p_attribute_02=>'P5_TASK_ID'
,p_attribute_09=>'P5_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RENEW'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Task renewed'
,p_internal_uid=>44258185425584184
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189270445440569549)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Claim'
,p_attribute_01=>'CLAIM_TASK'
,p_attribute_02=>'P5_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189247306710569624)
,p_internal_uid=>44258563998584183
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189270836149569547)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Approve'
,p_attribute_01=>'APPROVE_TASK'
,p_attribute_02=>'P5_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189248120758569620)
,p_process_success_message=>'Task approved'
,p_internal_uid=>44258954707584181
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189271181548569546)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Reject'
,p_attribute_01=>'REJECT_TASK'
,p_attribute_02=>'P5_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189247771986569622)
,p_process_success_message=>'Task rejected'
,p_internal_uid=>44259300106584180
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189271647421569545)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Release'
,p_attribute_01=>'RELEASE_TASK'
,p_attribute_02=>'P5_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RELEASE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Task released - can now be claimed by others'
,p_internal_uid=>44259765979584179
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189272020155569543)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Delegate'
,p_attribute_01=>'DELEGATE_TASK'
,p_attribute_02=>'P5_TASK_ID'
,p_attribute_04=>'P5_NEW_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189220532388569718)
,p_process_success_message=>'Task delegated to &P5_NEW_OWNER!HTML.'
,p_internal_uid=>44260138713584177
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189272447654569542)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Priority'
,p_attribute_01=>'SET_TASK_PRIORITY'
,p_attribute_02=>'P5_TASK_ID'
,p_attribute_05=>'P5_NEW_PRIORITY'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189222420832569711)
,p_process_success_message=>'Task priority changed'
,p_internal_uid=>44260566212584176
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189272831515569540)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Due Date'
,p_attribute_01=>'SET_DUE_DATE'
,p_attribute_02=>'P5_TASK_ID'
,p_attribute_06=>'P5_NEW_DUE_DATE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189224007336569705)
,p_process_success_message=>'Task due date updated'
,p_internal_uid=>44260950073584174
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189273237407569539)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Request Information'
,p_attribute_01=>'REQUEST_INFO'
,p_attribute_02=>'P5_TASK_ID'
,p_attribute_03=>'&P5_REQUEST_INFO_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189225592525569700)
,p_process_success_message=>'Information requested'
,p_internal_uid=>44261355965584173
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189273652098569538)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Submit Information'
,p_attribute_01=>'SUBMIT_INFO'
,p_attribute_02=>'P5_TASK_ID'
,p_attribute_03=>'&P5_SUBMIT_INFO_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189227259821569695)
,p_process_success_message=>'Information submitted'
,p_internal_uid=>44261770656584172
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189274070150569537)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Invite Participant'
,p_attribute_01=>'ADD_TASK_POTENTIAL_OWNER'
,p_attribute_02=>'P5_TASK_ID'
,p_attribute_04=>'P5_NEW_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189228865931569689)
,p_process_success_message=>'Participant &P5_NEW_POTENTIAL_OWNER!HTML. added to task as potential owner'
,p_internal_uid=>44262188708584171
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189274408389569535)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Remove Participant'
,p_attribute_01=>'REMOVE_POTENTIAL_OWNER'
,p_attribute_02=>'P5_TASK_ID'
,p_attribute_04=>'P5_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189230413936569684)
,p_process_success_message=>'Participant &P5_POTENTIAL_OWNER!HTML. removed from task.'
,p_internal_uid=>44262526947584169
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189274871916569534)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Cancel Task'
,p_attribute_01=>'CANCEL_TASK'
,p_attribute_02=>'P5_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189231585149569680)
,p_process_success_message=>'Task canceled'
,p_internal_uid=>44262990474584168
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189275250170569533)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Update Parameter'
,p_attribute_01=>'SET_TASK_PARAMS'
,p_attribute_02=>'P5_TASK_ID'
,p_attribute_10=>'P5_PARAM_STATIC_ID'
,p_attribute_11=>'P5_NEW_VALUE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189238113875569657)
,p_process_success_message=>'Parameter updated'
,p_internal_uid=>44263368728584167
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189275628102569532)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Add Comment'
,p_attribute_01=>'ADD_TASK_COMMENT'
,p_attribute_02=>'P5_TASK_ID'
,p_attribute_03=>'&P5_COMMENT_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189243842415569636)
,p_process_success_message=>'Comment added'
,p_internal_uid=>44263746660584166
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189275988721569530)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLAIM,SET_PRIORITY,SET_DUE,INVITE_PARTICIPANT,REMOVE_PARTICIPANT,RENEW,UPDATE_PARAMETER,SAVE,ADD_COMMENT'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_internal_uid=>44264107279584164
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189213442164569744)
,p_region_id=>wwv_flow_imp.id(189202171198569790)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362317865359806322
,p_label=>'Actions'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-ellipsis-v'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189234888152569669)
,p_region_id=>wwv_flow_imp.id(189231988493569679)
,p_position_id=>362316004162771045
,p_display_sequence=>10
,p_template_id=>362316605839802174
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="parameter" data-id="&PARAM_STATIC_ID!ATTR." data-label="&PARAM_LABEL!ATTR." data-value="&PARAM_VALUE!ATTR." data-required="&IS_REQUIRED!ATTR." aria-haspopup="dialog"'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':IS_UPDATABLE = ''Y'' and :P5_CAN_UPDATE_PARAMS = ''Y'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(189213972085569743)
,p_component_action_id=>wwv_flow_imp.id(189213442164569744)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Renew Task'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$renew?do=submit'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_renew )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(189214502557569739)
,p_component_action_id=>wwv_flow_imp.id(189213442164569744)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Release'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$release?do=submit'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_release )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(189215102904569737)
,p_component_action_id=>wwv_flow_imp.id(189213442164569744)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Delegate'
,p_display_sequence=>30
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$delegate?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_delegate )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(189215770626569735)
,p_component_action_id=>wwv_flow_imp.id(189213442164569744)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Change Priority'
,p_display_sequence=>40
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$set_priority?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_priority )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(189216289402569733)
,p_component_action_id=>wwv_flow_imp.id(189213442164569744)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Change Due Date'
,p_display_sequence=>50
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$set_due_date?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_due_date )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(189216935409569731)
,p_component_action_id=>wwv_flow_imp.id(189213442164569744)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Request Information'
,p_display_sequence=>60
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$request_info?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_request_info )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(189217577318569729)
,p_component_action_id=>wwv_flow_imp.id(189213442164569744)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Invite Participant'
,p_display_sequence=>70
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$add_owner?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_owner )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(189218086743569727)
,p_component_action_id=>wwv_flow_imp.id(189213442164569744)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Remove Participant'
,p_display_sequence=>80
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$remove_owner?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_remove_owner )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(189218700247569725)
,p_component_action_id=>wwv_flow_imp.id(189213442164569744)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Cancel Task'
,p_display_sequence=>90
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$cancel?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P5_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_cancel )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'My Tasks'
,p_alias=>'MY-TASKS'
,p_step_title=>'My Tasks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189335620707104994)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(188985754773789332)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189336710185104988)
,p_plug_name=>'My Tasks - Smart Filters'
,p_parent_plug_id=>wwv_flow_imp.id(189335620707104994)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(189336879704104988)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'maximum_suggestion_chips', '0',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189336879704104988)
,p_plug_name=>'My Tasks - Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id,',
'       task_type,',
'       task_def_name,',
'       details_app_name,',
'       details_link_target,',
'       subject,',
'       initiator,',
'       actual_owner,',
'       priority,',
'       due_on,',
'       due_in,',
'       due_in_hours,',
'       due_code,',
'       state_code,',
'       is_completed,',
'       outcome,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_human_task.get_tasks (',
'                   p_context            => ''MY_TASKS'',',
'                   p_show_expired_tasks => :P6_SHOW_EXPIRED',
'                   , p_application_id => :APP_ID',
'                   ) )'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "orderBys": [',
'        {',
'            "key": "CREATED_ON",',
'            "expr": "created_on desc"',
'        },',
'        {',
'            "key": "DUE_ON",',
'            "expr": "priority asc, due_on asc nulls last"',
'        }',
'    ],',
'    "itemName": "P6_SORT_BY"',
'}'))
,p_optimizer_hint=>'APEX$USE_NO_GROUPING_SETS'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P6_SHOW_EXPIRED'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No Tasks'
,p_no_data_found_icon_classes=>'fa-clipboard-check-alt fa-lg'
,p_show_total_row_count=>false
,p_entity_title_singular=>'task'
,p_entity_title_plural=>'tasks'
,p_landmark_type=>'main'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&TASK_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    {case DUE_CODE/}',
    '        {when OVERDUE/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_HOUR/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_24_HOURS/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <span class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</span>',
    '        {otherwise/}',
    '            {if DUE_IN/}',
    '                <span role="separator" aria-label="&middot;"> &middot; </span>',
    '                &{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.',
    '            {endif/}',
    '    {endcase/}',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    {case PRIORITY/}',
    '        {when 1/}',
    '            <strong class="u-danger-text">&{APEX.TASK.PRIORITY.1.DESCRIPTION}.</strong>',
    '        {when 2/}',
    '            <span class="u-danger-text">&{APEX.TASK.PRIORITY.2.DESCRIPTION}.</span>',
    '        {when 3/}',
    '            &{APEX.TASK.PRIORITY.3.DESCRIPTION}.',
    '        {when 4/}',
    '            &{APEX.TASK.PRIORITY.4.DESCRIPTION}.',
    '        {when 5/}',
    '            &{APEX.TASK.PRIORITY.5.DESCRIPTION}.',
    '    {endcase/}',
    '{endif/}',
    '')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'HIDE_BORDERS', 'N',
  'REMOVE_PADDING', 'N',
  'TITLE', '&SUBJECT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189347424583104951)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189347971802104949)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189348392603104947)
,p_name=>'TASK_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189348909692104946)
,p_name=>'DETAILS_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189349412903104944)
,p_name=>'DETAILS_LINK_TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_LINK_TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189349962057104943)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189350479043104941)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189350916110104939)
,p_name=>'ACTUAL_OWNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_OWNER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189351415148104938)
,p_name=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189351919619104936)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189352404537104935)
,p_name=>'DUE_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189352906462104933)
,p_name=>'DUE_IN_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189353477975104932)
,p_name=>'DUE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189353884257104930)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189354431768104929)
,p_name=>'IS_COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189354963661104927)
,p_name=>'OUTCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189355452001104926)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189355972230104924)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189356421890104922)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189356960926104921)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189357472605104919)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189357976724104918)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189336358829104990)
,p_name=>'P6_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189337205037104987)
,p_name=>'P6_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189336710185104988)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189337655564104985)
,p_name=>'P6_DUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189336710185104988)
,p_prompt=>'Due'
,p_source=>'DUE_IN_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.DUE'
,p_lov=>'.'||wwv_flow_imp.id(189337752009104985)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189340682072104974)
,p_name=>'P6_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189336710185104988)
,p_prompt=>'Type'
,p_source=>'TASK_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_type )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189341440458104972)
,p_name=>'P6_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(189336710185104988)
,p_prompt=>'Category'
,p_source=>'TASK_DEF_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189341849006104970)
,p_name=>'P6_PRIORITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(189336710185104988)
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189342233848104969)
,p_name=>'P6_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(189336710185104988)
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.STATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_state )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189342974667104966)
,p_name=>'P6_OUTCOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(189336710185104988)
,p_prompt=>'Outcome'
,p_source=>'OUTCOME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189343346049104965)
,p_name=>'P6_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(189336710185104988)
,p_prompt=>'Application'
,p_source=>'DETAILS_APP_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189343661975104964)
,p_name=>'P6_INITIATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(189336710185104988)
,p_prompt=>'Initiator'
,p_source=>'INITIATOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189344053080104962)
,p_name=>'P6_INITIATED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(189336710185104988)
,p_prompt=>'Initiated'
,p_source=>'CREATED_AGO_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.INITIATED'
,p_lov=>'.'||wwv_flow_imp.id(189344114151104962)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189346747489104954)
,p_name=>'P6_OWNER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(189336710185104988)
,p_prompt=>'Owner'
,p_source=>'ACTUAL_OWNER'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189360400550104910)
,p_name=>'P6_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189336879704104988)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sort by'
,p_source=>'DUE_ON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Create Date;CREATED_ON,Due Date;DUE_ON'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-sort-amount-desc'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189360822302104908)
,p_name=>'P6_SHOW_EXPIRED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189336879704104988)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Show expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189361269518104907)
,p_name=>'Claim'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.claim'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189361627220104905)
,p_event_id=>wwv_flow_imp.id(189361269518104907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189362087033104903)
,p_event_id=>wwv_flow_imp.id(189361269518104907)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.claim_task (',
'    p_task_id   => :P6_TASK_ID );',
''))
,p_attribute_02=>'P6_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189362602467104901)
,p_event_id=>wwv_flow_imp.id(189361269518104907)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task claimed'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189363095399104900)
,p_event_id=>wwv_flow_imp.id(189361269518104907)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189336710185104988)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189363680606104898)
,p_event_id=>wwv_flow_imp.id(189361269518104907)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189336879704104988)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189364107897104897)
,p_name=>'Approve'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.approve'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189364549300104895)
,p_event_id=>wwv_flow_imp.id(189364107897104897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189365013758104894)
,p_event_id=>wwv_flow_imp.id(189364107897104897)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.approve_task (',
'    p_task_id   => :P6_TASK_ID,',
'    p_autoclaim => true );'))
,p_attribute_02=>'P6_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189365562579104892)
,p_event_id=>wwv_flow_imp.id(189364107897104897)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task approved'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189366003540104890)
,p_event_id=>wwv_flow_imp.id(189364107897104897)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189336710185104988)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189366543547104889)
,p_event_id=>wwv_flow_imp.id(189364107897104897)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189336879704104988)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189369961071104879)
,p_name=>'Refresh - My Tasks - Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(189336879704104988)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189370341062104878)
,p_event_id=>wwv_flow_imp.id(189369961071104879)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189336879704104988)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189370787851104876)
,p_event_id=>wwv_flow_imp.id(189369961071104879)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189336710185104988)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189367015460104888)
,p_name=>'Reject'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.reject'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189367463357104886)
,p_event_id=>wwv_flow_imp.id(189367015460104888)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189367905791104885)
,p_event_id=>wwv_flow_imp.id(189367015460104888)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.reject_task (',
'    p_task_id   => :P6_TASK_ID,',
'    p_autoclaim => true );'))
,p_attribute_02=>'P6_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189368442848104883)
,p_event_id=>wwv_flow_imp.id(189367015460104888)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task rejected'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189368949386104882)
,p_event_id=>wwv_flow_imp.id(189367015460104888)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189336710185104988)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189369460905104880)
,p_event_id=>wwv_flow_imp.id(189367015460104888)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189336879704104988)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189371283621104875)
,p_name=>'Refresh - My Tasks - Report'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_SHOW_EXPIRED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189371748053104874)
,p_event_id=>wwv_flow_imp.id(189371283621104875)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189336879704104988)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189372258509104872)
,p_event_id=>wwv_flow_imp.id(189371283621104875)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189336710185104988)
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189358461344104916)
,p_region_id=>wwv_flow_imp.id(189336879704104988)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'&DETAILS_LINK_TARGET.'
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189358936836104915)
,p_region_id=>wwv_flow_imp.id(189336879704104988)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362316605839802174
,p_label=>'Claim'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-user-plus u-hot-text'
,p_action_css_classes=>'claim'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':STATE_CODE = ''UNASSIGNED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189359412438104913)
,p_region_id=>wwv_flow_imp.id(189336879704104988)
,p_position_id=>362316004162771045
,p_display_sequence=>30
,p_template_id=>362316605839802174
,p_label=>'Approve'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-check-square u-success-text'
,p_action_css_classes=>'approve'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':TASK_TYPE = ''APPROVAL'' and :STATE_CODE != ''INFO_REQUESTED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189359934381104911)
,p_region_id=>wwv_flow_imp.id(189336879704104988)
,p_position_id=>362316004162771045
,p_display_sequence=>40
,p_template_id=>362316605839802174
,p_label=>'Reject'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-times u-danger-text'
,p_action_css_classes=>'reject'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':TASK_TYPE = ''APPROVAL'' and :STATE_CODE != ''INFO_REQUESTED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Tasks Initiated by Me'
,p_alias=>'TASKS-INITIATED-BY-ME'
,p_step_title=>'Tasks Initiated by Me'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189373360842102778)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(188985754773789332)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189374435612102773)
,p_plug_name=>'Initiated by Me - Smart Filters'
,p_parent_plug_id=>wwv_flow_imp.id(189373360842102778)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(189374561971102773)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'maximum_suggestion_chips', '0',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189374561971102773)
,p_plug_name=>'Initiated by Me - Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id,',
'       task_type,',
'       task_def_name,',
'       details_app_name,',
'       details_link_target,',
'       subject,',
'       initiator,',
'       actual_owner,',
'       priority,',
'       due_on,',
'       due_in,',
'       due_in_hours,',
'       due_code,',
'       state_code,',
'       is_completed,',
'       outcome,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_human_task.get_tasks (',
'                   p_context            => ''INITIATED_BY_ME'',',
'                   p_show_expired_tasks => :P7_SHOW_EXPIRED',
'                  , p_application_id => :APP_ID',
'                   ) )'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "orderBys": [',
'        {',
'            "key": "CREATED_ON",',
'            "expr": "created_on desc"',
'        },',
'        {',
'            "key": "DUE_ON",',
'            "expr": "priority asc, due_on asc nulls last"',
'        }',
'    ],',
'    "itemName": "P7_SORT_BY"',
'}'))
,p_optimizer_hint=>'APEX$USE_NO_GROUPING_SETS'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P7_SHOW_EXPIRED'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No Tasks'
,p_no_data_found_icon_classes=>'fa-clipboard-check-alt fa-lg'
,p_show_total_row_count=>false
,p_entity_title_singular=>'task'
,p_entity_title_plural=>'tasks'
,p_landmark_type=>'main'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&TASK_DEF_NAME!HTML.</strong>',
    '{if ACTUAL_OWNER/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.ASSIGNED_TO_USER 0=&ACTUAL_OWNER!HTML.}.',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    {case DUE_CODE/}',
    '        {when OVERDUE/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_HOUR/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_24_HOURS/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <span class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</span>',
    '        {otherwise/}',
    '            {if DUE_IN/}',
    '                <span role="separator" aria-label="&middot;"> &middot; </span>',
    '                &{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.',
    '            {endif/}',
    '    {endcase/}',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    {case PRIORITY/}',
    '        {when 1/}',
    '            <strong class="u-danger-text">&{APEX.TASK.PRIORITY.1.DESCRIPTION}.</strong>',
    '        {when 2/}',
    '            <span class="u-danger-text">&{APEX.TASK.PRIORITY.2.DESCRIPTION}.</span>',
    '        {when 3/}',
    '            &{APEX.TASK.PRIORITY.3.DESCRIPTION}.',
    '        {when 4/}',
    '            &{APEX.TASK.PRIORITY.4.DESCRIPTION}.',
    '        {when 5/}',
    '            &{APEX.TASK.PRIORITY.5.DESCRIPTION}.',
    '    {endcase/}',
    '{endif/}',
    '{if OUTCOME/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &OUTCOME.',
    '{endif/}',
    '')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'HIDE_BORDERS', 'N',
  'REMOVE_PADDING', 'N',
  'TITLE', '&SUBJECT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189379482284102753)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189380060377102751)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189380573766102749)
,p_name=>'TASK_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189381080030102747)
,p_name=>'DETAILS_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189381503285102745)
,p_name=>'DETAILS_LINK_TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_LINK_TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189382065451102743)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189382486690102742)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189383070098102740)
,p_name=>'ACTUAL_OWNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_OWNER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189383515600102738)
,p_name=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189384031415102737)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189384524862102735)
,p_name=>'DUE_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189384983258102733)
,p_name=>'DUE_IN_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189385532370102732)
,p_name=>'DUE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189386028286102730)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189386492634102728)
,p_name=>'IS_COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189387063023102727)
,p_name=>'OUTCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189387496128102725)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189388079032102723)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189388530921102722)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189389019477102720)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189389573410102718)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189390047748102717)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189374032936102775)
,p_name=>'P7_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189374883212102772)
,p_name=>'P7_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189374435612102773)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189375323619102770)
,p_name=>'P7_DUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189374435612102773)
,p_prompt=>'Due'
,p_source=>'DUE_IN_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.DUE'
,p_lov=>'.'||wwv_flow_imp.id(189337752009104985)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189375729339102768)
,p_name=>'P7_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189374435612102773)
,p_prompt=>'Type'
,p_source=>'TASK_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_type )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189376095950102767)
,p_name=>'P7_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(189374435612102773)
,p_prompt=>'Category'
,p_source=>'TASK_DEF_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189376501350102765)
,p_name=>'P7_PRIORITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(189374435612102773)
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189376843068102764)
,p_name=>'P7_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(189374435612102773)
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.STATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_state )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189377248461102762)
,p_name=>'P7_OUTCOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(189374435612102773)
,p_prompt=>'Outcome'
,p_source=>'OUTCOME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189377634834102761)
,p_name=>'P7_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(189374435612102773)
,p_prompt=>'Application'
,p_source=>'DETAILS_APP_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189378066625102759)
,p_name=>'P7_INITIATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(189374435612102773)
,p_prompt=>'Initiator'
,p_source=>'INITIATOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189378438899102758)
,p_name=>'P7_INITIATED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(189374435612102773)
,p_prompt=>'Initiated'
,p_source=>'CREATED_AGO_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.INITIATED'
,p_lov=>'.'||wwv_flow_imp.id(189344114151104962)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189378834211102756)
,p_name=>'P7_OWNER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(189374435612102773)
,p_prompt=>'Owner'
,p_source=>'ACTUAL_OWNER'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189390982424102713)
,p_name=>'P7_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189374561971102773)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sort by'
,p_source=>'DUE_ON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Create Date;CREATED_ON,Due Date;DUE_ON'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-sort-amount-desc'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189391418485102711)
,p_name=>'P7_SHOW_EXPIRED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189374561971102773)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Show expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189391813821102710)
,p_name=>'Refresh - Initiated by Me - Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(189374561971102773)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189392264409102708)
,p_event_id=>wwv_flow_imp.id(189391813821102710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189374561971102773)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189392758348102706)
,p_event_id=>wwv_flow_imp.id(189391813821102710)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189374435612102773)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189393267540102705)
,p_name=>'Refresh - Initiated by Me - Report'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SHOW_EXPIRED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189393668774102704)
,p_event_id=>wwv_flow_imp.id(189393267540102705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189374561971102773)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189394147880102702)
,p_event_id=>wwv_flow_imp.id(189393267540102705)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189374435612102773)
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189390542876102715)
,p_region_id=>wwv_flow_imp.id(189374561971102773)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'&DETAILS_LINK_TARGET.'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Workflows Initiated By Me'
,p_alias=>'WORKFLOWS-INITIATED-BY-ME'
,p_step_title=>'Workflows Initiated By Me'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189395343862095978)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(188985754773789332)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189396382256095973)
,p_plug_name=>'Initiated by Me - Smart Filters'
,p_parent_plug_id=>wwv_flow_imp.id(189395343862095978)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(189396576221095973)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189396576221095973)
,p_plug_name=>'Initiated by Me - Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workflow_id,',
'       workflow_def_name,',
'       workflow_def_app_name,',
'       title,',
'       initiator,',
'       state_code,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''INITIATED_BY_ME''',
'                   , p_application_id => :APP_ID',
'                   ) )'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "orderBys": [',
'        {',
'            "key": "CREATED_ON",',
'            "expr": "created_on desc"',
'        },',
'        {',
'            "key": "LAST_UPDATED_ON",',
'            "expr": "last_updated_on desc"',
'        }',
'    ],',
'    "itemName": "P8_SORT_BY"',
'}'))
,p_optimizer_hint=>'APEX$USE_NO_GROUPING_SETS'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No Workflows'
,p_no_data_found_icon_classes=>'fa-workflow fa-lg'
,p_show_total_row_count=>false
,p_entity_title_singular=>'workflow'
,p_entity_title_plural=>'workflows'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&WORKFLOW_DEF_NAME!HTML.</strong>',
    '')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&TITLE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189402160557095952)
,p_name=>'WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189402591961095950)
,p_name=>'WORKFLOW_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189403171933095948)
,p_name=>'WORKFLOW_DEF_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189403670008095946)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189404093042095945)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189404674986095943)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189405099762095942)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189405601348095940)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189406130835095938)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189406624406095937)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189407146403095935)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189407584757095934)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189396046902095975)
,p_name=>'P8_WORKFLOW_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189396966960095971)
,p_name=>'P8_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189396382256095973)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189397311224095970)
,p_name=>'P8_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189396382256095973)
,p_prompt=>'Type'
,p_source=>'WORKFLOW_DEF_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189397769890095968)
,p_name=>'P8_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(189396382256095973)
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'WORKFLOW_CONSOLE.LOV.WORKFLOW_STATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_workflow.get_lov_workflow_state )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189398467197095965)
,p_name=>'P8_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(189396382256095973)
,p_prompt=>'Application'
,p_source=>'WORKFLOW_DEF_APP_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189398743019095964)
,p_name=>'P8_INITIATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(189396382256095973)
,p_prompt=>'Initiator'
,p_source=>'INITIATOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189399105136095962)
,p_name=>'P8_INITIATED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(189396382256095973)
,p_prompt=>'Initiated'
,p_source=>'CREATED_AGO_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'WORKFLOW_CONSOLE.LOV.INITIATED'
,p_lov=>'.'||wwv_flow_imp.id(189399226976095962)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189408678797095930)
,p_name=>'P8_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189396576221095973)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sort By'
,p_source=>'LAST_UPDATED_ON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Create Date;CREATED_ON,Last Update;LAST_UPDATED_ON'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-sort-amount-desc'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189409008776095928)
,p_name=>'Refresh - Initiated by Me - Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(189396576221095973)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189409467154095927)
,p_event_id=>wwv_flow_imp.id(189409008776095928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189396576221095973)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189409931623095925)
,p_event_id=>wwv_flow_imp.id(189409008776095928)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189396382256095973)
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189408132052095932)
,p_region_id=>wwv_flow_imp.id(189396576221095973)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,:P9_WORKFLOW_ID:&WORKFLOW_ID.'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Initiated By Me Form'
,p_page_mode=>'MODAL'
,p_step_title=>'Initiated By Me Form'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189412358347095916)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title,',
'       workflow_def_name,',
'       initiator,',
'       created_ago,',
'       badge_text,',
'       badge_state',
'  from table ( apex_workflow.get_workflows (',
'                   p_context     => ''SINGLE_WORKFLOW'',',
'                   p_workflow_id => :P9_WORKFLOW_ID ) );'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'BADGE_COL_WIDTH', 't-ContentRow-badge--auto',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_SIZE', 't-Badge--md',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&WORKFLOW_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&TITLE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189412745762095914)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189413201583095913)
,p_name=>'WORKFLOW_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189413738272095911)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189414276417095910)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189414708209095908)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189415261970095907)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189415701911095905)
,p_plug_name=>'Activities'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select activity_id,',
'       type,',
'       name,',
'       state,',
'       error_message,',
'       due_on,',
'       retry_count,',
'       start_time,',
'       end_time,',
'       initcap(state) as badge_text,',
'       case state',
'           when ''WAITING''    then ''danger''',
'           when ''COMPLETED''  then ''success''',
'           when ''TERMINATED'' then ''warning''',
'           when ''FAULTED''    then ''danger''',
'       end as badge_state,',
'       ( select max(workflow_id)',
'           from apex_workflows w',
'          where w.parent_workflow_id = :P9_WORKFLOW_ID',
'            and w.parent_activity_id = a.activity_id ) as invoked_workflow_id',
'  from apex_workflow_activities a',
' where workflow_id = :P9_WORKFLOW_ID',
' order by start_time'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P9_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'Status',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_STYLE', 't-Badge--outline',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', '&ERROR_MESSAGE.',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'MISC', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{case STATE/}',
    '    {when COMPLETED/}',
    '        &{APEX.WORKFLOW.COMPLETED_SINCE 0=&END_TIME.}.',
    '    {otherwise/}',
    '        &{APEX.WORKFLOW.STARTED_SINCE 0=&START_TIME.}.',
    '{endcase/}',
    '{if DUE_ON/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.DUE_SINCE 0=&DUE_ON.}.',
    '{endif/}',
    '{if RETRY_COUNT/}',
    '    {case RETRY_COUNT/}',
    '        {when 0/}',
    '        {when 1/}',
    '        <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            &{APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE 0=&RETRY_COUNT.}.',
    '        {otherwise/}',
    '        <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            &{APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE 0=&RETRY_COUNT.}.',
    '    {endcase/}',
    '{endif/}')),
  'TITLE', '&NAME.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189416144312095903)
,p_name=>'ACTIVITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189416617997095902)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189417152325095900)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189417635401095899)
,p_name=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189418165356095897)
,p_name=>'ERROR_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ERROR_MESSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189418627538095895)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189419089791095894)
,p_name=>'RETRY_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETRY_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189419652170095892)
,p_name=>'START_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TIME'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189420100874095891)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189420675103095889)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189421160490095887)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189421633583095886)
,p_name=>'INVOKED_WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOKED_WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189423118482095881)
,p_plug_name=>'Activity Audit'
,p_parent_plug_id=>wwv_flow_imp.id(189415701911095905)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select created_by,',
'       created_on,',
'       action,',
'       display_msg',
'  from apex_workflow_audit',
' where workflow_id         = :P9_WORKFLOW_ID',
'   and current_activity_id = :P9_ACTIVITY_ID',
' order by audit_id'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P9_WORKFLOW_ID,P9_ACTIVITY_ID'
,p_plug_query_num_rows=>5
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'COMMENT_DATE', 'CREATED_ON',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'CREATED_BY')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189423557999095879)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189424060681095878)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189424557703095876)
,p_name=>'ACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189425067818095874)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189425936603095872)
,p_plug_name=>'Variables'
,p_region_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select static_id,',
'       label,',
'       display_value',
'  from apex_workflow_variables',
' where workflow_id = :P9_WORKFLOW_ID',
'   and variable_type = ''VARIABLE''',
' order by label'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P9_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'OVERLINE', '&LABEL.',
  'TITLE', '&DISPLAY_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189426292880095870)
,p_name=>'STATIC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATIC_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189426816088095868)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189427301027095867)
,p_name=>'DISPLAY_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189428253496095863)
,p_plug_name=>'Edit Variable'
,p_parent_plug_id=>wwv_flow_imp.id(189425936603095872)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189431013515095853)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label,',
'       display_value',
'  from apex_workflow_variables',
' where workflow_id = :P9_WORKFLOW_ID',
'   and variable_type = ''PARAMETER''',
' order by label'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P9_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'OVERLINE', '&LABEL.',
  'TITLE', '&DISPLAY_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189431437627095852)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189431973440095850)
,p_name=>'DISPLAY_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189432435412095849)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>120
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_msg,',
'       created_by,',
'       created_on',
'  from apex_workflow_audit',
' where workflow_id = :P9_WORKFLOW_ID',
'   and current_activity_id is null',
' order by audit_id desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P9_WORKFLOW_ID'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'COMMENT_DATE', 'CREATED_ON',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'CREATED_BY')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189432809887095847)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189433381415095846)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189433795588095844)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189434294236095843)
,p_plug_name=>'Workflow Diagram'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>130
,p_plug_source_type=>'NATIVE_WORKFLOW_DIAGRAM'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_navigator', 'Y',
  'initial_zoom', '0',
  'workflow_id', 'P9_WORKFLOW_ID')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189434765362095841)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189411889226095917)
,p_button_sequence=>50
,p_button_name=>'TO_PARENT_WORKFLOW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'To Parent Workflow'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,9:P9_WORKFLOW_ID:&P9_PARENT_WORKFLOW_ID.'
,p_button_condition=>'P9_PARENT_WORKFLOW_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-left-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189425534024095873)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189423118482095881)
,p_button_name=>'CANCEL_ACTIVITY_AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189430207172095856)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189428253496095863)
,p_button_name=>'CANCEL_EDIT_VARIABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189435168437095840)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189434765362095841)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189435549802095839)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189434765362095841)
,p_button_name=>'SUSPEND'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Suspend'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P9_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_suspend )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-pause-circle u-warning-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189435974971095838)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189434765362095841)
,p_button_name=>'RESUME'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Resume'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P9_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_resume )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-play-circle u-success-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189436316889095836)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(189434765362095841)
,p_button_name=>'TERMINATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terminate'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P9_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_terminate )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-times u-danger-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189436688484095835)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(189434765362095841)
,p_button_name=>'RETRY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Retry'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P9_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_retry )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-redo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189430659663095855)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189428253496095863)
,p_button_name=>'UPDATE_VARIABLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189410713047095922)
,p_name=>'P9_WORKFLOW_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189411145105095920)
,p_name=>'P9_ACTIVITY_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189411523014095919)
,p_name=>'P9_PARENT_WORKFLOW_ID'
,p_item_sequence=>30
,p_source=>'select parent_workflow_id from apex_workflows where workflow_id = :P9_WORKFLOW_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189428620639095862)
,p_name=>'P9_VARIABLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189428253496095863)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189429071450095860)
,p_name=>'P9_VARIABLE_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189428253496095863)
,p_prompt=>'Variable'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189429406671095859)
,p_name=>'P9_CURRENT_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189428253496095863)
,p_prompt=>'Current Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189429804469095857)
,p_name=>'P9_NEW_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(189428253496095863)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189437091889095834)
,p_name=>'Activity Audit'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.audit'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189437576123095833)
,p_event_id=>wwv_flow_imp.id(189437091889095834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189423118482095881)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189438004638095831)
,p_event_id=>wwv_flow_imp.id(189437091889095834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_ACTIVITY_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189438532714095830)
,p_event_id=>wwv_flow_imp.id(189437091889095834)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189423118482095881)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189439027511095828)
,p_name=>'Cancel Activity Audit'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189425534024095873)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189439410182095827)
,p_event_id=>wwv_flow_imp.id(189439027511095828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189423118482095881)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189439959176095825)
,p_name=>'Edit Variable'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.variable'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#VARIABLES'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189440359776095824)
,p_event_id=>wwv_flow_imp.id(189439959176095825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189428253496095863)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189440862549095822)
,p_event_id=>wwv_flow_imp.id(189439959176095825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(189430659663095855)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189441348719095820)
,p_event_id=>wwv_flow_imp.id(189439959176095825)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_VARIABLE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189441847626095819)
,p_event_id=>wwv_flow_imp.id(189439959176095825)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_VARIABLE_LABEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-label")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189442311530095817)
,p_event_id=>wwv_flow_imp.id(189439959176095825)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_CURRENT_VALUE,P9_NEW_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-value")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189442783605095816)
,p_event_id=>wwv_flow_imp.id(189439959176095825)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189443362697095814)
,p_name=>'Cancel Edit Variable'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189430207172095856)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189443706631095813)
,p_event_id=>wwv_flow_imp.id(189443362697095814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_NEW_VALUE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189444239532095812)
,p_event_id=>wwv_flow_imp.id(189443362697095814)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189428253496095863)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189444780681095810)
,p_name=>'Cancel Dialog'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189435168437095840)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189445091313095809)
,p_event_id=>wwv_flow_imp.id(189444780681095810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189445589696095807)
,p_name=>'Disable/Enable Update Button'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_NEW_VALUE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.items.P9_NEW_VALUE.value != apex.items.P9_CURRENT_VALUE.value'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189446015050095806)
,p_event_id=>wwv_flow_imp.id(189445589696095807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(189430659663095855)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189446493980095805)
,p_event_id=>wwv_flow_imp.id(189445589696095807)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(189430659663095855)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189447022611095803)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Variable'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.update_variables (',
'    p_instance_id    => :P9_WORKFLOW_ID,',
'    p_changed_params => apex_workflow.t_workflow_parameters (',
'        1 => apex_workflow.t_workflow_parameter (',
'                static_id    => :P9_VARIABLE_ID,',
'                string_value => :P9_NEW_VALUE ) ) );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189430659663095855)
,p_process_success_message=>'Variable updated'
,p_internal_uid=>44435141169110437
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189447448112095801)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Suspend'
,p_attribute_01=>'SUSPEND'
,p_attribute_04=>'P9_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189435549802095839)
,p_process_success_message=>'Workflow suspended'
,p_internal_uid=>44435566670110435
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189447847804095800)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Resume'
,p_attribute_01=>'RESUME'
,p_attribute_04=>'P9_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189435974971095838)
,p_process_success_message=>'Workflow resumed'
,p_internal_uid=>44435966362110434
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189448192278095798)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Terminate'
,p_attribute_01=>'TERMINATE'
,p_attribute_04=>'P9_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189436316889095836)
,p_process_success_message=>'Workflow terminated'
,p_internal_uid=>44436310836110432
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189448613374095797)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Retry'
,p_attribute_01=>'RETRY'
,p_attribute_04=>'P9_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189436688484095835)
,p_process_success_message=>'Workflow retried'
,p_internal_uid=>44436731932110431
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189449070069095796)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'UPDATE_VARIABLE'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_internal_uid=>44437188627110430
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189422095042095884)
,p_region_id=>wwv_flow_imp.id(189415701911095905)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="audit" data-id="&ACTIVITY_ID." aria-haspopup="dialog"'
,p_condition_type=>'ITEM_IS_NULL'
,p_condition_expr1=>'INVOKED_WORKFLOW_ID'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189422644693095882)
,p_region_id=>wwv_flow_imp.id(189415701911095905)
,p_position_id=>348722977165395441
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,9:P9_WORKFLOW_ID:&INVOKED_WORKFLOW_ID.'
,p_condition_type=>'ITEM_IS_NOT_NULL'
,p_condition_expr1=>'INVOKED_WORKFLOW_ID'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189427832217095865)
,p_region_id=>wwv_flow_imp.id(189425936603095872)
,p_position_id=>362316004162771045
,p_display_sequence=>10
,p_template_id=>362316605839802174
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="variable" data-id="&STATIC_ID!ATTR." data-label="&LABEL!ATTR." data-value="&DISPLAY_VALUE!ATTR." aria-haspopup="dialog"'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P9_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_update_var )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>false
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Workflow Dashboard'
,p_alias=>'WORKFLOW-DASHBOARD'
,p_step_title=>'Workflow Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189450094054095791)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(188985754773789332)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189450822013095788)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189451271228095787)
,p_plug_name=>'Workflows By State'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_region_attributes=>'aria-controls="workflow-state-details"'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189451601676095784)
,p_plug_name=>'Overview'
,p_parent_plug_id=>wwv_flow_imp.id(189451271228095787)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_landmark_type=>'region'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(189452468612095781)
,p_region_id=>wwv_flow_imp.id(189451601676095784)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(189452949773095779)
,p_chart_id=>wwv_flow_imp.id(189452468612095781)
,p_seq=>10
,p_name=>'Overview Series'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state, count(workflow_id) workflows ',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''INITIATED_BY_ME''',
'                   --, p_application_id => :APP_ID',
'                   ) )              ',
' group by state               '))
,p_max_row_count=>20
,p_items_value_column_name=>'WORKFLOWS'
,p_items_label_column_name=>'STATE'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:apex.item(''P10_STATE'').setValue(''&STATE!JS.'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189453562985095777)
,p_plug_name=>'Details'
,p_region_name=>'workflow-state-details'
,p_parent_plug_id=>wwv_flow_imp.id(189451271228095787)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_landmark_type=>'region'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(189453913177095775)
,p_region_id=>wwv_flow_imp.id(189453562985095777)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>'Please select a workflow state in the Overview chart to see further details'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(189454441052095773)
,p_chart_id=>wwv_flow_imp.id(189453913177095775)
,p_seq=>10
,p_name=>'Instances Per Workflow'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workflow_def_name, count(workflow_id) instances  ',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''INITIATED_BY_ME''',
'                   --, p_application_id => :APP_ID',
'                   ) )',
'   where state=:P10_STATE',
'   group by workflow_def_name;                '))
,p_ajax_items_to_submit=>'P10_STATE'
,p_items_value_column_name=>'INSTANCES'
,p_items_label_column_name=>'WORKFLOW_DEF_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189455038812095770)
,p_chart_id=>wwv_flow_imp.id(189453913177095775)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Workflows'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189455619479095768)
,p_chart_id=>wwv_flow_imp.id(189453913177095775)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Instances'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189457030339095764)
,p_plug_name=>'Active Workflows'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189457447322095762)
,p_plug_name=>'Overview'
,p_parent_plug_id=>wwv_flow_imp.id(189457030339095764)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_region_attributes=>'aria-controls="active-workload-details"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(189458279752095760)
,p_region_id=>wwv_flow_imp.id(189457447322095762)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>'No Active Workflows found'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(189458703667095758)
,p_chart_id=>wwv_flow_imp.id(189458279752095760)
,p_seq=>10
,p_name=>'Workflows'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workflow_def_name, ',
'       count(workflow_id) workflows ',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''INITIATED_BY_ME''',
'                   --, p_application_id => :APP_ID',
'                   ) )',
'where state_code in (''ACTIVE'',''SUSPENDED'') ',
'group by workflow_def_name               '))
,p_max_row_count=>20
,p_items_value_column_name=>'WORKFLOWS'
,p_items_label_column_name=>'WORKFLOW_DEF_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:apex.item(''P10_ACTIVE_DEF_NAME'').setValue(''&WORKFLOW_DEF_NAME!JS.'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189459357779095756)
,p_chart_id=>wwv_flow_imp.id(189458279752095760)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Workflows'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189459906980095754)
,p_chart_id=>wwv_flow_imp.id(189458279752095760)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Instances'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189460559142095752)
,p_plug_name=>'Activities'
,p_region_name=>'active-workload-details'
,p_parent_plug_id=>wwv_flow_imp.id(189457030339095764)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(189460971521095750)
,p_region_id=>wwv_flow_imp.id(189460559142095752)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>'Please select a Workflow in the Overview region to see further details'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(189461433096095749)
,p_chart_id=>wwv_flow_imp.id(189460971521095750)
,p_seq=>10
,p_name=>'Activities'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name activity, count(distinct(workflow_id)) instances ',
'  from apex_workflow_activities',
' where state in (''WAITING'',''ACTIVE'')',
'   and workspace_id = :WORKSPACE_ID',
'   and workflow_def_name = :P10_ACTIVE_DEF_NAME',
' group by name'))
,p_ajax_items_to_submit=>'P10_ACTIVE_DEF_NAME'
,p_items_value_column_name=>'INSTANCES'
,p_items_label_column_name=>'ACTIVITY'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189462011206095747)
,p_chart_id=>wwv_flow_imp.id(189460971521095750)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Activities'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189462597711095745)
,p_chart_id=>wwv_flow_imp.id(189460971521095750)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Instances'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189464123775095740)
,p_plug_name=>'Faulted Workflows'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189464508979095739)
,p_plug_name=>'Overview'
,p_parent_plug_id=>wwv_flow_imp.id(189464123775095740)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_region_attributes=>'aria-controls="fault-workload-details"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(189465287257095736)
,p_region_id=>wwv_flow_imp.id(189464508979095739)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>'No Faulted Workflows found'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(189465852874095735)
,p_chart_id=>wwv_flow_imp.id(189465287257095736)
,p_seq=>10
,p_name=>'Workflows'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workflow_def_name, ',
'       count(workflow_id) workflows ',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''INITIATED_BY_ME''',
'                   --, p_application_id => :APP_ID',
'                   ) )',
'where state_code = ''FAULTED''',
'group by workflow_def_name               '))
,p_max_row_count=>20
,p_items_value_column_name=>'WORKFLOWS'
,p_items_label_column_name=>'WORKFLOW_DEF_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:apex.item(''P10_FAULT_DEF_NAME'').setValue(''&WORKFLOW_DEF_NAME!JS.'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189467026052095731)
,p_chart_id=>wwv_flow_imp.id(189465287257095736)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Instances'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189466385761095733)
,p_chart_id=>wwv_flow_imp.id(189465287257095736)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Workflows'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189467618556095730)
,p_plug_name=>'Activities'
,p_region_name=>'fault-workload-details'
,p_parent_plug_id=>wwv_flow_imp.id(189464123775095740)
,p_region_template_options=>'#DEFAULT#:js-headingLevel-3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(189468022108095728)
,p_region_id=>wwv_flow_imp.id(189467618556095730)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>'Please select a Workflow in the Overview region to see further details'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(189468520198095727)
,p_chart_id=>wwv_flow_imp.id(189468022108095728)
,p_seq=>10
,p_name=>'Activities'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name activity, count(distinct(workflow_id)) instances ',
'  from apex_workflow_activities',
'where state = ''FAULTED''',
'   and workspace_id = :WORKSPACE_ID',
'   and workflow_def_name = :P10_FAULT_DEF_NAME',
' group by name'))
,p_ajax_items_to_submit=>'P10_FAULT_DEF_NAME'
,p_items_value_column_name=>'INSTANCES'
,p_items_label_column_name=>'ACTIVITY'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189469083650095725)
,p_chart_id=>wwv_flow_imp.id(189468022108095728)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Activities'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189469776714095723)
,p_chart_id=>wwv_flow_imp.id(189468022108095728)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Instances'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189471188731095719)
,p_plug_name=>'Performance'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189471663278095717)
,p_plug_name=>'Average Completion Time'
,p_region_name=>'performance-chart'
,p_parent_plug_id=>wwv_flow_imp.id(189471188731095719)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_landmark_type=>'region'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(189474818464095705)
,p_region_id=>wwv_flow_imp.id(189471663278095717)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'auto'
,p_no_data_found_message=>'No Completed or Terminated Workflows found'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(189475339849095703)
,p_chart_id=>wwv_flow_imp.id(189474818464095705)
,p_seq=>10
,p_name=>'Average Completion Time'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  workflow_def_name,',
'  avg( duration_seconds ) / ',
'  case :P10_TIME_UNIT',
'        when ''SEC'' then 1',
'        when ''MIN'' then 60',
'        when ''HOUR'' then 3600',
'        when ''DAY'' then ( 3600 * 24 )',
'   end  as avg_time',
' from table ( apex_workflow.get_workflows (',
'                   p_context => ''INITIATED_BY_ME''',
'                   --, p_application_id => :APP_ID',
'                   ) )    ',
'where state_code in (''COMPLETED'',''TERMINATED'')        ',
'group by workflow_def_name'))
,p_max_row_count=>50
,p_ajax_items_to_submit=>'P10_TIME_UNIT'
,p_items_value_column_name=>'AVG_TIME'
,p_items_label_column_name=>'WORKFLOW_DEF_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189475913917095701)
,p_chart_id=>wwv_flow_imp.id(189474818464095705)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Workflows'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189476542117095699)
,p_chart_id=>wwv_flow_imp.id(189474818464095705)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Average Completion Time'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189452075494095783)
,p_name=>'P10_STATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189451601676095784)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189457863597095761)
,p_name=>'P10_ACTIVE_DEF_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189457447322095762)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189464894162095738)
,p_name=>'P10_FAULT_DEF_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189464508979095739)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189472036922095716)
,p_name=>'P10_TIME_UNIT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189471663278095717)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'HOUR'
,p_prompt=>'Time Unit'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WORKFLOW_CHARTS.LOV.TIME_UNIT'
,p_lov=>'.'||wwv_flow_imp.id(189472129828095716)||'.'
,p_cHeight=>1
,p_tag_attributes=>'aria-controls="performance-chart"'
,p_field_template=>1609121967514267634
,p_item_template_options=>'t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the time unit to display within the Performance chart.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189456230234095766)
,p_name=>'Refresh Workflow Per State Details Region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_STATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189456582162095765)
,p_event_id=>wwv_flow_imp.id(189456230234095766)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189453562985095777)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189463210503095743)
,p_name=>'Refresh Activities'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_ACTIVE_DEF_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189463626034095742)
,p_event_id=>wwv_flow_imp.id(189463210503095743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189460559142095752)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189470349924095721)
,p_name=>'Refresh Activities'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_FAULT_DEF_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189470772084095720)
,p_event_id=>wwv_flow_imp.id(189470349924095721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189467618556095730)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189477176597095697)
,p_name=>'Refresh Performance Chart'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_TIME_UNIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189477571881095696)
,p_event_id=>wwv_flow_imp.id(189477176597095697)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189471663278095717)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'My Workflows'
,p_alias=>'MY-WORKFLOWS'
,p_step_title=>'My Workflows'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189478631004092510)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(188985754773789332)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189479777013092506)
,p_plug_name=>'My Workflows - Smart Filters'
,p_parent_plug_id=>wwv_flow_imp.id(189478631004092510)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(189479846051092505)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189479846051092505)
,p_plug_name=>'My Workflows - Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workflow_id,',
'       workflow_def_name,',
'       workflow_def_app_name,',
'       title,',
'       initiator,',
'       state_code,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''MY_WORKFLOWS''',
'                   , p_application_id => :APP_ID',
'                   ) )'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "orderBys": [',
'        {',
'            "key": "CREATED_ON",',
'            "expr": "created_on desc"',
'        },',
'        {',
'            "key": "LAST_UPDATED_ON",',
'            "expr": "last_updated_on desc"',
'        }',
'    ],',
'    "itemName": "P11_SORT_BY"',
'}'))
,p_optimizer_hint=>'APEX$USE_NO_GROUPING_SETS'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No Workflows'
,p_no_data_found_icon_classes=>'fa-workflow fa-lg'
,p_show_total_row_count=>false
,p_entity_title_singular=>'workflow'
,p_entity_title_plural=>'workflows'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&WORKFLOW_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&TITLE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189482917859092494)
,p_name=>'WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189483436761092492)
,p_name=>'WORKFLOW_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189483917251092491)
,p_name=>'WORKFLOW_DEF_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189484388047092489)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189484935512092488)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189485419344092486)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189485976074092485)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189486425865092483)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189486962617092481)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189487449870092480)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189487916390092478)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189488403966092477)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189479331072092507)
,p_name=>'P11_WORKFLOW_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189480273966092504)
,p_name=>'P11_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189479777013092506)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189480586078092502)
,p_name=>'P11_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189479777013092506)
,p_prompt=>'Type'
,p_source=>'WORKFLOW_DEF_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189481015483092501)
,p_name=>'P11_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(189479777013092506)
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'WORKFLOW_CONSOLE.LOV.WORKFLOW_STATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_workflow.get_lov_workflow_state )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189481384403092500)
,p_name=>'P11_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(189479777013092506)
,p_prompt=>'Application'
,p_source=>'WORKFLOW_DEF_APP_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189481825337092498)
,p_name=>'P11_INITIATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(189479777013092506)
,p_prompt=>'Initiator'
,p_source=>'INITIATOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189482245050092497)
,p_name=>'P11_INITIATED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(189479777013092506)
,p_prompt=>'Initiated'
,p_source=>'CREATED_AGO_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'WORKFLOW_CONSOLE.LOV.INITIATED'
,p_lov=>'.'||wwv_flow_imp.id(189399226976095962)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189489953613092471)
,p_name=>'P11_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189479846051092505)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sort By'
,p_source=>'LAST_UPDATED_ON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Create Date;CREATED_ON,Last Update;LAST_UPDATED_ON'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-sort-amount-desc'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189493164063092461)
,p_name=>'Refresh - My Workflows - Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(189479846051092505)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189493521873092460)
,p_event_id=>wwv_flow_imp.id(189493164063092461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189479846051092505)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189494027788092459)
,p_event_id=>wwv_flow_imp.id(189493164063092461)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189479777013092506)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189490351278092470)
,p_name=>'Terminate'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.terminate'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189490748174092469)
,p_event_id=>wwv_flow_imp.id(189490351278092470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_WORKFLOW_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189491263176092467)
,p_event_id=>wwv_flow_imp.id(189490351278092470)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.terminate (',
'    p_instance_id => :P11_WORKFLOW_ID );'))
,p_attribute_02=>'P11_WORKFLOW_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189491754285092466)
,p_event_id=>wwv_flow_imp.id(189490351278092470)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Workflow terminated'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189492151690092464)
,p_event_id=>wwv_flow_imp.id(189490351278092470)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189479777013092506)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189492592503092463)
,p_event_id=>wwv_flow_imp.id(189490351278092470)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189479846051092505)
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189488954813092475)
,p_region_id=>wwv_flow_imp.id(189479846051092505)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,:P12_WORKFLOW_ID:&WORKFLOW_ID.'
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189489442441092474)
,p_region_id=>wwv_flow_imp.id(189479846051092505)
,p_position_id=>362316004162771045
,p_display_sequence=>40
,p_template_id=>362316605839802174
,p_label=>'Terminate'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&WORKFLOW_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-times u-danger-text'
,p_action_css_classes=>'terminate'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':state_code in (''ACTIVE'',''FAULTED'',''SUSPENDED'')'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'My Workflows Form'
,p_page_mode=>'MODAL'
,p_step_title=>'My Workflows Form'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189496426918092449)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title,',
'       workflow_def_name,',
'       initiator,',
'       created_ago,',
'       badge_text,',
'       badge_state',
'  from table ( apex_workflow.get_workflows (',
'                   p_context     => ''SINGLE_WORKFLOW'',',
'                   p_workflow_id => :P12_WORKFLOW_ID ) );'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'BADGE_COL_WIDTH', 't-ContentRow-badge--auto',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_SIZE', 't-Badge--md',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&WORKFLOW_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&TITLE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189496794936092447)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189497312178092446)
,p_name=>'WORKFLOW_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189497818842092444)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189498318495092443)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189498789940092441)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189499291096092439)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189499816485092438)
,p_plug_name=>'Activities'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select activity_id,',
'       type,',
'       name,',
'       state,',
'       error_message,',
'       due_on,',
'       retry_count,',
'       start_time,',
'       end_time,',
'       initcap(state) as badge_text,',
'       case state',
'           when ''WAITING''    then ''danger''',
'           when ''COMPLETED''  then ''success''',
'           when ''TERMINATED'' then ''warning''',
'           when ''FAULTED''    then ''danger''',
'       end as badge_state,',
'       ( select max(workflow_id)',
'           from apex_workflows w',
'          where w.parent_workflow_id = :P12_WORKFLOW_ID',
'            and w.parent_activity_id = a.activity_id ) as invoked_workflow_id',
'  from apex_workflow_activities a',
' where workflow_id = :P12_WORKFLOW_ID',
' order by start_time'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P12_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'Status',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_STYLE', 't-Badge--outline',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', '&ERROR_MESSAGE.',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'MISC', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{case STATE/}',
    '    {when COMPLETED/}',
    '        &{APEX.WORKFLOW.COMPLETED_SINCE 0=&END_TIME.}.',
    '    {otherwise/}',
    '        &{APEX.WORKFLOW.STARTED_SINCE 0=&START_TIME.}.',
    '{endcase/}',
    '{if DUE_ON/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.DUE_SINCE 0=&DUE_ON.}.',
    '{endif/}',
    '{if RETRY_COUNT/}',
    '    {case RETRY_COUNT/}',
    '        {when 0/}',
    '        {when 1/}',
    '        <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            &{APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE 0=&RETRY_COUNT.}.',
    '        {otherwise/}',
    '        <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            &{APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE 0=&RETRY_COUNT.}.',
    '    {endcase/}',
    '{endif/}')),
  'TITLE', '&NAME.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189500213326092436)
,p_name=>'ACTIVITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189500724656092434)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189501203613092433)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189501734134092431)
,p_name=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189502207964092430)
,p_name=>'ERROR_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ERROR_MESSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189502753367092428)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189503268382092426)
,p_name=>'RETRY_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETRY_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189503718332092425)
,p_name=>'START_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TIME'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189504190318092423)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189504715226092422)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189505196885092420)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189505738193092419)
,p_name=>'INVOKED_WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOKED_WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189507224691092413)
,p_plug_name=>'Activity Audit'
,p_parent_plug_id=>wwv_flow_imp.id(189499816485092438)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select created_by,',
'       created_on,',
'       action,',
'       display_msg',
'  from apex_workflow_audit',
' where workflow_id         = :P12_WORKFLOW_ID',
'   and current_activity_id = :P12_ACTIVITY_ID',
' order by audit_id'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P12_WORKFLOW_ID,P12_ACTIVITY_ID'
,p_plug_query_num_rows=>5
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'COMMENT_DATE', 'CREATED_ON',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'CREATED_BY')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189507628730092412)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189508092756092410)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189508641160092408)
,p_name=>'ACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189509102575092406)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189510029972092403)
,p_plug_name=>'Variables'
,p_region_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select static_id,',
'       label,',
'       display_value',
'  from apex_workflow_variables',
' where workflow_id = :P12_WORKFLOW_ID',
'   and variable_type = ''VARIABLE''',
' order by label'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P12_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'OVERLINE', '&LABEL.',
  'TITLE', '&DISPLAY_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189510420010092402)
,p_name=>'STATIC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATIC_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189510946838092400)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189511459046092399)
,p_name=>'DISPLAY_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189512435190092396)
,p_plug_name=>'Edit Variable'
,p_parent_plug_id=>wwv_flow_imp.id(189510029972092403)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189515259436092386)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label,',
'       display_value',
'  from apex_workflow_variables',
' where workflow_id = :P12_WORKFLOW_ID',
'   and variable_type = ''PARAMETER''',
' order by label'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P12_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'OVERLINE', '&LABEL.',
  'TITLE', '&DISPLAY_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189515613558092384)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189516082599092382)
,p_name=>'DISPLAY_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189516656197092381)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>120
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_msg,',
'       created_by,',
'       created_on',
'  from apex_workflow_audit',
' where workflow_id = :P12_WORKFLOW_ID',
'   and current_activity_id is null',
' order by audit_id desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P12_WORKFLOW_ID'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'COMMENT_DATE', 'CREATED_ON',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'CREATED_BY')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189517080805092379)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189517526727092377)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(189518049738092376)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189518492164092374)
,p_plug_name=>'Workflow Diagram'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>130
,p_plug_source_type=>'NATIVE_WORKFLOW_DIAGRAM'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_navigator', 'Y',
  'initial_zoom', '0',
  'workflow_id', 'P12_WORKFLOW_ID')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189518967724092372)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189495990661092451)
,p_button_sequence=>50
,p_button_name=>'TO_PARENT_WORKFLOW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'To Parent Workflow'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_WORKFLOW_ID:&P12_PARENT_WORKFLOW_ID.'
,p_button_condition=>'P12_PARENT_WORKFLOW_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-left-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189509659966092405)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189507224691092413)
,p_button_name=>'CANCEL_ACTIVITY_AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189514417736092388)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189512435190092396)
,p_button_name=>'CANCEL_EDIT_VARIABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189519372073092371)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189518967724092372)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189519740345092370)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189518967724092372)
,p_button_name=>'SUSPEND'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Suspend'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P12_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_suspend )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-pause-circle u-warning-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189520127521092368)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189518967724092372)
,p_button_name=>'RESUME'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Resume'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P12_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_resume )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-play-circle u-success-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189520534887092367)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(189518967724092372)
,p_button_name=>'TERMINATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terminate'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P12_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_terminate )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-times u-danger-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189520938913092366)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(189518967724092372)
,p_button_name=>'RETRY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Retry'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P12_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_retry )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-redo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189514865616092387)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189512435190092396)
,p_button_name=>'UPDATE_VARIABLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189494812690092456)
,p_name=>'P12_WORKFLOW_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189495279664092454)
,p_name=>'P12_ACTIVITY_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189495605819092453)
,p_name=>'P12_PARENT_WORKFLOW_ID'
,p_item_sequence=>30
,p_source=>'select parent_workflow_id from apex_workflows where workflow_id = :P12_WORKFLOW_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189512858811092394)
,p_name=>'P12_VARIABLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189512435190092396)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189513245047092393)
,p_name=>'P12_VARIABLE_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189512435190092396)
,p_prompt=>'Variable'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189513595434092391)
,p_name=>'P12_CURRENT_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189512435190092396)
,p_prompt=>'Current Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189513994929092390)
,p_name=>'P12_NEW_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(189512435190092396)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189521239764092364)
,p_name=>'Activity Audit'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.audit'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189521596235092363)
,p_event_id=>wwv_flow_imp.id(189521239764092364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189507224691092413)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189522166351092362)
,p_event_id=>wwv_flow_imp.id(189521239764092364)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_ACTIVITY_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189522629065092360)
,p_event_id=>wwv_flow_imp.id(189521239764092364)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189507224691092413)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189523101790092359)
,p_name=>'Cancel Activity Audit'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189509659966092405)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189523492756092357)
,p_event_id=>wwv_flow_imp.id(189523101790092359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189507224691092413)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189524036787092356)
,p_name=>'Edit Variable'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.variable'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#VARIABLES'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189524472852092355)
,p_event_id=>wwv_flow_imp.id(189524036787092356)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189512435190092396)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189524910694092353)
,p_event_id=>wwv_flow_imp.id(189524036787092356)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(189514865616092387)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189525400315092352)
,p_event_id=>wwv_flow_imp.id(189524036787092356)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_VARIABLE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189525928786092350)
,p_event_id=>wwv_flow_imp.id(189524036787092356)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_VARIABLE_LABEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-label")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189526452868092349)
,p_event_id=>wwv_flow_imp.id(189524036787092356)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_CURRENT_VALUE,P12_NEW_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-value")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189526937440092347)
,p_event_id=>wwv_flow_imp.id(189524036787092356)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189527419767092346)
,p_name=>'Cancel Edit Variable'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189514417736092388)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189527791616092344)
,p_event_id=>wwv_flow_imp.id(189527419767092346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_NEW_VALUE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189528287179092343)
,p_event_id=>wwv_flow_imp.id(189527419767092346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189512435190092396)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189528867876092341)
,p_name=>'Cancel Dialog'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189519372073092371)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189529276711092340)
,p_event_id=>wwv_flow_imp.id(189528867876092341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189529780403092338)
,p_name=>'Disable/Enable Update Button'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_NEW_VALUE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.items.P12_NEW_VALUE.value != apex.items.P12_CURRENT_VALUE.value'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189530105454092337)
,p_event_id=>wwv_flow_imp.id(189529780403092338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(189514865616092387)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189530640254092336)
,p_event_id=>wwv_flow_imp.id(189529780403092338)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(189514865616092387)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189531174215092334)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Variable'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.update_variables (',
'    p_instance_id    => :P12_WORKFLOW_ID,',
'    p_changed_params => apex_workflow.t_workflow_parameters (',
'        1 => apex_workflow.t_workflow_parameter (',
'                static_id    => :P12_VARIABLE_ID,',
'                string_value => :P12_NEW_VALUE ) ) );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189514865616092387)
,p_process_success_message=>'Variable updated'
,p_internal_uid=>44519292773106968
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189531502883092333)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Suspend'
,p_attribute_01=>'SUSPEND'
,p_attribute_04=>'P12_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189519740345092370)
,p_process_success_message=>'Workflow suspended'
,p_internal_uid=>44519621441106967
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189531888916092331)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Resume'
,p_attribute_01=>'RESUME'
,p_attribute_04=>'P12_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189520127521092368)
,p_process_success_message=>'Workflow resumed'
,p_internal_uid=>44520007474106965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189532284778092330)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Terminate'
,p_attribute_01=>'TERMINATE'
,p_attribute_04=>'P12_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189520534887092367)
,p_process_success_message=>'Workflow terminated'
,p_internal_uid=>44520403336106964
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189532770379092329)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Retry'
,p_attribute_01=>'RETRY'
,p_attribute_04=>'P12_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189520938913092366)
,p_process_success_message=>'Workflow retried'
,p_internal_uid=>44520888937106963
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189533169459092328)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'UPDATE_VARIABLE'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_internal_uid=>44521288017106962
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189506244559092417)
,p_region_id=>wwv_flow_imp.id(189499816485092438)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="audit" data-id="&ACTIVITY_ID." aria-haspopup="dialog"'
,p_condition_type=>'ITEM_IS_NULL'
,p_condition_expr1=>'INVOKED_WORKFLOW_ID'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189506756576092415)
,p_region_id=>wwv_flow_imp.id(189499816485092438)
,p_position_id=>348722977165395441
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_WORKFLOW_ID:&INVOKED_WORKFLOW_ID.'
,p_condition_type=>'ITEM_IS_NOT_NULL'
,p_condition_expr1=>'INVOKED_WORKFLOW_ID'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(189511949814092397)
,p_region_id=>wwv_flow_imp.id(189510029972092403)
,p_position_id=>362316004162771045
,p_display_sequence=>10
,p_template_id=>362316605839802174
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="variable" data-id="&STATIC_ID!ATTR." data-label="&LABEL!ATTR." data-value="&DISPLAY_VALUE!ATTR." aria-haspopup="dialog"'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P12_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_update_var )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>false
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Preview Document'
,p_alias=>'PREVIEW-DOCUMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Preview Document'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190417847830296308)
,p_name=>'P13_DOCUMENT_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Document Search'
,p_alias=>'DOCUMENT-SEARCH'
,p_step_title=>'Document Search'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'26'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189578347308806848)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(188985754773789332)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189579024745806843)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>1555738898046108210
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'Y',
  'minimum_characters', '0',
  'no_query_entered_message', 'Please enter your search term.',
  'no_results_found_message', 'No results for your search term.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'N',
  'search_page_item', 'P14_SEARCH',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(189579486211806840)
,p_region_id=>wwv_flow_imp.id(189579024745806843)
,p_search_config_id=>wwv_flow_imp.id(189577349887813048)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>'Document Search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189552068660960384)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189578347308806848)
,p_button_name=>'ASK_AI'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'AI Assistant'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-chatbot'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189580060846806837)
,p_name=>'P14_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189578347308806848)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_field_template=>2040785906935475274
,p_item_css_classes=>'mxw800 t-Form-fieldContainer--noPadding'
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'SEARCH',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189552161645960385)
,p_name=>'Ask AI'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189552068660960384)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189552257306960386)
,p_event_id=>wwv_flow_imp.id(189552161645960385)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_AI_ASSISTANT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'AI Assistant'
,p_ai_config_id=>wwv_flow_imp.id(189598089489752111)
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Employees'
,p_alias=>'EMPLOYEES'
,p_step_title=>'Employees'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(193110527064439201)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EMPLOYEES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Employees'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(193110652583439201)
,p_name=>'Employees'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'EMPLOYEE_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:RP:P16_EMPLOYEE_ID:\#EMPLOYEE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'WF_WS'
,p_internal_uid=>48098771141453835
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193111350058439189)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Employee ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193111766499439186)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193112096739439185)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193112567968439183)
,p_db_column_name=>'EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193112883259439182)
,p_db_column_name=>'PHONE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193113353502439180)
,p_db_column_name=>'EMPLOYEE_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Employee Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193113767992439179)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(193096459508439276)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193114122134439177)
,p_db_column_name=>'ROLE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Role'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193114535668439176)
,p_db_column_name=>'MANAGER_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(193097543568439263)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193114915404439175)
,p_db_column_name=>'JOINING_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Joining Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193115281479439173)
,p_db_column_name=>'LOCATION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193115774075439172)
,p_db_column_name=>'STATUS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193116083320439170)
,p_db_column_name=>'LAPTOP_INFO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Laptop Info'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193116522389439169)
,p_db_column_name=>'SEAT_INFO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Seat Info'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193116956402439167)
,p_db_column_name=>'VPN_DETAILS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Vpn Details'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(193117331431439165)
,p_db_column_name=>'APPROVAL_LEVEL'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Approval Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(193120101426438107)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'481083'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE_ID:FIRST_NAME:LAST_NAME:EMAIL:PHONE:EMPLOYEE_TYPE:DEPARTMENT_ID:ROLE:MANAGER_ID:JOINING_DATE:LOCATION:STATUS:LAPTOP_INFO:SEAT_INFO:VPN_DETAILS:APPROVAL_LEVEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(193119289782439154)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(188985754773789332)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193117784576439163)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(193110527064439201)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:16::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193118112943439162)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(193110527064439201)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193118648890439159)
,p_event_id=>wwv_flow_imp.id(193118112943439162)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(193110527064439201)
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Add/Edit Employees'
,p_alias=>'ADD-EDIT-EMPLOYEES'
,p_page_mode=>'MODAL'
,p_step_title=>'Add/Edit Employees'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(193093583445439304)
,p_plug_name=>'Add/Edit Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EMPLOYEES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(193105730461439229)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193106106611439227)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(193105730461439229)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193107570238439219)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(193105730461439229)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P16_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193107903543439217)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(193105730461439229)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P16_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(193108358468439216)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(193105730461439229)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P16_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193093940716439295)
,p_name=>'P16_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Id'
,p_source=>'EMPLOYEE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193094327399439287)
,p_name=>'P16_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193094700400439284)
,p_name=>'P16_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193095164605439283)
,p_name=>'P16_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193095568699439281)
,p_name=>'P16_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone'
,p_source=>'PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193095891941439280)
,p_name=>'P16_EMPLOYEE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Type'
,p_source=>'EMPLOYEE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193096284619439278)
,p_name=>'P16_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department Id'
,p_source=>'DEPARTMENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENTS.NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193096990957439264)
,p_name=>'P16_ROLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Role'
,p_source=>'ROLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193097471215439263)
,p_name=>'P16_MANAGER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager Id'
,p_source=>'MANAGER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYEES.FIRST_NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193098098510439260)
,p_name=>'P16_JOINING_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Joining Date'
,p_source=>'JOINING_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193098512190439258)
,p_name=>'P16_LOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Location'
,p_source=>'LOCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193098956490439256)
,p_name=>'P16_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193099361090439255)
,p_name=>'P16_LAPTOP_INFO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Laptop Info'
,p_source=>'LAPTOP_INFO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193099699700439253)
,p_name=>'P16_SEAT_INFO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Seat Info'
,p_source=>'SEAT_INFO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193100156151439252)
,p_name=>'P16_VPN_DETAILS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vpn Details'
,p_source=>'VPN_DETAILS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193100500588439250)
,p_name=>'P16_APPROVAL_LEVEL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_item_source_plug_id=>wwv_flow_imp.id(193093583445439304)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approval Level'
,p_source=>'APPROVAL_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193106190126439227)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(193106106611439227)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193107050962439221)
,p_event_id=>wwv_flow_imp.id(193106190126439227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(193109162595439211)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(193093583445439304)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Add/Edit Employees'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>48097281153453845
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(193109557114439210)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>48097675672453844
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(193108695572439213)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(193093583445439304)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add/Edit Employees'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>48096814130453847
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'AI Assistant'
,p_alias=>'AI-ASSISTANT'
,p_step_title=>'AI Assistant'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189550455341960368)
,p_plug_name=>'AI Assistant'
,p_region_name=>'chat'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189550667213960370)
,p_plug_name=>'Data Preview'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189551066890960374)
,p_plug_name=>'Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189551219292960376)
,p_button_sequence=>60
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14::'
,p_icon_css_classes=>'fa-arrow-circle-o-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189551370885960377)
,p_button_sequence=>70
,p_button_name=>'Summarize'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Summarize'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-ai-sparkle-generate-document'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189550547717960369)
,p_name=>'P18_CHUNK_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189550713192960371)
,p_name=>'P18_CHUNK_DATA'
,p_data_type=>'CLOB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189550667213960370)
,p_prompt=>'Chunk Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189550927182960373)
,p_name=>'P18_DOCUMENT_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189551114523960375)
,p_name=>'P18_SUMMARY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189551066890960374)
,p_prompt=>'Summary'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'MARKDOWN',
  'min_height', '180')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(189550833347960372)
,p_computation_sequence=>10
,p_computation_item=>'P18_CHUNK_DATA'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select chunk_data from DOCUMENT_EMBEDDINGS where chunk_id = :P18_CHUNK_ID and document_id = :P18_DOCUMENT_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189551449638960378)
,p_name=>'Generate Summary'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189551370885960377)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189551620339960380)
,p_event_id=>wwv_flow_imp.id(189551449638960378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189551066890960374)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189551567340960379)
,p_event_id=>wwv_flow_imp.id(189551449638960378)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_GENERATE_TEXT_AI'
,p_attribute_01=>'ITEM'
,p_attribute_02=>'P18_CHUNK_DATA'
,p_attribute_04=>'ITEM'
,p_attribute_05=>'P18_SUMMARY'
,p_attribute_07=>'N'
,p_wait_for_result=>'Y'
,p_ai_config_id=>wwv_flow_imp.id(189597621941756720)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189551713532960381)
,p_name=>'Open AI Assistant'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189551785938960382)
,p_event_id=>wwv_flow_imp.id(189551713532960381)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_AI_ASSISTANT'
,p_attribute_01=>'INLINE'
,p_attribute_03=>'#chat'
,p_ai_config_id=>wwv_flow_imp.id(189597621941756720)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189551959122960383)
,p_event_id=>wwv_flow_imp.id(189551713532960381)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189551066890960374)
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Document Management - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188993581732789238)
,p_plug_name=>'Document Management'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(188995745395789224)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(188993581732789238)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188994093348789231)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(188993581732789238)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188994575902789229)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(188993581732789238)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188994917107789228)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(188993581732789238)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188995373764789226)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(188993581732789238)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188997883668789215)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43986002226803849
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(188998455677789214)
,p_page_process_id=>wwv_flow_imp.id(188997883668789215)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(188998892423789212)
,p_page_process_id=>wwv_flow_imp.id(188997883668789215)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188995999826789223)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43984118384803857
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(188996502097789220)
,p_page_process_id=>wwv_flow_imp.id(188995999826789223)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(188997019809789218)
,p_page_process_id=>wwv_flow_imp.id(188995999826789223)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(188997522270789217)
,p_page_process_id=>wwv_flow_imp.id(188995999826789223)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188999805349789209)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43987923907803843
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188999461802789210)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>43987580360803844
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189120376098788212)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(188985754773789332)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189124803380788193)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189125230261788191)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(189124803380788193)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(189121053769788207)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(188989991736789273)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189125663599788189)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189126033146788188)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(189125663599788189)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(188989893141789273)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189126786453788184)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(189126033146788188)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(189127276619788183)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(189126033146788188)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189127954140788173)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189128322329788172)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189128708695788171)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189131703351788030)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(189126033146788188)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(189123757602788197)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189126450176788186)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189126033146788188)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:RP,10022::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189130854349788033)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189126450176788186)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189131349607788031)
,p_event_id=>wwv_flow_imp.id(189130854349788033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189127276619788183)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989991736789273)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189001652899789179)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(189001751085789179)
,p_region_id=>wwv_flow_imp.id(189001652899789179)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(189003816784789172)
,p_chart_id=>wwv_flow_imp.id(189001751085789179)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10010_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10010_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189004469113789169)
,p_chart_id=>wwv_flow_imp.id(189001751085789179)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189005067309789166)
,p_chart_id=>wwv_flow_imp.id(189001751085789179)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189001880814789179)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(189001977616789179)
,p_region_id=>wwv_flow_imp.id(189001880814789179)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(189008739477789152)
,p_chart_id=>wwv_flow_imp.id(189001977616789179)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10010_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10010_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189009316032789150)
,p_chart_id=>wwv_flow_imp.id(189001977616789179)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189009905924789148)
,p_chart_id=>wwv_flow_imp.id(189001977616789179)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189002050153789179)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(189002133760789179)
,p_region_id=>wwv_flow_imp.id(189002050153789179)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(189006183024789161)
,p_chart_id=>wwv_flow_imp.id(189002133760789179)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10010_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10010_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189006827154789158)
,p_chart_id=>wwv_flow_imp.id(189002133760789179)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(189007432437789156)
,p_chart_id=>wwv_flow_imp.id(189002133760789179)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(189002211679789179)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10010_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10010_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189011079664789135)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189011454634789134)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(189002287445789179)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10010_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10010_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189014108733788986)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189014505487788985)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189002464021789179)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189016695248788848)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189001652899789179)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10011:&APP_SESSION.::&DEBUG.:RP,10011::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189017144532788847)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189001880814789179)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10014:&APP_SESSION.::&DEBUG.:RP,10014::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189017530477788846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189002050153789179)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10011:&APP_SESSION.::&DEBUG.:RP,10011::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189017972489788845)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189002211679789179)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10012:&APP_SESSION.::&DEBUG.:RP,10012::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189002562000789179)
,p_name=>'P10010_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189002464021789179)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189002644089789179)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10010_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189019548382788835)
,p_event_id=>wwv_flow_imp.id(189002644089789179)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189001652899789179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189019990554788833)
,p_event_id=>wwv_flow_imp.id(189002644089789179)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189002050153789179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189020483063788832)
,p_event_id=>wwv_flow_imp.id(189002644089789179)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189001880814789179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189021015355788830)
,p_event_id=>wwv_flow_imp.id(189002644089789179)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189002211679789179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189021559342788829)
,p_event_id=>wwv_flow_imp.id(189002644089789179)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189002287445789179)
);
end;
/
prompt --application/pages/page_10011
begin
wwv_flow_imp_page.create_page(
 p_id=>10011
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989991736789273)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189054191749788657)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10011_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10011_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10011_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(189055285549788655)
,p_name=>'Top Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'WF_WS'
,p_internal_uid=>44043404107803289
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189056055460788643)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189056474369788641)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189056816286788639)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189057264194788637)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189057609687788635)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189058061296788634)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189058447848788632)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189058821141788630)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(189061938219788614)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'440501'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189054357334788657)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189054550437788657)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10011_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(189054602592788657)
,p_region_id=>wwv_flow_imp.id(189054550437788657)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(189065532409788597)
,p_chart_id=>wwv_flow_imp.id(189054602592788657)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10011_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10011_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189062846780788611)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189054191749788657)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189054761006788657)
,p_name=>'P10011_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189054357334788657)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(189066054311788595)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189054890866788656)
,p_name=>'P10011_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189054357334788657)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189054414075788657)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10011_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189064149587788604)
,p_event_id=>wwv_flow_imp.id(189054414075788657)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189054191749788657)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189067481939788586)
,p_event_id=>wwv_flow_imp.id(189054414075788657)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189054191749788657)
);
end;
/
prompt --application/pages/page_10012
begin
wwv_flow_imp_page.create_page(
 p_id=>10012
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989991736789273)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189047304521788686)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(189047902057788685)
,p_name=>'Application Error Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'WF_WS'
,p_internal_uid=>44036020615803319
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189048618182788680)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189049074050788678)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189049382468788677)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189049808105788675)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189050264444788673)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189050584448788672)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(189053029199788661)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'440412'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189053935666788658)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189047304521788686)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10013
begin
wwv_flow_imp_page.create_page(
 p_id=>10013
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989991736789273)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189033273951788756)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10013_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10013_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(189033863045788755)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'WF_WS'
,p_internal_uid=>44021981603803389
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189034526227788739)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189034893237788737)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189035317877788735)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189035780412788734)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189036120105788732)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189036522556788731)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189036953177788729)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189037294851788728)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189037738950788726)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189038085878788724)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189038531710788723)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189038936228788722)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189039309270788720)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189039728672788718)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(189044634542788698)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'440328'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189033371720788756)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189045495456788694)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189033273951788756)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189033108042788756)
,p_name=>'P10013_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189033371720788756)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189033411921788756)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10013_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189046818394788688)
,p_event_id=>wwv_flow_imp.id(189033411921788756)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189033273951788756)
);
end;
/
prompt --application/pages/page_10014
begin
wwv_flow_imp_page.create_page(
 p_id=>10014
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989991736789273)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189022010540788826)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10014_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10014_TIMEFRAME'
,p_prn_page_header=>'Page Views'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(189022644718788825)
,p_name=>'Page Views'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'WF_WS'
,p_internal_uid=>44010763276803459
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189023345238788805)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189023684198788803)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189024105759788802)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189024519389788800)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189024900445788799)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189025301834788797)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189025692664788796)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189026152796788794)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189026506691788792)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189026910916788791)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(189030614869788770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'440188'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189022163133788826)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189031579103788765)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189022010540788826)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189021941106788827)
,p_name=>'P10014_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189022163133788826)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189022255354788826)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10014_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189032718564788758)
,p_event_id=>wwv_flow_imp.id(189022255354788826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189022010540788826)
);
end;
/
prompt --application/pages/page_10015
begin
wwv_flow_imp_page.create_page(
 p_id=>10015
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989991736789273)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189068077804788584)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(189068593136788583)
,p_name=>'Automations Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'WF_WS'
,p_internal_uid=>44056711694803217
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189069183436788562)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189069599140788560)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189070054435788558)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189070453025788557)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189070878061788555)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189071241164788554)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189071666011788552)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10016:&APP_SESSION.::&DEBUG.:RP,10016:P10016_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189072004449788551)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189072448629788549)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(189075875365788535)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'440640'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189076714884788532)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189068077804788584)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10016
begin
wwv_flow_imp_page.create_page(
 p_id=>10016
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989991736789273)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189077334813788530)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(189079773898788521)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10016_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189080166562788514)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189080524309788513)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189080926982788511)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189081308773788510)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189077714115788528)
,p_name=>'P10016_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189077334813788530)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189078177763788527)
,p_name=>'P10016_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189077334813788530)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189078532420788525)
,p_name=>'P10016_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189077334813788530)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189078893630788524)
,p_name=>'P10016_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(189077334813788530)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189079356005788522)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10016_AUTOMATION_NAME,',
'       :P10016_START_TIMESTAMP,',
'       :P10016_STATUS',
'  from apex_automation_log',
' where id = :P10016_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44067474563803156
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989893141789273)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189083517016788498)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189083601875788498)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189084868975788492)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189083601875788498)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189085131827788492)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189083601875788498)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(189086537326788487)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189086849339788486)
,p_name=>'P10020_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189083517016788498)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189085191169788492)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189085131827788492)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189085925145788489)
,p_event_id=>wwv_flow_imp.id(189085191169788492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189087267348788483)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10020_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>44075385906803117
);
end;
/
prompt --application/pages/page_10021
begin
wwv_flow_imp_page.create_page(
 p_id=>10021
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989893141789273)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189087648562788482)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(189088475186788480)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:RP:P10022_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'WF_WS'
,p_internal_uid=>44076593744803114
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189089144768788473)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189089538911788471)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189089948189788470)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(189091435708788463)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'440796'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189092341752788459)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189087648562788482)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189092736189788458)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(189087648562788482)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10023:&APP_SESSION.::&DEBUG.:10023::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189093175749788457)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(189087648562788482)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:10022::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189087707005788482)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(189087648562788482)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189093702097788455)
,p_event_id=>wwv_flow_imp.id(189087707005788482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(189087648562788482)
);
end;
/
prompt --application/pages/page_10022
begin
wwv_flow_imp_page.create_page(
 p_id=>10022
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989893141789273)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189094247864788453)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189094353412788453)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189097132858788442)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(189094353412788453)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189097542578788440)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(189094353412788453)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189095300547788448)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189094353412788453)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189096771657788443)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189094353412788453)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189097848273788439)
,p_name=>'P10022_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189094247864788453)
,p_item_source_plug_id=>wwv_flow_imp.id(189094247864788453)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189098225697788438)
,p_name=>'P10022_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189094247864788453)
,p_item_source_plug_id=>wwv_flow_imp.id(189094247864788453)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189098590060788436)
,p_name=>'P10022_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189094247864788453)
,p_item_source_plug_id=>wwv_flow_imp.id(189094247864788453)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10022_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189099022945788435)
,p_name=>'P10022_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(189094247864788453)
,p_item_source_plug_id=>wwv_flow_imp.id(189094247864788453)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(189100326788788425)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10022_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10022_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189095475293788448)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189095300547788448)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189096105809788445)
,p_event_id=>wwv_flow_imp.id(189095475293788448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189100610877788424)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(189094247864788453)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44088729435803058
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189101003149788422)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(189094247864788453)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44089121707803056
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189101476008788421)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44089594566803055
);
end;
/
prompt --application/pages/page_10023
begin
wwv_flow_imp_page.create_page(
 p_id=>10023
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989893141789273)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189101811945788420)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189101939008788420)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189102047125788420)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189101811945788420)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189104012127788413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189101811945788420)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(189105375058788409)
,p_branch_action=>'f?p=&APP_ID.:10024:&APP_SESSION.::&DEBUG.:RP,10024::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(189102047125788420)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189105763669788408)
,p_name=>'P10023_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189101939008788420)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189106149664788406)
,p_name=>'P10023_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189101939008788420)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189106579642788404)
,p_name=>'P10023_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(189101939008788420)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(189106601463788404)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189104092227788413)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189104012127788413)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189104832615788410)
,p_event_id=>wwv_flow_imp.id(189104092227788413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189107618414788401)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10023_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10023_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10023_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189102047125788420)
,p_internal_uid=>44095736972803035
);
end;
/
prompt --application/pages/page_10024
begin
wwv_flow_imp_page.create_page(
 p_id=>10024
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188993053946789255)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(188991810190789265)
,p_required_patch=>wwv_flow_imp.id(188989893141789273)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189102180263788420)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189102260876788420)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(189102480357788420)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(189102260876788420)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189109489585788386)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(189109958437788384)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189102573180788419)
,p_plug_name=>'&P10024_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(189102260876788420)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189102651765788419)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189112925704788245)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10024_VALID_COUNT),',
'           apex_escape.html(:P10024_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189113584488788240)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189102691828788419)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(189102180263788420)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189114295419788238)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189102180263788420)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189114728813788236)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(189102180263788420)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189115989764788232)
,p_name=>'P10024_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189102651765788419)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10023_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189116397336788230)
,p_name=>'P10024_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(189102651765788419)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189116851878788228)
,p_name=>'P10024_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(189102651765788419)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189114864719788236)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(189114728813788236)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189115578760788234)
,p_event_id=>wwv_flow_imp.id(189114864719788236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189117273386788226)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10023_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(189102691828788419)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>44105391944802860
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(189117614598788225)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44105733156802859
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(189132137383788027)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(189132592902788025)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189137248631788004)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189137658520788002)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(189138118216788001)
,p_region_id=>wwv_flow_imp.id(189137658520788002)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189138637472787999)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(189136202036788009)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(189132137383788027)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(189132374016788026)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189133651161788020)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189134012253788018)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(189133285164788021)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(189134484396788016)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(189134012253788018)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(189134854777788015)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189135368135788013)
,p_event_id=>wwv_flow_imp.id(189134854777788015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(189135858933788011)
,p_event_id=>wwv_flow_imp.id(189134854777788015)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(200413092077719733)
);
end;
/
prompt --application/deployment/install/install_ddl
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(148128745697979333)
,p_install_id=>wwv_flow_imp.id(200413092077719733)
,p_name=>'ddl'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  CREATE TABLE "DOCUMENT" ',
'   (	"DOCUMENT_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"DESCRIPTION" VARCHAR2(32767), ',
'	"FILENAME" VARCHAR2(400), ',
'	"MIME_TYPE" VARCHAR2(255), ',
'	"CREATED_BY" VARCHAR2(30), ',
'	"CREATED_ON" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"UPDATED_BY" VARCHAR2(30), ',
'	"UPDATED_ON" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"DOCUMENT" BLOB, ',
'	"STATUS" VARCHAR2(100), ',
'	"APPROVED_BY" VARCHAR2(500), ',
'	"DOCUMENT_TYPE" VARCHAR2(200), ',
'	 CONSTRAINT "DOCUMENT_PK" PRIMARY KEY ("DOCUMENT_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "DOCUMENT_EMBEDDINGS" ',
'   (	"DOCUMENT_ID" NUMBER, ',
'	"CHUNK_ID" NUMBER, ',
'	"CHUNK_DATA" VARCHAR2(4000), ',
'	"VECTOR_EMB" VECTOR, ',
'	"DOCUMENT_NAME" VARCHAR2(300)',
'   ) ;',
'',
'  CREATE TABLE "DOCUMENT_TYPE" ',
'   (	"ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"TYPE" VARCHAR2(4000 CHAR), ',
'	"DESCRIPTION" VARCHAR2(4000 CHAR), ',
'	"APPROVAL_LEVEL" NUMBER, ',
'	"CREATED" DATE NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE, ',
'	"UPDATED" DATE NOT NULL ENABLE, ',
'	"UPDATED_BY" VARCHAR2(255 CHAR) NOT NULL ENABLE, ',
'	 CONSTRAINT "DOCUMENT_TYPE_ID_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "DEPARTMENTS" ',
'   (	"DEPARTMENT_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"NAME" VARCHAR2(100), ',
'	 CONSTRAINT "departments_ID_PK" PRIMARY KEY ("DEPARTMENT_ID")',
'  USING INDEX  ENABLE, ',
'	 UNIQUE ("NAME")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "EMPLOYEES" ',
'   (	"EMPLOYEE_ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, ',
'	"FIRST_NAME" VARCHAR2(100), ',
'	"LAST_NAME" VARCHAR2(100), ',
'	"EMAIL" VARCHAR2(150), ',
'	"PHONE" VARCHAR2(20), ',
'	"EMPLOYEE_TYPE" VARCHAR2(20), ',
'	"DEPARTMENT_ID" NUMBER, ',
'	"ROLE" VARCHAR2(100), ',
'	"MANAGER_ID" NUMBER, ',
'	"JOINING_DATE" DATE, ',
'	 CONSTRAINT "EMPLOYEES_PK" PRIMARY KEY ("EMPLOYEE_ID")',
'  USING INDEX  ENABLE, ',
'	 UNIQUE ("EMAIL")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DOCUMENT_BIU" ',
'before insert or update on document',
'for each row',
'declare',
'begin',
'    if inserting then',
'        :new.created_by := coalesce(sys_context(''APEX$SESSION'',''APP_USER''), user);',
'        :new.created_on := localtimestamp;',
'    else',
'        :new.updated_by := coalesce(sys_context(''APEX$SESSION'',''APP_USER''), user);',
'        :new.updated_on := localtimestamp;',
'    end if;',
'end;',
'/',
'ALTER TRIGGER "DOCUMENT_BIU" ENABLE;',
'',
'  ALTER TABLE "DOCUMENT_EMBEDDINGS" ADD CONSTRAINT "DOCUMENT_EMBEDDINGS_CON" FOREIGN KEY ("DOCUMENT_ID")',
'	  REFERENCES "DOCUMENT" ("DOCUMENT_ID") ON DELETE CASCADE ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DOCUMENT_TYPE_BIU" ',
'    before insert or update ',
'    on document_type ',
'    for each row ',
'begin ',
'    if inserting then ',
'        :new.created := sysdate; ',
'        :new.created_by := coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'    end if; ',
'    :new.updated := sysdate; ',
'    :new.updated_by := coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user); ',
'end document_type_biu;',
'/',
'ALTER TRIGGER "DOCUMENT_TYPE_BIU" ENABLE;',
'',
'  ALTER TABLE "EMPLOYEES" ADD CONSTRAINT "FK_EMPLOYEE_DEPARTMENT" FOREIGN KEY ("DEPARTMENT_ID")',
'	  REFERENCES "DEPARTMENTS" ("DEPARTMENT_ID") ENABLE;',
'  ALTER TABLE "EMPLOYEES" ADD CONSTRAINT "FK_EMPLOYEE_MANAGER" FOREIGN KEY ("MANAGER_ID")',
'	  REFERENCES "EMPLOYEES" ("EMPLOYEE_ID") DISABLE;',
'',
'create or replace procedure generate_doc_embeddings (p_doc_id number)',
'is',
'l_name varchar2(300);',
'begin',
'',
'select filename ',
'into l_name',
'from document ',
'where document_id = p_doc_id; ',
'',
'INSERT INTO document_embeddings (document_id, chunk_id, chunk_data, vector_emb, document_name)',
'            SELECT dt.document_id AS document_id, ',
'                  et.chunk_id, ',
'                  et.chunk_data, ',
'                  to_vector(et.vector_emb) AS vector_emb,',
'                  l_name',
'            FROM document dt',
'            CROSS JOIN TABLE(',
'                dbms_vector_chain.utl_to_embeddings(',
'                    dbms_vector_chain.utl_to_chunks(',
'                        dbms_vector_chain.utl_to_text(dt.document), ',
'                        json(''{"by":"words","max":"300","split":"sentence","normalize":"all"}'')',
'                    ),',
'                    json(''{"provider":"database", "model":"DOC_MODEL"}'')',
'                )',
'            )  t',
'            CROSS JOIN JSON_TABLE(',
'                t.column_value, ',
'                ''$[*]'' COLUMNS (',
'                    chunk_id NUMBER PATH ''$.embed_id'',',
'                    chunk_data VARCHAR2(4000) PATH ''$.embed_data'',',
'                    vector_emb CLOB PATH ''$.embed_vector''',
'                )',
'            ) AS et',
'            WHERE dt.document_id = p_doc_id;',
'',
'end;',
'/',
'',
'',
'',
'',
'',
'create or replace function get_approval_level_doc (p_doc_type in varchar2)',
'return number',
'is',
'v_approval_level number :=1;',
'begin',
'select  approval_level',
'into v_approval_level',
'from document_type',
'where type = p_doc_type;',
'',
'return v_approval_level;',
'end;',
'/',
'',
'',
'',
'',
'',
' '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(148128782350979346)
,p_script_id=>wwv_flow_imp.id(148128745697979333)
,p_object_owner=>'#OWNER#'
,p_object_type=>'FUNCTION'
,p_object_name=>'GET_APPROVAL_LEVEL_DOC'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(148129047667979347)
,p_script_id=>wwv_flow_imp.id(148128745697979333)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PROCEDURE'
,p_object_name=>'GENERATE_DOC_EMBEDDINGS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(148129229726979348)
,p_script_id=>wwv_flow_imp.id(148128745697979333)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'DEPARTMENTS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(148129453987979349)
,p_script_id=>wwv_flow_imp.id(148128745697979333)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'DOCUMENT'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(148129575228979349)
,p_script_id=>wwv_flow_imp.id(148128745697979333)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'DOCUMENT_EMBEDDINGS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(148129830899979350)
,p_script_id=>wwv_flow_imp.id(148128745697979333)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'DOCUMENT_TYPE'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(148129908207979350)
,p_script_id=>wwv_flow_imp.id(148128745697979333)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'EMPLOYEES'
);
end;
/
prompt --application/deployment/install/install_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(74150397247867920)
,p_install_id=>wwv_flow_imp.id(200413092077719733)
,p_name=>'data'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --DEPARTMENTS: 3/10000 rows exported, APEX$DATA$PKG/DEPARTMENTS$678462',
'    apex_data_install.load_supporting_object_data(p_table_name => ''DEPARTMENTS'', p_delete_after_install => false );',
'    --DOCUMENT_TYPE: 4/10000 rows exported, APEX$DATA$PKG/DOCUMENT_TYPE$488894',
'    apex_data_install.load_supporting_object_data(p_table_name => ''DOCUMENT_TYPE'', p_delete_after_install => false );',
'    --EMPLOYEES: 4/10000 rows exported, APEX$DATA$PKG/EMPLOYEES$753351',
'    apex_data_install.load_supporting_object_data(p_table_name => ''EMPLOYEES'', p_delete_after_install => false );',
'end;'))
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
