/*
 * A small program to create two linux threads without 
 * using the posix thread library
 * 
 * Created by : Akash Pandey
 * Date: 5-Aug-2015
 * */

#include <malloc.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <linux/sched.h>
#include <stdio.h>

void func_for_thread1(void* arg)
{
	int i = 0;
	while(i<10)
	{
		printf("I am func_for_thread1 i<%d>\n", i);
		i++;
		sleep(1);
	}
}
void func_for_thread2(void* arg)
{
	int i = 0;
	while(i<10)
	{
		printf("I am func_for_thread2 i<%d>\n", i);
		i++;
		sleep(2);
	}
}
#define STACK_SIZE 64*1024
int main()
{
	void *stack1, *stack2, *top_of_stack1, *top_of_stack2;
	int pid1, pid2;
	stack1 = (void*)malloc(STACK_SIZE);
	stack2 = (void*)malloc(STACK_SIZE);
	if(!stack1 || !stack2)
	{
		printf("failed malloc");
		return 1;
	}
	top_of_stack1 = stack1 + STACK_SIZE;
	top_of_stack2 = stack2 + STACK_SIZE;
	pid1 = clone( &func_for_thread1, 
				  top_of_stack1,
                  SIGCHLD | CLONE_FS | CLONE_FILES | CLONE_SIGHAND | CLONE_VM, 0 );

    pid2 = clone( &func_for_thread2, 
				  top_of_stack2,
                  SIGCHLD | CLONE_FS | CLONE_FILES | CLONE_SIGHAND | CLONE_VM, 0 );
	wait(NULL);
	printf("returned from call to main thread\n");
	free(stack1);
	free(stack2);
	return 0;
}
