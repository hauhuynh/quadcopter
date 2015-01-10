
#ifndef CONFIGURATION_H_
#define CONFIGURATION_H_


// ANGULAR POSITION
#define HOW_MUCH_I_TRUST_THE_GYROSCOPE     			0.98f
#define HOW_MUCH_I_TRUST_THE_ACCELEROMETER			1 - HOW_MUCH_I_TRUST_THE_GYROSCOPE
#define GYROSCOPE_SAMPLE_RATE              			1.0f / (1000.0f / 1.0f)	/* sample rate is closer to 1.74k per second now that time is not measured */


// ANALYTICS
#define ANALYTICS_FLUSH_FREQUENCY 		   			1000 / 200 	/* how often to flush the metrics (20 times per second) */
#define	ANALYTICS_CHARACTERS_TO_SEND_PER_FLUSH 		5

// METRICS
#define METRIC_SECONDS_ELAPSED								0
#define METRIC_LOOP_FREQUENCY								1
#define METRIC_GYROSCOPE_X_POSITION							2
#define METRIC_GYROSCOPE_Y_POSITION							3
#define METRIC_GYROSCOPE_Z_POSITION							4
#define METRIC_GYROSCOPE_TEMPERATURE						5
#define METRIC_GYROSCOPE_SAMPLE_RATE						6
#define METRIC_ACCELEROMETER_X_POSITION						7
#define METRIC_ACCELEROMETER_Y_POSITION						8
#define METRIC_ACCELEROMETER_Z_POSITION						9
#define METRIC_ACCELEROMETER_SAMPLE_RATE					10
#define METRIC_ANGULAR_X_POSITION							11
#define METRIC_ANGULAR_Y_POSITION							12
#define METRIC_ANGULAR_Z_POSITION							13
#define METRIC_PID_X_ADJUSTMENT								14
#define METRIC_PID_Y_ADJUSTMENT								15
#define METRIC_PID_PROPORTIONAL								16
#define METRIC_REMOTE_THROTTLE								17
#define METRIC_PROPELLOR_B_SPEED							18
#define METRIC_PROPELLOR_E_SPEED							19
#define METRIC_PROPELLOR_C_SPEED							20
#define METRIC_PROPELLOR_A_SPEED							21
#define METRIC_METRICS_BUFFER_SIZE							22

#endif
