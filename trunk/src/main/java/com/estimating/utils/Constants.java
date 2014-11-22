package com.estimating.utils;

public final class Constants {

	// UseCase Classification
	public static final double USE_CASE_SIMPLE = 5;
	public static final double USE_CASE_AVERAGE = 10;
	public static final double USE_CASE_COMPLEX = 15;

	// Actor Classification
	public static final double ACTOR_SIMPLE = 1;
	public static final double ACTOR_AVERAGE = 2;
	public static final double ACTOR_COMPLEX = 3;

	// Technical Complexity Factor, Description Weight
	public static final double T1_DISTIBUTED_SYSTEM = 2.0;
	public static final double T2_PERFORMEN_OBJECTIVES = 2.0;
	public static final double T3_END_USER_EFFICIENCY = 1.0;
	public static final double T4_INTERNAL_PROCESSING_COMPLEXITY = 1.0;
	public static final double T5_CODE_REUSABILITY = 1.0;
	public static final double T6_EASY_TO_INSTALL = 0.5;
	public static final double T7_EASY_TO_USE = 0.5;
	public static final double T8_PORTABILITY_TO_OTHER_PLATFORMS = 2.0;
	public static final double T9_SYSTEM_MAINTENANCE = 1.0;
	public static final double T10_CONCURRENT = 1.0;
	public static final double T11_SECURITY_FEATURES = 1.0;
	public static final double T12_ACCESS_TO_THIRD_PARTIES = 1.0;
	public static final double T13_END_USER_TRAINING = 1.0;
	public static final double TCF_VALUE_1 = 0.6;
	public static final double TCF_VALUE_2 = 0.01;

	// Environmental complexity factori
	public static final double E1_FARMILIARITY_WITH_DEVELOPMENT_PROCESS_USES = 1.5;
	public static final double E2_APPLICATION_EXPERIENCE = 0.5;
	public static final double E3_OBJECT_EXPERIENCE_OF_TEAM = 1.0;
	public static final double E4_LEAD_ANALYST_CAPABILITY = 0.5;
	public static final double E5_MOTIVATION_OF_TEAM = 1.0;
	public static final double E6_STABILITY_OF_REQUIREMENTS = 2.0;
	public static final double E7_PART_TIME_STAFF = -1.0;
	public static final double E8_DIFFICULT_PROGRAMING_LANGUAGE = -1.0;
	public static final double ECF_VALUE_1 = -0.03;
	public static final double ECF_VALUE_2 = 1.4;

	// sorfware system components
	public static final double USER_INPUTS_SIMPLE = 2;
	public static final double USER_INPUTS_AVERAGE = 4;
	public static final double USER_INPUTS_COMPLEX = 6;
	public static final double USER_OUTPUTS_SIMPLE = 4;
	public static final double USER_OUTPUTS_AVERAGE = 5;
	public static final double USER_OUTPUTS_COMPLEX = 7;
	public static final double USER_ONLINE_REQUIRES_SIMPLE = 3;
	public static final double USER_ONLINE_REQUIRES_AVERAGE = 4;
	public static final double USER_ONLINE_REQUIRES_COMPLEX = 6;
	public static final double LOGICAL_FILES_SIMPLE = 7;
	public static final double LOGICAL_FILES_AVERAGE = 10;
	public static final double LOGICAL_FILES_COMPLEX = 15;
	public static final double EXTERNAL_INTERFACES_SIMPLE = 5;
	public static final double EXTERNAL_INTERFACES_AVERAGE = 7;
	public static final double EXTERNAL_INTERFACES_COMPLEX = 10;

	// technical complexity factor
	public static final double TCF_C1 = 0.65;
	public static final double TCF_C2 = 0.01;

	// role
	public static final int ROLE_ADMIN = 1;
	public static final int ROLE_USER = 2;

	// Map fp_estimating table
	public static final String FUNCTION_POINT_USER_INPUT = "user_Input";
	public static final String FUNCTION_POINT_USER_ONLINE_QUERY = "user_Online_Query";
	public static final String FUNCTION_POINT_LOGICAL_FILE = "logical_File";
	public static final String FUNCTION_POINT_EXTERNAL_INTERFACE = "external_Interface";
	public static final String FUNCTION_POINT_RELATIVE_FACTOR = "relative_Factor ";
	public static final String FUNCTION_POINT_USER_OUTPUT = "user_Output";
	public static final String FUNCTION_POINT_TOTAL = "total";

	// Map uc_estimating table
	public static final String USECASE_POINT_WAS = "Actor";
	public static final String USECASE_POINT_WUC = "UseCase";
	public static final String USECASE_POINT_TECHNICAL_FACTOR = "Technical_Factor";
	public static final String USECASE_POINT_ENVIRIMENT_FACTOR = "Enviriment_Factor";

}
