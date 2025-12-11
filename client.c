/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bfernan2 <bfernan2@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/12/08 19:19:41 by bfernan2          #+#    #+#             */
/*   Updated: 2025/12/08 21:28:38 by bfernan2         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

static void	send_string(int pid, char *str)
{
	int	i;

	i = 0;
	
}

int	main(int argc, char **argv)
{
	int	server_pid;

	if (argc != 3 || !ft_strlen(argv[2]))
	{
		ft_putstr_fd("Uso: ./client <PID_SERVER> <MENSAGEM>\n", 2);
		return (1);
	}
	server_pid = ft_atoi(argv[1]);
	if (server_pid <= 0)
	{
		ft_putstr_fd("Erro: PID inválido\n", 2);
		return (1);
	}
	return (0);
}
