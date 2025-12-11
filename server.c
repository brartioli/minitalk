#include "minitalk.h"

static void    handle_signal(int sig)
{
    static int  bit_count;
    static unsigned char   current_char;

    bit_count = 0;
    current_char = 0;

    if (sig == SIGUSR2)
        current_char |= (1 << bit_count);
    bit_count++;
    if (bit_count == 8)
    {
        write(1, &current_char, 1);
        bit_count = 0;
        current_char = 0;
    }
}

int main(void)
{
    __pid_t pid;

    pid = getpid(); //PID é o process ID, número unico que o SO dá pra cada processo em execução, "RG" do processo
    ft_putstr_fd("Server PID: ", 1);
    ft_putnbr_fd(pid, 1);
    ft_putchar_fd('\n', 1);

    signal(SIGUSR1, handle_signal);
    signal(SIGUSR2, handle_signal);
    while (1)
        pause();
    return (0);
}