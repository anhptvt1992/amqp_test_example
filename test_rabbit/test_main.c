
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <amqp.h>
#include <amqp_tcp_socket.h>

#include <assert.h>
#include <sys/time.h>
#include "utils.h"

int main(int argc, char const *const *argv)
{
	const char *host_name;
	const char *user_name;
	const char *vhost;
	const char *pwd;
	int port;
	char const *exchange;
	char const *bindingkey;
	int error_string;
	amqp_socket_t *socket;
	amqp_connection_state_t conn;
	amqp_rpc_reply_t check_on_amqp;
	amqp_bytes_t queuename;
	amqp_queue_declare_ok_t *r;

	if (argc < 7)
	{
	    fprintf(stderr,
	            "Usage: amqps_connect_timeout host port vhost user pwd exchange binding_Key"
	            "[cacert.pem [verifypeer] [verifyhostname] [key.pem cert.pem]]\n");
	    return 1;
	}

	host_name = argv[1];
	port = atoi(argv[2]);
	vhost = argv[3];
	user_name = argv[4];
	pwd = argv[5];
	exchange = argv[6];
	bindingkey = argv[7];

	//create new connection
	conn = amqp_new_connection();

	// create new socket with ssl/tls sercurity for new connection
	socket = amqp_tcp_socket_new(conn);

	//check socket create is successfull
	if(!socket)
	{
		printf("socket was create unsuccessful! \r\n");
	}

	//open socket for connection.
	error_string = amqp_socket_open(socket, host_name, port);
	if(error_string < 0)
	{
		printf("%s \n", amqp_error_string2(error_string));;
		return 0;
	}
	//login to server
	check_on_amqp = amqp_login(conn, vhost, 0, 131072, 0, AMQP_SASL_METHOD_PLAIN, user_name, pwd);

	//check login status
	if(check_on_amqp.reply_type != AMQP_RESPONSE_NORMAL)
	{
		printf("Login fail!\r\n");
		return 1;
	}

	//Open channel for connection
	amqp_channel_open(conn, 1);

	//Check Open channel
	check_on_amqp = amqp_get_rpc_reply(conn);

	if(check_on_amqp.reply_type != AMQP_RESPONSE_NORMAL)
	{
		printf("Fail to open channel connect!\r\n");
		return 1;
	}

	//Declare queue for connection
	r = amqp_queue_declare(conn, 1, amqp_empty_bytes, 0, 0, 0, 1, amqp_empty_table);
	//Check AMQP feedback for queue creating
	check_on_amqp = amqp_get_rpc_reply(conn);

	if(check_on_amqp.reply_type != AMQP_RESPONSE_NORMAL)
	{
		printf("Fail to create queue for this channel!\r\n");
		return 1;
	}

	//allocate queue to memory
	queuename = amqp_bytes_malloc_dup(r->queue);
	//check queue is create or NULL
	if (queuename.bytes == NULL)
	{
	  fprintf(stderr, "Out of memory while copying queue name");
	  return 1;
	}

	//create routing for connection with binding_key, exchange, queue
	amqp_queue_bind(conn, 1,queuename, amqp_cstring_bytes(exchange), amqp_cstring_bytes(bindingkey), amqp_empty_table);
	//Check AMQP feedback for creating routing
	check_on_amqp = amqp_get_rpc_reply(conn);

	if(check_on_amqp.reply_type != AMQP_RESPONSE_NORMAL)
	{
		printf("Fail to create routing for this channel!\r\n");
		return 1;
	}

	//create consumer for broker(Only use for broker to listen data from client with initialize value
	amqp_basic_consume(conn, 1, queuename, amqp_empty_bytes, 0, 1, 0, amqp_empty_table);
	//Check AMQP feedback for creating consumer
	check_on_amqp = amqp_get_rpc_reply(conn);

	if(check_on_amqp.reply_type != AMQP_RESPONSE_NORMAL)
	{
		printf("Fail to create consumer for this channel!\r\n");
		return 1;
	}


	//start to take data from client
	while(1)
	{
		amqp_envelope_t envelope_data;

		//clear all data in buffer of connection
		amqp_maybe_release_buffers(conn);

		//waiting and get data is published from client and check status
		check_on_amqp = amqp_consume_message(conn, &envelope_data, NULL, 0);
		if(check_on_amqp.reply_type != AMQP_RESPONSE_NORMAL)
		{
			printf("Fail to get data from client!\r\n");
			break;
		}

		//print out properties of envelope
	    printf("Delivery %u, exchange %.*s routingkey %.*s\n",
			 (unsigned)envelope_data.delivery_tag, (int)envelope_data.exchange.len,
			 (char *)envelope_data.exchange.bytes, (int)envelope_data.routing_key.len,
			 (char *)envelope_data.routing_key.bytes);
	    //print out data in envelope
	    amqp_dump(envelope_data.message.body.bytes, envelope_data.message.body.len);
	    amqp_destroy_envelope(&envelope_data);
	}

	amqp_channel_close(conn, 1, AMQP_REPLY_SUCCESS);
	// close connection to finish
	amqp_connection_close(conn, AMQP_REPLY_SUCCESS);
	// Remove connection was created
	amqp_destroy_connection(conn);
	//Un-initialize ssl/tls for this program.

	printf("Done \r\n");
	return 0;

}

