
_bsh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    return -1;
  return 0;
}

int main(int argc,char *argv[])
{
       0:	f3 0f 1e fb          	endbr32 
       4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       8:	83 e4 f0             	and    $0xfffffff0,%esp
       b:	ff 71 fc             	pushl  -0x4(%ecx)
       e:	55                   	push   %ebp
       f:	89 e5                	mov    %esp,%ebp
      11:	56                   	push   %esi
      12:	53                   	push   %ebx
      13:	51                   	push   %ecx
      14:	83 ec 0c             	sub    $0xc,%esp
      17:	8b 19                	mov    (%ecx),%ebx
      19:	8b 71 04             	mov    0x4(%ecx),%esi
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      1c:	eb 07                	jmp    25 <main+0x25>
      1e:	66 90                	xchg   %ax,%ax
    if(fd >= 3){
      20:	83 f8 02             	cmp    $0x2,%eax
      23:	7f 29                	jg     4e <main+0x4e>
  while((fd = open("console", O_RDWR)) >= 0){
      25:	83 ec 08             	sub    $0x8,%esp
      28:	6a 02                	push   $0x2
      2a:	68 1c 14 00 00       	push   $0x141c
      2f:	e8 af 0e 00 00       	call   ee3 <open>
      34:	83 c4 10             	add    $0x10,%esp
      37:	85 c0                	test   %eax,%eax
      39:	79 e5                	jns    20 <main+0x20>
      break;
    }
  }

  // Read and run input commands.
  if (argc==1)
      3b:	83 fb 01             	cmp    $0x1,%ebx
      3e:	0f 84 aa 00 00 00    	je     ee <main+0xee>
      runcmd(parsecmd(buf));
    wait();
  }
  close(fd2);
  }  
  if (argc==2)
      44:	83 fb 02             	cmp    $0x2,%ebx
      47:	74 13                	je     5c <main+0x5c>
  wait();
  }
  }
  }
 
  exit();
      49:	e8 55 0e 00 00       	call   ea3 <exit>
      close(fd);
      4e:	83 ec 0c             	sub    $0xc,%esp
      51:	50                   	push   %eax
      52:	e8 74 0e 00 00       	call   ecb <close>
      break;
      57:	83 c4 10             	add    $0x10,%esp
      5a:	eb df                	jmp    3b <main+0x3b>
  fd1=open(argv[1],O_RDONLY);
      5c:	51                   	push   %ecx
      5d:	51                   	push   %ecx
      5e:	6a 00                	push   $0x0
      60:	ff 76 04             	pushl  0x4(%esi)
      63:	e8 7b 0e 00 00       	call   ee3 <open>
  if (fd1<0)
      68:	83 c4 10             	add    $0x10,%esp
      6b:	85 c0                	test   %eax,%eax
      6d:	0f 88 25 01 00 00    	js     198 <main+0x198>
  if (fd1>0)
      73:	74 d4                	je     49 <main+0x49>
  memset(buf,0,sizeof(buf));
      75:	50                   	push   %eax
      76:	6a 64                	push   $0x64
      78:	6a 00                	push   $0x0
      7a:	68 a0 1a 00 00       	push   $0x1aa0
      7f:	e8 7c 0c 00 00       	call   d00 <memset>
  while(gets(buf,sizeof(buf))>=0)
      84:	83 c4 10             	add    $0x10,%esp
      87:	eb 0c                	jmp    95 <main+0x95>
      89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  wait();
      90:	e8 16 0e 00 00       	call   eab <wait>
  while(gets(buf,sizeof(buf))>=0)
      95:	83 ec 08             	sub    $0x8,%esp
      98:	6a 64                	push   $0x64
      9a:	68 a0 1a 00 00       	push   $0x1aa0
      9f:	e8 bc 0c 00 00       	call   d60 <gets>
  if (buf[0]==0)
      a4:	83 c4 10             	add    $0x10,%esp
      a7:	80 3d a0 1a 00 00 00 	cmpb   $0x0,0x1aa0
      ae:	74 99                	je     49 <main+0x49>
  printf(1,"%s",buf);
      b0:	83 ec 04             	sub    $0x4,%esp
      b3:	68 a0 1a 00 00       	push   $0x1aa0
      b8:	68 2c 14 00 00       	push   $0x142c
      bd:	6a 01                	push   $0x1
      bf:	e8 4c 0f 00 00       	call   1010 <printf>
int
fork1(void)
{
  int pid;

  pid = fork();
      c4:	e8 d2 0d 00 00       	call   e9b <fork>
  if(pid == -1)
      c9:	83 c4 10             	add    $0x10,%esp
      cc:	83 f8 ff             	cmp    $0xffffffff,%eax
      cf:	0f 84 1e 01 00 00    	je     1f3 <main+0x1f3>
  if(fork1() == 0)
      d5:	85 c0                	test   %eax,%eax
      d7:	75 b7                	jne    90 <main+0x90>
  runcmd(parsecmd(buf));
      d9:	83 ec 0c             	sub    $0xc,%esp
      dc:	68 a0 1a 00 00       	push   $0x1aa0
      e1:	e8 ea 0a 00 00       	call   bd0 <parsecmd>
      e6:	89 04 24             	mov    %eax,(%esp)
      e9:	e8 a2 01 00 00       	call   290 <runcmd>
    if ((fd2 = open("history", O_CREATE | O_RDWR)) < 0)
      ee:	50                   	push   %eax
      ef:	50                   	push   %eax
      f0:	68 02 02 00 00       	push   $0x202
      f5:	68 24 14 00 00       	push   $0x1424
      fa:	e8 e4 0d 00 00       	call   ee3 <open>
      ff:	83 c4 10             	add    $0x10,%esp
     102:	89 c3                	mov    %eax,%ebx
     104:	85 c0                	test   %eax,%eax
     106:	79 3f                	jns    147 <main+0x147>
    printf(2, "copy: error initializing file: history");
     108:	50                   	push   %eax
     109:	50                   	push   %eax
     10a:	68 74 14 00 00       	push   $0x1474
     10f:	6a 02                	push   $0x2
     111:	e8 fa 0e 00 00       	call   1010 <printf>
    exit();
     116:	e8 88 0d 00 00       	call   ea3 <exit>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
     11b:	80 3d a2 1a 00 00 20 	cmpb   $0x20,0x1aa2
     122:	0f 84 86 00 00 00    	je     1ae <main+0x1ae>
     128:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     12f:	90                   	nop
  pid = fork();
     130:	e8 66 0d 00 00       	call   e9b <fork>
  if(pid == -1)
     135:	83 f8 ff             	cmp    $0xffffffff,%eax
     138:	0f 84 b5 00 00 00    	je     1f3 <main+0x1f3>
    if(fork1() == 0)
     13e:	85 c0                	test   %eax,%eax
     140:	74 97                	je     d9 <main+0xd9>
    wait();
     142:	e8 64 0d 00 00       	call   eab <wait>
    while(getcmd(buf, sizeof(buf)) >= 0){
     147:	83 ec 08             	sub    $0x8,%esp
     14a:	6a 64                	push   $0x64
     14c:	68 a0 1a 00 00       	push   $0x1aa0
     151:	e8 aa 00 00 00       	call   200 <getcmd>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	78 2a                	js     187 <main+0x187>
   printf(fd2,"%s",buf);
     15d:	83 ec 04             	sub    $0x4,%esp
     160:	68 a0 1a 00 00       	push   $0x1aa0
     165:	68 2c 14 00 00       	push   $0x142c
     16a:	53                   	push   %ebx
     16b:	e8 a0 0e 00 00       	call   1010 <printf>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
     170:	83 c4 10             	add    $0x10,%esp
     173:	80 3d a0 1a 00 00 63 	cmpb   $0x63,0x1aa0
     17a:	75 b4                	jne    130 <main+0x130>
     17c:	80 3d a1 1a 00 00 64 	cmpb   $0x64,0x1aa1
     183:	75 ab                	jne    130 <main+0x130>
     185:	eb 94                	jmp    11b <main+0x11b>
  close(fd2);
     187:	83 ec 0c             	sub    $0xc,%esp
     18a:	53                   	push   %ebx
     18b:	e8 3b 0d 00 00       	call   ecb <close>
     190:	83 c4 10             	add    $0x10,%esp
     193:	e9 b1 fe ff ff       	jmp    49 <main+0x49>
  printf(2,"ERROR");
     198:	52                   	push   %edx
     199:	52                   	push   %edx
     19a:	68 3d 14 00 00       	push   $0x143d
     19f:	6a 02                	push   $0x2
     1a1:	e8 6a 0e 00 00       	call   1010 <printf>
     1a6:	83 c4 10             	add    $0x10,%esp
     1a9:	e9 9b fe ff ff       	jmp    49 <main+0x49>
      buf[strlen(buf)-1] = 0;  // chop \n
     1ae:	83 ec 0c             	sub    $0xc,%esp
     1b1:	68 a0 1a 00 00       	push   $0x1aa0
     1b6:	e8 05 0b 00 00       	call   cc0 <strlen>
      if(chdir(buf+3) < 0)
     1bb:	c7 04 24 a3 1a 00 00 	movl   $0x1aa3,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
     1c2:	c6 80 9f 1a 00 00 00 	movb   $0x0,0x1a9f(%eax)
      if(chdir(buf+3) < 0)
     1c9:	e8 45 0d 00 00       	call   f13 <chdir>
     1ce:	83 c4 10             	add    $0x10,%esp
     1d1:	85 c0                	test   %eax,%eax
     1d3:	0f 89 6e ff ff ff    	jns    147 <main+0x147>
        printf(2, "cannot cd %s\n", buf+3);
     1d9:	56                   	push   %esi
     1da:	68 a3 1a 00 00       	push   $0x1aa3
     1df:	68 2f 14 00 00       	push   $0x142f
     1e4:	6a 02                	push   $0x2
     1e6:	e8 25 0e 00 00       	call   1010 <printf>
     1eb:	83 c4 10             	add    $0x10,%esp
     1ee:	e9 54 ff ff ff       	jmp    147 <main+0x147>
    panic("fork");
     1f3:	83 ec 0c             	sub    $0xc,%esp
     1f6:	68 a5 13 00 00       	push   $0x13a5
     1fb:	e8 70 00 00 00       	call   270 <panic>

00000200 <getcmd>:
{
     200:	f3 0f 1e fb          	endbr32 
     204:	55                   	push   %ebp
     205:	89 e5                	mov    %esp,%ebp
     207:	56                   	push   %esi
     208:	53                   	push   %ebx
     209:	8b 75 0c             	mov    0xc(%ebp),%esi
     20c:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "bsh> ");
     20f:	83 ec 08             	sub    $0x8,%esp
     212:	68 78 13 00 00       	push   $0x1378
     217:	6a 02                	push   $0x2
     219:	e8 f2 0d 00 00       	call   1010 <printf>
  memset(buf, 0, nbuf);
     21e:	83 c4 0c             	add    $0xc,%esp
     221:	56                   	push   %esi
     222:	6a 00                	push   $0x0
     224:	53                   	push   %ebx
     225:	e8 d6 0a 00 00       	call   d00 <memset>
  gets(buf, nbuf);
     22a:	58                   	pop    %eax
     22b:	5a                   	pop    %edx
     22c:	56                   	push   %esi
     22d:	53                   	push   %ebx
     22e:	e8 2d 0b 00 00       	call   d60 <gets>
  if (buf[0]=='e' && buf[1]=='x' && buf[2]=='i' && buf[3]=='t')
     233:	0f b6 03             	movzbl (%ebx),%eax
     236:	83 c4 10             	add    $0x10,%esp
     239:	3c 65                	cmp    $0x65,%al
     23b:	74 13                	je     250 <getcmd+0x50>
  if(buf[0] == 0) // EOF
     23d:	84 c0                	test   %al,%al
     23f:	0f 94 c0             	sete   %al
     242:	0f b6 c0             	movzbl %al,%eax
     245:	f7 d8                	neg    %eax
}
     247:	8d 65 f8             	lea    -0x8(%ebp),%esp
     24a:	5b                   	pop    %ebx
     24b:	5e                   	pop    %esi
     24c:	5d                   	pop    %ebp
     24d:	c3                   	ret    
     24e:	66 90                	xchg   %ax,%ax
  return 0;
     250:	31 c0                	xor    %eax,%eax
  if (buf[0]=='e' && buf[1]=='x' && buf[2]=='i' && buf[3]=='t')
     252:	80 7b 01 78          	cmpb   $0x78,0x1(%ebx)
     256:	75 ef                	jne    247 <getcmd+0x47>
     258:	80 7b 02 69          	cmpb   $0x69,0x2(%ebx)
     25c:	75 e9                	jne    247 <getcmd+0x47>
     25e:	80 7b 03 74          	cmpb   $0x74,0x3(%ebx)
     262:	75 e3                	jne    247 <getcmd+0x47>
  exit();
     264:	e8 3a 0c 00 00       	call   ea3 <exit>
     269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000270 <panic>:
{
     270:	f3 0f 1e fb          	endbr32 
     274:	55                   	push   %ebp
     275:	89 e5                	mov    %esp,%ebp
     277:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     27a:	ff 75 08             	pushl  0x8(%ebp)
     27d:	68 18 14 00 00       	push   $0x1418
     282:	6a 02                	push   $0x2
     284:	e8 87 0d 00 00       	call   1010 <printf>
  exit();
     289:	e8 15 0c 00 00       	call   ea3 <exit>
     28e:	66 90                	xchg   %ax,%ax

00000290 <runcmd>:
{
     290:	f3 0f 1e fb          	endbr32 
     294:	55                   	push   %ebp
     295:	89 e5                	mov    %esp,%ebp
     297:	53                   	push   %ebx
     298:	83 ec 14             	sub    $0x14,%esp
     29b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     29e:	85 db                	test   %ebx,%ebx
     2a0:	74 7e                	je     320 <runcmd+0x90>
  switch(cmd->type){
     2a2:	83 3b 05             	cmpl   $0x5,(%ebx)
     2a5:	0f 87 04 01 00 00    	ja     3af <runcmd+0x11f>
     2ab:	8b 03                	mov    (%ebx),%eax
     2ad:	3e ff 24 85 44 14 00 	notrack jmp *0x1444(,%eax,4)
     2b4:	00 
    if(pipe(p) < 0)
     2b5:	83 ec 0c             	sub    $0xc,%esp
     2b8:	8d 45 f0             	lea    -0x10(%ebp),%eax
     2bb:	50                   	push   %eax
     2bc:	e8 f2 0b 00 00       	call   eb3 <pipe>
     2c1:	83 c4 10             	add    $0x10,%esp
     2c4:	85 c0                	test   %eax,%eax
     2c6:	0f 88 05 01 00 00    	js     3d1 <runcmd+0x141>
  pid = fork();
     2cc:	e8 ca 0b 00 00       	call   e9b <fork>
  if(pid == -1)
     2d1:	83 f8 ff             	cmp    $0xffffffff,%eax
     2d4:	0f 84 60 01 00 00    	je     43a <runcmd+0x1aa>
    if(fork1() == 0){
     2da:	85 c0                	test   %eax,%eax
     2dc:	0f 84 fc 00 00 00    	je     3de <runcmd+0x14e>
  pid = fork();
     2e2:	e8 b4 0b 00 00       	call   e9b <fork>
  if(pid == -1)
     2e7:	83 f8 ff             	cmp    $0xffffffff,%eax
     2ea:	0f 84 4a 01 00 00    	je     43a <runcmd+0x1aa>
    if(fork1() == 0){
     2f0:	85 c0                	test   %eax,%eax
     2f2:	0f 84 14 01 00 00    	je     40c <runcmd+0x17c>
    close(p[0]);
     2f8:	83 ec 0c             	sub    $0xc,%esp
     2fb:	ff 75 f0             	pushl  -0x10(%ebp)
     2fe:	e8 c8 0b 00 00       	call   ecb <close>
    close(p[1]);
     303:	58                   	pop    %eax
     304:	ff 75 f4             	pushl  -0xc(%ebp)
     307:	e8 bf 0b 00 00       	call   ecb <close>
    wait();
     30c:	e8 9a 0b 00 00       	call   eab <wait>
    wait();
     311:	e8 95 0b 00 00       	call   eab <wait>
    break;
     316:	83 c4 10             	add    $0x10,%esp
     319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exit();
     320:	e8 7e 0b 00 00       	call   ea3 <exit>
  pid = fork();
     325:	e8 71 0b 00 00       	call   e9b <fork>
  if(pid == -1)
     32a:	83 f8 ff             	cmp    $0xffffffff,%eax
     32d:	0f 84 07 01 00 00    	je     43a <runcmd+0x1aa>
    if(fork1() == 0)
     333:	85 c0                	test   %eax,%eax
     335:	75 e9                	jne    320 <runcmd+0x90>
     337:	eb 6b                	jmp    3a4 <runcmd+0x114>
    if(ecmd->argv[0] == 0)
     339:	8b 43 04             	mov    0x4(%ebx),%eax
     33c:	85 c0                	test   %eax,%eax
     33e:	74 e0                	je     320 <runcmd+0x90>
    exec(ecmd->argv[0],ecmd->argv);
     340:	8d 53 04             	lea    0x4(%ebx),%edx
     343:	51                   	push   %ecx
     344:	51                   	push   %ecx
     345:	52                   	push   %edx
     346:	50                   	push   %eax
     347:	e8 8f 0b 00 00       	call   edb <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     34c:	83 c4 0c             	add    $0xc,%esp
     34f:	ff 73 04             	pushl  0x4(%ebx)
     352:	68 85 13 00 00       	push   $0x1385
     357:	6a 02                	push   $0x2
     359:	e8 b2 0c 00 00       	call   1010 <printf>
    break;
     35e:	83 c4 10             	add    $0x10,%esp
     361:	eb bd                	jmp    320 <runcmd+0x90>
  pid = fork();
     363:	e8 33 0b 00 00       	call   e9b <fork>
  if(pid == -1)
     368:	83 f8 ff             	cmp    $0xffffffff,%eax
     36b:	0f 84 c9 00 00 00    	je     43a <runcmd+0x1aa>
    if(fork1() == 0)
     371:	85 c0                	test   %eax,%eax
     373:	74 2f                	je     3a4 <runcmd+0x114>
    wait();
     375:	e8 31 0b 00 00       	call   eab <wait>
    runcmd(lcmd->right);
     37a:	83 ec 0c             	sub    $0xc,%esp
     37d:	ff 73 08             	pushl  0x8(%ebx)
     380:	e8 0b ff ff ff       	call   290 <runcmd>
    close(rcmd->fd);
     385:	83 ec 0c             	sub    $0xc,%esp
     388:	ff 73 14             	pushl  0x14(%ebx)
     38b:	e8 3b 0b 00 00       	call   ecb <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     390:	58                   	pop    %eax
     391:	5a                   	pop    %edx
     392:	ff 73 10             	pushl  0x10(%ebx)
     395:	ff 73 08             	pushl  0x8(%ebx)
     398:	e8 46 0b 00 00       	call   ee3 <open>
     39d:	83 c4 10             	add    $0x10,%esp
     3a0:	85 c0                	test   %eax,%eax
     3a2:	78 18                	js     3bc <runcmd+0x12c>
      runcmd(bcmd->cmd);
     3a4:	83 ec 0c             	sub    $0xc,%esp
     3a7:	ff 73 04             	pushl  0x4(%ebx)
     3aa:	e8 e1 fe ff ff       	call   290 <runcmd>
    panic("runcmd");
     3af:	83 ec 0c             	sub    $0xc,%esp
     3b2:	68 7e 13 00 00       	push   $0x137e
     3b7:	e8 b4 fe ff ff       	call   270 <panic>
      printf(2, "open %s failed\n", rcmd->file);
     3bc:	51                   	push   %ecx
     3bd:	ff 73 08             	pushl  0x8(%ebx)
     3c0:	68 95 13 00 00       	push   $0x1395
     3c5:	6a 02                	push   $0x2
     3c7:	e8 44 0c 00 00       	call   1010 <printf>
      exit();
     3cc:	e8 d2 0a 00 00       	call   ea3 <exit>
      panic("pipe");
     3d1:	83 ec 0c             	sub    $0xc,%esp
     3d4:	68 aa 13 00 00       	push   $0x13aa
     3d9:	e8 92 fe ff ff       	call   270 <panic>
      close(1);
     3de:	83 ec 0c             	sub    $0xc,%esp
     3e1:	6a 01                	push   $0x1
     3e3:	e8 e3 0a 00 00       	call   ecb <close>
      dup(p[1]);
     3e8:	58                   	pop    %eax
     3e9:	ff 75 f4             	pushl  -0xc(%ebp)
     3ec:	e8 2a 0b 00 00       	call   f1b <dup>
      close(p[0]);
     3f1:	58                   	pop    %eax
     3f2:	ff 75 f0             	pushl  -0x10(%ebp)
     3f5:	e8 d1 0a 00 00       	call   ecb <close>
      close(p[1]);
     3fa:	58                   	pop    %eax
     3fb:	ff 75 f4             	pushl  -0xc(%ebp)
     3fe:	e8 c8 0a 00 00       	call   ecb <close>
      runcmd(pcmd->left);
     403:	5a                   	pop    %edx
     404:	ff 73 04             	pushl  0x4(%ebx)
     407:	e8 84 fe ff ff       	call   290 <runcmd>
      close(0);
     40c:	83 ec 0c             	sub    $0xc,%esp
     40f:	6a 00                	push   $0x0
     411:	e8 b5 0a 00 00       	call   ecb <close>
      dup(p[0]);
     416:	5a                   	pop    %edx
     417:	ff 75 f0             	pushl  -0x10(%ebp)
     41a:	e8 fc 0a 00 00       	call   f1b <dup>
      close(p[0]);
     41f:	59                   	pop    %ecx
     420:	ff 75 f0             	pushl  -0x10(%ebp)
     423:	e8 a3 0a 00 00       	call   ecb <close>
      close(p[1]);
     428:	58                   	pop    %eax
     429:	ff 75 f4             	pushl  -0xc(%ebp)
     42c:	e8 9a 0a 00 00       	call   ecb <close>
      runcmd(pcmd->right);
     431:	58                   	pop    %eax
     432:	ff 73 08             	pushl  0x8(%ebx)
     435:	e8 56 fe ff ff       	call   290 <runcmd>
    panic("fork");
     43a:	83 ec 0c             	sub    $0xc,%esp
     43d:	68 a5 13 00 00       	push   $0x13a5
     442:	e8 29 fe ff ff       	call   270 <panic>
     447:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     44e:	66 90                	xchg   %ax,%ax

00000450 <fork1>:
{
     450:	f3 0f 1e fb          	endbr32 
     454:	55                   	push   %ebp
     455:	89 e5                	mov    %esp,%ebp
     457:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     45a:	e8 3c 0a 00 00       	call   e9b <fork>
  if(pid == -1)
     45f:	83 f8 ff             	cmp    $0xffffffff,%eax
     462:	74 02                	je     466 <fork1+0x16>
  return pid;
}
     464:	c9                   	leave  
     465:	c3                   	ret    
    panic("fork");
     466:	83 ec 0c             	sub    $0xc,%esp
     469:	68 a5 13 00 00       	push   $0x13a5
     46e:	e8 fd fd ff ff       	call   270 <panic>
     473:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     47a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000480 <execcmd>:

//PAGEBREAK!
// Constructors

struct cmd* execcmd(void)
{
     480:	f3 0f 1e fb          	endbr32 
     484:	55                   	push   %ebp
     485:	89 e5                	mov    %esp,%ebp
     487:	53                   	push   %ebx
     488:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     48b:	6a 54                	push   $0x54
     48d:	e8 de 0d 00 00       	call   1270 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     492:	83 c4 0c             	add    $0xc,%esp
     495:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     497:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     499:	6a 00                	push   $0x0
     49b:	50                   	push   %eax
     49c:	e8 5f 08 00 00       	call   d00 <memset>
  cmd->type = EXEC;
     4a1:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     4a7:	89 d8                	mov    %ebx,%eax
     4a9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     4ac:	c9                   	leave  
     4ad:	c3                   	ret    
     4ae:	66 90                	xchg   %ax,%ax

000004b0 <redircmd>:

struct cmd* redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     4b0:	f3 0f 1e fb          	endbr32 
     4b4:	55                   	push   %ebp
     4b5:	89 e5                	mov    %esp,%ebp
     4b7:	53                   	push   %ebx
     4b8:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4bb:	6a 18                	push   $0x18
     4bd:	e8 ae 0d 00 00       	call   1270 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4c2:	83 c4 0c             	add    $0xc,%esp
     4c5:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     4c7:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4c9:	6a 00                	push   $0x0
     4cb:	50                   	push   %eax
     4cc:	e8 2f 08 00 00       	call   d00 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     4d1:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     4d4:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     4da:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     4dd:	8b 45 0c             	mov    0xc(%ebp),%eax
     4e0:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     4e3:	8b 45 10             	mov    0x10(%ebp),%eax
     4e6:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     4e9:	8b 45 14             	mov    0x14(%ebp),%eax
     4ec:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     4ef:	8b 45 18             	mov    0x18(%ebp),%eax
     4f2:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     4f5:	89 d8                	mov    %ebx,%eax
     4f7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     4fa:	c9                   	leave  
     4fb:	c3                   	ret    
     4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     500:	f3 0f 1e fb          	endbr32 
     504:	55                   	push   %ebp
     505:	89 e5                	mov    %esp,%ebp
     507:	53                   	push   %ebx
     508:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     50b:	6a 0c                	push   $0xc
     50d:	e8 5e 0d 00 00       	call   1270 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     512:	83 c4 0c             	add    $0xc,%esp
     515:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     517:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     519:	6a 00                	push   $0x0
     51b:	50                   	push   %eax
     51c:	e8 df 07 00 00       	call   d00 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     521:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     524:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     52a:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     52d:	8b 45 0c             	mov    0xc(%ebp),%eax
     530:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     533:	89 d8                	mov    %ebx,%eax
     535:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     538:	c9                   	leave  
     539:	c3                   	ret    
     53a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000540 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     540:	f3 0f 1e fb          	endbr32 
     544:	55                   	push   %ebp
     545:	89 e5                	mov    %esp,%ebp
     547:	53                   	push   %ebx
     548:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     54b:	6a 0c                	push   $0xc
     54d:	e8 1e 0d 00 00       	call   1270 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     552:	83 c4 0c             	add    $0xc,%esp
     555:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     557:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     559:	6a 00                	push   $0x0
     55b:	50                   	push   %eax
     55c:	e8 9f 07 00 00       	call   d00 <memset>
  cmd->type = LIST;
  cmd->left = left;
     561:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     564:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     56a:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     56d:	8b 45 0c             	mov    0xc(%ebp),%eax
     570:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     573:	89 d8                	mov    %ebx,%eax
     575:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     578:	c9                   	leave  
     579:	c3                   	ret    
     57a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000580 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     580:	f3 0f 1e fb          	endbr32 
     584:	55                   	push   %ebp
     585:	89 e5                	mov    %esp,%ebp
     587:	53                   	push   %ebx
     588:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     58b:	6a 08                	push   $0x8
     58d:	e8 de 0c 00 00       	call   1270 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     592:	83 c4 0c             	add    $0xc,%esp
     595:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     597:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     599:	6a 00                	push   $0x0
     59b:	50                   	push   %eax
     59c:	e8 5f 07 00 00       	call   d00 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     5a1:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     5a4:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     5aa:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     5ad:	89 d8                	mov    %ebx,%eax
     5af:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     5b2:	c9                   	leave  
     5b3:	c3                   	ret    
     5b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     5bf:	90                   	nop

000005c0 <gettoken>:

char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int gettoken(char **ps, char *es, char **q, char **eq)
{
     5c0:	f3 0f 1e fb          	endbr32 
     5c4:	55                   	push   %ebp
     5c5:	89 e5                	mov    %esp,%ebp
     5c7:	57                   	push   %edi
     5c8:	56                   	push   %esi
     5c9:	53                   	push   %ebx
     5ca:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     5cd:	8b 45 08             	mov    0x8(%ebp),%eax
{
     5d0:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     5d3:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     5d6:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     5d8:	39 df                	cmp    %ebx,%edi
     5da:	72 0b                	jb     5e7 <gettoken+0x27>
     5dc:	eb 21                	jmp    5ff <gettoken+0x3f>
     5de:	66 90                	xchg   %ax,%ax
    s++;
     5e0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     5e3:	39 fb                	cmp    %edi,%ebx
     5e5:	74 18                	je     5ff <gettoken+0x3f>
     5e7:	0f be 07             	movsbl (%edi),%eax
     5ea:	83 ec 08             	sub    $0x8,%esp
     5ed:	50                   	push   %eax
     5ee:	68 88 1a 00 00       	push   $0x1a88
     5f3:	e8 28 07 00 00       	call   d20 <strchr>
     5f8:	83 c4 10             	add    $0x10,%esp
     5fb:	85 c0                	test   %eax,%eax
     5fd:	75 e1                	jne    5e0 <gettoken+0x20>
  if(q)
     5ff:	85 f6                	test   %esi,%esi
     601:	74 02                	je     605 <gettoken+0x45>
    *q = s;
     603:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     605:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
     608:	3c 3c                	cmp    $0x3c,%al
     60a:	0f 8f d0 00 00 00    	jg     6e0 <gettoken+0x120>
     610:	3c 3a                	cmp    $0x3a,%al
     612:	0f 8f b4 00 00 00    	jg     6cc <gettoken+0x10c>
     618:	84 c0                	test   %al,%al
     61a:	75 44                	jne    660 <gettoken+0xa0>
     61c:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     61e:	8b 55 14             	mov    0x14(%ebp),%edx
     621:	85 d2                	test   %edx,%edx
     623:	74 05                	je     62a <gettoken+0x6a>
    *eq = s;
     625:	8b 45 14             	mov    0x14(%ebp),%eax
     628:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     62a:	39 df                	cmp    %ebx,%edi
     62c:	72 09                	jb     637 <gettoken+0x77>
     62e:	eb 1f                	jmp    64f <gettoken+0x8f>
    s++;
     630:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     633:	39 fb                	cmp    %edi,%ebx
     635:	74 18                	je     64f <gettoken+0x8f>
     637:	0f be 07             	movsbl (%edi),%eax
     63a:	83 ec 08             	sub    $0x8,%esp
     63d:	50                   	push   %eax
     63e:	68 88 1a 00 00       	push   $0x1a88
     643:	e8 d8 06 00 00       	call   d20 <strchr>
     648:	83 c4 10             	add    $0x10,%esp
     64b:	85 c0                	test   %eax,%eax
     64d:	75 e1                	jne    630 <gettoken+0x70>
  *ps = s;
     64f:	8b 45 08             	mov    0x8(%ebp),%eax
     652:	89 38                	mov    %edi,(%eax)
  return ret;
}
     654:	8d 65 f4             	lea    -0xc(%ebp),%esp
     657:	89 f0                	mov    %esi,%eax
     659:	5b                   	pop    %ebx
     65a:	5e                   	pop    %esi
     65b:	5f                   	pop    %edi
     65c:	5d                   	pop    %ebp
     65d:	c3                   	ret    
     65e:	66 90                	xchg   %ax,%ax
  switch(*s){
     660:	79 5e                	jns    6c0 <gettoken+0x100>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     662:	39 fb                	cmp    %edi,%ebx
     664:	77 34                	ja     69a <gettoken+0xda>
  if(eq)
     666:	8b 45 14             	mov    0x14(%ebp),%eax
     669:	be 61 00 00 00       	mov    $0x61,%esi
     66e:	85 c0                	test   %eax,%eax
     670:	75 b3                	jne    625 <gettoken+0x65>
     672:	eb db                	jmp    64f <gettoken+0x8f>
     674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     678:	0f be 07             	movsbl (%edi),%eax
     67b:	83 ec 08             	sub    $0x8,%esp
     67e:	50                   	push   %eax
     67f:	68 80 1a 00 00       	push   $0x1a80
     684:	e8 97 06 00 00       	call   d20 <strchr>
     689:	83 c4 10             	add    $0x10,%esp
     68c:	85 c0                	test   %eax,%eax
     68e:	75 22                	jne    6b2 <gettoken+0xf2>
      s++;
     690:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     693:	39 fb                	cmp    %edi,%ebx
     695:	74 cf                	je     666 <gettoken+0xa6>
     697:	0f b6 07             	movzbl (%edi),%eax
     69a:	83 ec 08             	sub    $0x8,%esp
     69d:	0f be f0             	movsbl %al,%esi
     6a0:	56                   	push   %esi
     6a1:	68 88 1a 00 00       	push   $0x1a88
     6a6:	e8 75 06 00 00       	call   d20 <strchr>
     6ab:	83 c4 10             	add    $0x10,%esp
     6ae:	85 c0                	test   %eax,%eax
     6b0:	74 c6                	je     678 <gettoken+0xb8>
    ret = 'a';
     6b2:	be 61 00 00 00       	mov    $0x61,%esi
     6b7:	e9 62 ff ff ff       	jmp    61e <gettoken+0x5e>
     6bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     6c0:	3c 26                	cmp    $0x26,%al
     6c2:	74 08                	je     6cc <gettoken+0x10c>
     6c4:	8d 48 d8             	lea    -0x28(%eax),%ecx
     6c7:	80 f9 01             	cmp    $0x1,%cl
     6ca:	77 96                	ja     662 <gettoken+0xa2>
  ret = *s;
     6cc:	0f be f0             	movsbl %al,%esi
    s++;
     6cf:	83 c7 01             	add    $0x1,%edi
    break;
     6d2:	e9 47 ff ff ff       	jmp    61e <gettoken+0x5e>
     6d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6de:	66 90                	xchg   %ax,%ax
  switch(*s){
     6e0:	3c 3e                	cmp    $0x3e,%al
     6e2:	75 1c                	jne    700 <gettoken+0x140>
    if(*s == '>'){
     6e4:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
    s++;
     6e8:	8d 47 01             	lea    0x1(%edi),%eax
    if(*s == '>'){
     6eb:	74 1c                	je     709 <gettoken+0x149>
    s++;
     6ed:	89 c7                	mov    %eax,%edi
     6ef:	be 3e 00 00 00       	mov    $0x3e,%esi
     6f4:	e9 25 ff ff ff       	jmp    61e <gettoken+0x5e>
     6f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     700:	3c 7c                	cmp    $0x7c,%al
     702:	74 c8                	je     6cc <gettoken+0x10c>
     704:	e9 59 ff ff ff       	jmp    662 <gettoken+0xa2>
      s++;
     709:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     70c:	be 2b 00 00 00       	mov    $0x2b,%esi
     711:	e9 08 ff ff ff       	jmp    61e <gettoken+0x5e>
     716:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     71d:	8d 76 00             	lea    0x0(%esi),%esi

00000720 <peek>:

int peek(char **ps, char *es, char *toks)
{
     720:	f3 0f 1e fb          	endbr32 
     724:	55                   	push   %ebp
     725:	89 e5                	mov    %esp,%ebp
     727:	57                   	push   %edi
     728:	56                   	push   %esi
     729:	53                   	push   %ebx
     72a:	83 ec 0c             	sub    $0xc,%esp
     72d:	8b 7d 08             	mov    0x8(%ebp),%edi
     730:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     733:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     735:	39 f3                	cmp    %esi,%ebx
     737:	72 0e                	jb     747 <peek+0x27>
     739:	eb 24                	jmp    75f <peek+0x3f>
     73b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     73f:	90                   	nop
    s++;
     740:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     743:	39 de                	cmp    %ebx,%esi
     745:	74 18                	je     75f <peek+0x3f>
     747:	0f be 03             	movsbl (%ebx),%eax
     74a:	83 ec 08             	sub    $0x8,%esp
     74d:	50                   	push   %eax
     74e:	68 88 1a 00 00       	push   $0x1a88
     753:	e8 c8 05 00 00       	call   d20 <strchr>
     758:	83 c4 10             	add    $0x10,%esp
     75b:	85 c0                	test   %eax,%eax
     75d:	75 e1                	jne    740 <peek+0x20>
  *ps = s;
     75f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     761:	0f be 03             	movsbl (%ebx),%eax
     764:	31 d2                	xor    %edx,%edx
     766:	84 c0                	test   %al,%al
     768:	75 0e                	jne    778 <peek+0x58>
}
     76a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     76d:	89 d0                	mov    %edx,%eax
     76f:	5b                   	pop    %ebx
     770:	5e                   	pop    %esi
     771:	5f                   	pop    %edi
     772:	5d                   	pop    %ebp
     773:	c3                   	ret    
     774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
     778:	83 ec 08             	sub    $0x8,%esp
     77b:	50                   	push   %eax
     77c:	ff 75 10             	pushl  0x10(%ebp)
     77f:	e8 9c 05 00 00       	call   d20 <strchr>
     784:	83 c4 10             	add    $0x10,%esp
     787:	31 d2                	xor    %edx,%edx
     789:	85 c0                	test   %eax,%eax
     78b:	0f 95 c2             	setne  %dl
}
     78e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     791:	5b                   	pop    %ebx
     792:	89 d0                	mov    %edx,%eax
     794:	5e                   	pop    %esi
     795:	5f                   	pop    %edi
     796:	5d                   	pop    %ebp
     797:	c3                   	ret    
     798:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     79f:	90                   	nop

000007a0 <parseredirs>:
  }
  return cmd;
}

struct cmd* parseredirs(struct cmd *cmd, char **ps, char *es)
{
     7a0:	f3 0f 1e fb          	endbr32 
     7a4:	55                   	push   %ebp
     7a5:	89 e5                	mov    %esp,%ebp
     7a7:	57                   	push   %edi
     7a8:	56                   	push   %esi
     7a9:	53                   	push   %ebx
     7aa:	83 ec 1c             	sub    $0x1c,%esp
     7ad:	8b 75 0c             	mov    0xc(%ebp),%esi
     7b0:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     7b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     7b7:	90                   	nop
     7b8:	83 ec 04             	sub    $0x4,%esp
     7bb:	68 cc 13 00 00       	push   $0x13cc
     7c0:	53                   	push   %ebx
     7c1:	56                   	push   %esi
     7c2:	e8 59 ff ff ff       	call   720 <peek>
     7c7:	83 c4 10             	add    $0x10,%esp
     7ca:	85 c0                	test   %eax,%eax
     7cc:	74 6a                	je     838 <parseredirs+0x98>
    tok = gettoken(ps, es, 0, 0);
     7ce:	6a 00                	push   $0x0
     7d0:	6a 00                	push   $0x0
     7d2:	53                   	push   %ebx
     7d3:	56                   	push   %esi
     7d4:	e8 e7 fd ff ff       	call   5c0 <gettoken>
     7d9:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     7db:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     7de:	50                   	push   %eax
     7df:	8d 45 e0             	lea    -0x20(%ebp),%eax
     7e2:	50                   	push   %eax
     7e3:	53                   	push   %ebx
     7e4:	56                   	push   %esi
     7e5:	e8 d6 fd ff ff       	call   5c0 <gettoken>
     7ea:	83 c4 20             	add    $0x20,%esp
     7ed:	83 f8 61             	cmp    $0x61,%eax
     7f0:	75 51                	jne    843 <parseredirs+0xa3>
      panic("missing file for redirection");
    switch(tok){
     7f2:	83 ff 3c             	cmp    $0x3c,%edi
     7f5:	74 31                	je     828 <parseredirs+0x88>
     7f7:	83 ff 3e             	cmp    $0x3e,%edi
     7fa:	74 05                	je     801 <parseredirs+0x61>
     7fc:	83 ff 2b             	cmp    $0x2b,%edi
     7ff:	75 b7                	jne    7b8 <parseredirs+0x18>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     801:	83 ec 0c             	sub    $0xc,%esp
     804:	6a 01                	push   $0x1
     806:	68 01 02 00 00       	push   $0x201
     80b:	ff 75 e4             	pushl  -0x1c(%ebp)
     80e:	ff 75 e0             	pushl  -0x20(%ebp)
     811:	ff 75 08             	pushl  0x8(%ebp)
     814:	e8 97 fc ff ff       	call   4b0 <redircmd>
      break;
     819:	83 c4 20             	add    $0x20,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     81c:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     81f:	eb 97                	jmp    7b8 <parseredirs+0x18>
     821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     828:	83 ec 0c             	sub    $0xc,%esp
     82b:	6a 00                	push   $0x0
     82d:	6a 00                	push   $0x0
     82f:	eb da                	jmp    80b <parseredirs+0x6b>
     831:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  return cmd;
}
     838:	8b 45 08             	mov    0x8(%ebp),%eax
     83b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     83e:	5b                   	pop    %ebx
     83f:	5e                   	pop    %esi
     840:	5f                   	pop    %edi
     841:	5d                   	pop    %ebp
     842:	c3                   	ret    
      panic("missing file for redirection");
     843:	83 ec 0c             	sub    $0xc,%esp
     846:	68 af 13 00 00       	push   $0x13af
     84b:	e8 20 fa ff ff       	call   270 <panic>

00000850 <parseexec>:
  cmd = parseredirs(cmd, ps, es);
  return cmd;
}

struct cmd* parseexec(char **ps, char *es)
{
     850:	f3 0f 1e fb          	endbr32 
     854:	55                   	push   %ebp
     855:	89 e5                	mov    %esp,%ebp
     857:	57                   	push   %edi
     858:	56                   	push   %esi
     859:	53                   	push   %ebx
     85a:	83 ec 30             	sub    $0x30,%esp
     85d:	8b 75 08             	mov    0x8(%ebp),%esi
     860:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     863:	68 cf 13 00 00       	push   $0x13cf
     868:	57                   	push   %edi
     869:	56                   	push   %esi
     86a:	e8 b1 fe ff ff       	call   720 <peek>
     86f:	83 c4 10             	add    $0x10,%esp
     872:	85 c0                	test   %eax,%eax
     874:	0f 85 96 00 00 00    	jne    910 <parseexec+0xc0>
     87a:	89 c3                	mov    %eax,%ebx
    return parseblock(ps, es);

  ret = execcmd();
     87c:	e8 ff fb ff ff       	call   480 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     881:	83 ec 04             	sub    $0x4,%esp
     884:	57                   	push   %edi
     885:	56                   	push   %esi
     886:	50                   	push   %eax
  ret = execcmd();
     887:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = parseredirs(ret, ps, es);
     88a:	e8 11 ff ff ff       	call   7a0 <parseredirs>
  while(!peek(ps, es, "|)&;")){
     88f:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
     892:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     895:	eb 1c                	jmp    8b3 <parseexec+0x63>
     897:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     89e:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     8a0:	83 ec 04             	sub    $0x4,%esp
     8a3:	57                   	push   %edi
     8a4:	56                   	push   %esi
     8a5:	ff 75 d4             	pushl  -0x2c(%ebp)
     8a8:	e8 f3 fe ff ff       	call   7a0 <parseredirs>
     8ad:	83 c4 10             	add    $0x10,%esp
     8b0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     8b3:	83 ec 04             	sub    $0x4,%esp
     8b6:	68 e6 13 00 00       	push   $0x13e6
     8bb:	57                   	push   %edi
     8bc:	56                   	push   %esi
     8bd:	e8 5e fe ff ff       	call   720 <peek>
     8c2:	83 c4 10             	add    $0x10,%esp
     8c5:	85 c0                	test   %eax,%eax
     8c7:	75 67                	jne    930 <parseexec+0xe0>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     8c9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     8cc:	50                   	push   %eax
     8cd:	8d 45 e0             	lea    -0x20(%ebp),%eax
     8d0:	50                   	push   %eax
     8d1:	57                   	push   %edi
     8d2:	56                   	push   %esi
     8d3:	e8 e8 fc ff ff       	call   5c0 <gettoken>
     8d8:	83 c4 10             	add    $0x10,%esp
     8db:	85 c0                	test   %eax,%eax
     8dd:	74 51                	je     930 <parseexec+0xe0>
    if(tok != 'a')
     8df:	83 f8 61             	cmp    $0x61,%eax
     8e2:	75 6b                	jne    94f <parseexec+0xff>
    cmd->argv[argc] = q;
     8e4:	8b 45 e0             	mov    -0x20(%ebp),%eax
     8e7:	8b 55 d0             	mov    -0x30(%ebp),%edx
     8ea:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
    cmd->eargv[argc] = eq;
     8ee:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     8f1:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
    argc++;
     8f5:	83 c3 01             	add    $0x1,%ebx
    if(argc >= MAXARGS)
     8f8:	83 fb 0a             	cmp    $0xa,%ebx
     8fb:	75 a3                	jne    8a0 <parseexec+0x50>
      panic("too many args");
     8fd:	83 ec 0c             	sub    $0xc,%esp
     900:	68 d8 13 00 00       	push   $0x13d8
     905:	e8 66 f9 ff ff       	call   270 <panic>
     90a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     910:	83 ec 08             	sub    $0x8,%esp
     913:	57                   	push   %edi
     914:	56                   	push   %esi
     915:	e8 66 01 00 00       	call   a80 <parseblock>
     91a:	83 c4 10             	add    $0x10,%esp
     91d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     920:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     923:	8d 65 f4             	lea    -0xc(%ebp),%esp
     926:	5b                   	pop    %ebx
     927:	5e                   	pop    %esi
     928:	5f                   	pop    %edi
     929:	5d                   	pop    %ebp
     92a:	c3                   	ret    
     92b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     92f:	90                   	nop
  cmd->argv[argc] = 0;
     930:	8b 45 d0             	mov    -0x30(%ebp),%eax
     933:	8d 04 98             	lea    (%eax,%ebx,4),%eax
     936:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     93d:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
}
     944:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     947:	8d 65 f4             	lea    -0xc(%ebp),%esp
     94a:	5b                   	pop    %ebx
     94b:	5e                   	pop    %esi
     94c:	5f                   	pop    %edi
     94d:	5d                   	pop    %ebp
     94e:	c3                   	ret    
      panic("syntax");
     94f:	83 ec 0c             	sub    $0xc,%esp
     952:	68 d1 13 00 00       	push   $0x13d1
     957:	e8 14 f9 ff ff       	call   270 <panic>
     95c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000960 <parsepipe>:
{
     960:	f3 0f 1e fb          	endbr32 
     964:	55                   	push   %ebp
     965:	89 e5                	mov    %esp,%ebp
     967:	57                   	push   %edi
     968:	56                   	push   %esi
     969:	53                   	push   %ebx
     96a:	83 ec 14             	sub    $0x14,%esp
     96d:	8b 75 08             	mov    0x8(%ebp),%esi
     970:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
     973:	57                   	push   %edi
     974:	56                   	push   %esi
     975:	e8 d6 fe ff ff       	call   850 <parseexec>
  if(peek(ps, es, "|")){
     97a:	83 c4 0c             	add    $0xc,%esp
     97d:	68 eb 13 00 00       	push   $0x13eb
  cmd = parseexec(ps, es);
     982:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
     984:	57                   	push   %edi
     985:	56                   	push   %esi
     986:	e8 95 fd ff ff       	call   720 <peek>
     98b:	83 c4 10             	add    $0x10,%esp
     98e:	85 c0                	test   %eax,%eax
     990:	75 0e                	jne    9a0 <parsepipe+0x40>
}
     992:	8d 65 f4             	lea    -0xc(%ebp),%esp
     995:	89 d8                	mov    %ebx,%eax
     997:	5b                   	pop    %ebx
     998:	5e                   	pop    %esi
     999:	5f                   	pop    %edi
     99a:	5d                   	pop    %ebp
     99b:	c3                   	ret    
     99c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    gettoken(ps, es, 0, 0);
     9a0:	6a 00                	push   $0x0
     9a2:	6a 00                	push   $0x0
     9a4:	57                   	push   %edi
     9a5:	56                   	push   %esi
     9a6:	e8 15 fc ff ff       	call   5c0 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     9ab:	58                   	pop    %eax
     9ac:	5a                   	pop    %edx
     9ad:	57                   	push   %edi
     9ae:	56                   	push   %esi
     9af:	e8 ac ff ff ff       	call   960 <parsepipe>
     9b4:	89 5d 08             	mov    %ebx,0x8(%ebp)
     9b7:	83 c4 10             	add    $0x10,%esp
     9ba:	89 45 0c             	mov    %eax,0xc(%ebp)
}
     9bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9c0:	5b                   	pop    %ebx
     9c1:	5e                   	pop    %esi
     9c2:	5f                   	pop    %edi
     9c3:	5d                   	pop    %ebp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     9c4:	e9 37 fb ff ff       	jmp    500 <pipecmd>
     9c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000009d0 <parseline>:
{
     9d0:	f3 0f 1e fb          	endbr32 
     9d4:	55                   	push   %ebp
     9d5:	89 e5                	mov    %esp,%ebp
     9d7:	57                   	push   %edi
     9d8:	56                   	push   %esi
     9d9:	53                   	push   %ebx
     9da:	83 ec 14             	sub    $0x14,%esp
     9dd:	8b 75 08             	mov    0x8(%ebp),%esi
     9e0:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
     9e3:	57                   	push   %edi
     9e4:	56                   	push   %esi
     9e5:	e8 76 ff ff ff       	call   960 <parsepipe>
  while(peek(ps, es, "&")){
     9ea:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     9ed:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     9ef:	eb 1f                	jmp    a10 <parseline+0x40>
     9f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    gettoken(ps, es, 0, 0);
     9f8:	6a 00                	push   $0x0
     9fa:	6a 00                	push   $0x0
     9fc:	57                   	push   %edi
     9fd:	56                   	push   %esi
     9fe:	e8 bd fb ff ff       	call   5c0 <gettoken>
    cmd = backcmd(cmd);
     a03:	89 1c 24             	mov    %ebx,(%esp)
     a06:	e8 75 fb ff ff       	call   580 <backcmd>
     a0b:	83 c4 10             	add    $0x10,%esp
     a0e:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     a10:	83 ec 04             	sub    $0x4,%esp
     a13:	68 ed 13 00 00       	push   $0x13ed
     a18:	57                   	push   %edi
     a19:	56                   	push   %esi
     a1a:	e8 01 fd ff ff       	call   720 <peek>
     a1f:	83 c4 10             	add    $0x10,%esp
     a22:	85 c0                	test   %eax,%eax
     a24:	75 d2                	jne    9f8 <parseline+0x28>
  if(peek(ps, es, ";")){
     a26:	83 ec 04             	sub    $0x4,%esp
     a29:	68 e9 13 00 00       	push   $0x13e9
     a2e:	57                   	push   %edi
     a2f:	56                   	push   %esi
     a30:	e8 eb fc ff ff       	call   720 <peek>
     a35:	83 c4 10             	add    $0x10,%esp
     a38:	85 c0                	test   %eax,%eax
     a3a:	75 14                	jne    a50 <parseline+0x80>
}
     a3c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a3f:	89 d8                	mov    %ebx,%eax
     a41:	5b                   	pop    %ebx
     a42:	5e                   	pop    %esi
     a43:	5f                   	pop    %edi
     a44:	5d                   	pop    %ebp
     a45:	c3                   	ret    
     a46:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a4d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     a50:	6a 00                	push   $0x0
     a52:	6a 00                	push   $0x0
     a54:	57                   	push   %edi
     a55:	56                   	push   %esi
     a56:	e8 65 fb ff ff       	call   5c0 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     a5b:	58                   	pop    %eax
     a5c:	5a                   	pop    %edx
     a5d:	57                   	push   %edi
     a5e:	56                   	push   %esi
     a5f:	e8 6c ff ff ff       	call   9d0 <parseline>
     a64:	89 5d 08             	mov    %ebx,0x8(%ebp)
     a67:	83 c4 10             	add    $0x10,%esp
     a6a:	89 45 0c             	mov    %eax,0xc(%ebp)
}
     a6d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a70:	5b                   	pop    %ebx
     a71:	5e                   	pop    %esi
     a72:	5f                   	pop    %edi
     a73:	5d                   	pop    %ebp
    cmd = listcmd(cmd, parseline(ps, es));
     a74:	e9 c7 fa ff ff       	jmp    540 <listcmd>
     a79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000a80 <parseblock>:
{
     a80:	f3 0f 1e fb          	endbr32 
     a84:	55                   	push   %ebp
     a85:	89 e5                	mov    %esp,%ebp
     a87:	57                   	push   %edi
     a88:	56                   	push   %esi
     a89:	53                   	push   %ebx
     a8a:	83 ec 10             	sub    $0x10,%esp
     a8d:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a90:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     a93:	68 cf 13 00 00       	push   $0x13cf
     a98:	56                   	push   %esi
     a99:	53                   	push   %ebx
     a9a:	e8 81 fc ff ff       	call   720 <peek>
     a9f:	83 c4 10             	add    $0x10,%esp
     aa2:	85 c0                	test   %eax,%eax
     aa4:	74 4a                	je     af0 <parseblock+0x70>
  gettoken(ps, es, 0, 0);
     aa6:	6a 00                	push   $0x0
     aa8:	6a 00                	push   $0x0
     aaa:	56                   	push   %esi
     aab:	53                   	push   %ebx
     aac:	e8 0f fb ff ff       	call   5c0 <gettoken>
  cmd = parseline(ps, es);
     ab1:	58                   	pop    %eax
     ab2:	5a                   	pop    %edx
     ab3:	56                   	push   %esi
     ab4:	53                   	push   %ebx
     ab5:	e8 16 ff ff ff       	call   9d0 <parseline>
  if(!peek(ps, es, ")"))
     aba:	83 c4 0c             	add    $0xc,%esp
     abd:	68 0b 14 00 00       	push   $0x140b
  cmd = parseline(ps, es);
     ac2:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     ac4:	56                   	push   %esi
     ac5:	53                   	push   %ebx
     ac6:	e8 55 fc ff ff       	call   720 <peek>
     acb:	83 c4 10             	add    $0x10,%esp
     ace:	85 c0                	test   %eax,%eax
     ad0:	74 2b                	je     afd <parseblock+0x7d>
  gettoken(ps, es, 0, 0);
     ad2:	6a 00                	push   $0x0
     ad4:	6a 00                	push   $0x0
     ad6:	56                   	push   %esi
     ad7:	53                   	push   %ebx
     ad8:	e8 e3 fa ff ff       	call   5c0 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     add:	83 c4 0c             	add    $0xc,%esp
     ae0:	56                   	push   %esi
     ae1:	53                   	push   %ebx
     ae2:	57                   	push   %edi
     ae3:	e8 b8 fc ff ff       	call   7a0 <parseredirs>
}
     ae8:	8d 65 f4             	lea    -0xc(%ebp),%esp
     aeb:	5b                   	pop    %ebx
     aec:	5e                   	pop    %esi
     aed:	5f                   	pop    %edi
     aee:	5d                   	pop    %ebp
     aef:	c3                   	ret    
    panic("parseblock");
     af0:	83 ec 0c             	sub    $0xc,%esp
     af3:	68 ef 13 00 00       	push   $0x13ef
     af8:	e8 73 f7 ff ff       	call   270 <panic>
    panic("syntax - missing )");
     afd:	83 ec 0c             	sub    $0xc,%esp
     b00:	68 fa 13 00 00       	push   $0x13fa
     b05:	e8 66 f7 ff ff       	call   270 <panic>
     b0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000b10 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd* nulterminate(struct cmd *cmd)
{
     b10:	f3 0f 1e fb          	endbr32 
     b14:	55                   	push   %ebp
     b15:	89 e5                	mov    %esp,%ebp
     b17:	53                   	push   %ebx
     b18:	83 ec 04             	sub    $0x4,%esp
     b1b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     b1e:	85 db                	test   %ebx,%ebx
     b20:	0f 84 9a 00 00 00    	je     bc0 <nulterminate+0xb0>
    return 0;

  switch(cmd->type){
     b26:	83 3b 05             	cmpl   $0x5,(%ebx)
     b29:	77 6d                	ja     b98 <nulterminate+0x88>
     b2b:	8b 03                	mov    (%ebx),%eax
     b2d:	3e ff 24 85 5c 14 00 	notrack jmp *0x145c(,%eax,4)
     b34:	00 
     b35:	8d 76 00             	lea    0x0(%esi),%esi
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     b38:	83 ec 0c             	sub    $0xc,%esp
     b3b:	ff 73 04             	pushl  0x4(%ebx)
     b3e:	e8 cd ff ff ff       	call   b10 <nulterminate>
    nulterminate(lcmd->right);
     b43:	58                   	pop    %eax
     b44:	ff 73 08             	pushl  0x8(%ebx)
     b47:	e8 c4 ff ff ff       	call   b10 <nulterminate>
    break;
     b4c:	83 c4 10             	add    $0x10,%esp
     b4f:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     b51:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b54:	c9                   	leave  
     b55:	c3                   	ret    
     b56:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b5d:	8d 76 00             	lea    0x0(%esi),%esi
    nulterminate(bcmd->cmd);
     b60:	83 ec 0c             	sub    $0xc,%esp
     b63:	ff 73 04             	pushl  0x4(%ebx)
     b66:	e8 a5 ff ff ff       	call   b10 <nulterminate>
    break;
     b6b:	89 d8                	mov    %ebx,%eax
     b6d:	83 c4 10             	add    $0x10,%esp
}
     b70:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b73:	c9                   	leave  
     b74:	c3                   	ret    
     b75:	8d 76 00             	lea    0x0(%esi),%esi
    for(i=0; ecmd->argv[i]; i++)
     b78:	8b 4b 04             	mov    0x4(%ebx),%ecx
     b7b:	8d 43 08             	lea    0x8(%ebx),%eax
     b7e:	85 c9                	test   %ecx,%ecx
     b80:	74 16                	je     b98 <nulterminate+0x88>
     b82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     b88:	8b 50 24             	mov    0x24(%eax),%edx
     b8b:	83 c0 04             	add    $0x4,%eax
     b8e:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     b91:	8b 50 fc             	mov    -0x4(%eax),%edx
     b94:	85 d2                	test   %edx,%edx
     b96:	75 f0                	jne    b88 <nulterminate+0x78>
  switch(cmd->type){
     b98:	89 d8                	mov    %ebx,%eax
}
     b9a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b9d:	c9                   	leave  
     b9e:	c3                   	ret    
     b9f:	90                   	nop
    nulterminate(rcmd->cmd);
     ba0:	83 ec 0c             	sub    $0xc,%esp
     ba3:	ff 73 04             	pushl  0x4(%ebx)
     ba6:	e8 65 ff ff ff       	call   b10 <nulterminate>
    *rcmd->efile = 0;
     bab:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     bae:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     bb1:	c6 00 00             	movb   $0x0,(%eax)
    break;
     bb4:	89 d8                	mov    %ebx,%eax
}
     bb6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     bb9:	c9                   	leave  
     bba:	c3                   	ret    
     bbb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     bbf:	90                   	nop
    return 0;
     bc0:	31 c0                	xor    %eax,%eax
     bc2:	eb 8d                	jmp    b51 <nulterminate+0x41>
     bc4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bcb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     bcf:	90                   	nop

00000bd0 <parsecmd>:
{
     bd0:	f3 0f 1e fb          	endbr32 
     bd4:	55                   	push   %ebp
     bd5:	89 e5                	mov    %esp,%ebp
     bd7:	56                   	push   %esi
     bd8:	53                   	push   %ebx
  es = s + strlen(s);
     bd9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     bdc:	83 ec 0c             	sub    $0xc,%esp
     bdf:	53                   	push   %ebx
     be0:	e8 db 00 00 00       	call   cc0 <strlen>
  cmd = parseline(&s, es);
     be5:	59                   	pop    %ecx
     be6:	5e                   	pop    %esi
  es = s + strlen(s);
     be7:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     be9:	8d 45 08             	lea    0x8(%ebp),%eax
     bec:	53                   	push   %ebx
     bed:	50                   	push   %eax
     bee:	e8 dd fd ff ff       	call   9d0 <parseline>
  peek(&s, es, "");
     bf3:	83 c4 0c             	add    $0xc,%esp
  cmd = parseline(&s, es);
     bf6:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     bf8:	8d 45 08             	lea    0x8(%ebp),%eax
     bfb:	68 94 13 00 00       	push   $0x1394
     c00:	53                   	push   %ebx
     c01:	50                   	push   %eax
     c02:	e8 19 fb ff ff       	call   720 <peek>
  if(s != es){
     c07:	8b 45 08             	mov    0x8(%ebp),%eax
     c0a:	83 c4 10             	add    $0x10,%esp
     c0d:	39 d8                	cmp    %ebx,%eax
     c0f:	75 12                	jne    c23 <parsecmd+0x53>
  nulterminate(cmd);
     c11:	83 ec 0c             	sub    $0xc,%esp
     c14:	56                   	push   %esi
     c15:	e8 f6 fe ff ff       	call   b10 <nulterminate>
}
     c1a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     c1d:	89 f0                	mov    %esi,%eax
     c1f:	5b                   	pop    %ebx
     c20:	5e                   	pop    %esi
     c21:	5d                   	pop    %ebp
     c22:	c3                   	ret    
    printf(2, "leftovers: %s\n", s);
     c23:	52                   	push   %edx
     c24:	50                   	push   %eax
     c25:	68 0d 14 00 00       	push   $0x140d
     c2a:	6a 02                	push   $0x2
     c2c:	e8 df 03 00 00       	call   1010 <printf>
    panic("syntax");
     c31:	c7 04 24 d1 13 00 00 	movl   $0x13d1,(%esp)
     c38:	e8 33 f6 ff ff       	call   270 <panic>
     c3d:	66 90                	xchg   %ax,%ax
     c3f:	90                   	nop

00000c40 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     c40:	f3 0f 1e fb          	endbr32 
     c44:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     c45:	31 c0                	xor    %eax,%eax
{
     c47:	89 e5                	mov    %esp,%ebp
     c49:	53                   	push   %ebx
     c4a:	8b 4d 08             	mov    0x8(%ebp),%ecx
     c4d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
     c50:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     c54:	88 14 01             	mov    %dl,(%ecx,%eax,1)
     c57:	83 c0 01             	add    $0x1,%eax
     c5a:	84 d2                	test   %dl,%dl
     c5c:	75 f2                	jne    c50 <strcpy+0x10>
    ;
  return os;
}
     c5e:	89 c8                	mov    %ecx,%eax
     c60:	5b                   	pop    %ebx
     c61:	5d                   	pop    %ebp
     c62:	c3                   	ret    
     c63:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000c70 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     c70:	f3 0f 1e fb          	endbr32 
     c74:	55                   	push   %ebp
     c75:	89 e5                	mov    %esp,%ebp
     c77:	53                   	push   %ebx
     c78:	8b 4d 08             	mov    0x8(%ebp),%ecx
     c7b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
     c7e:	0f b6 01             	movzbl (%ecx),%eax
     c81:	0f b6 1a             	movzbl (%edx),%ebx
     c84:	84 c0                	test   %al,%al
     c86:	75 19                	jne    ca1 <strcmp+0x31>
     c88:	eb 26                	jmp    cb0 <strcmp+0x40>
     c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c90:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
     c94:	83 c1 01             	add    $0x1,%ecx
     c97:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     c9a:	0f b6 1a             	movzbl (%edx),%ebx
     c9d:	84 c0                	test   %al,%al
     c9f:	74 0f                	je     cb0 <strcmp+0x40>
     ca1:	38 d8                	cmp    %bl,%al
     ca3:	74 eb                	je     c90 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     ca5:	29 d8                	sub    %ebx,%eax
}
     ca7:	5b                   	pop    %ebx
     ca8:	5d                   	pop    %ebp
     ca9:	c3                   	ret    
     caa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     cb0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     cb2:	29 d8                	sub    %ebx,%eax
}
     cb4:	5b                   	pop    %ebx
     cb5:	5d                   	pop    %ebp
     cb6:	c3                   	ret    
     cb7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cbe:	66 90                	xchg   %ax,%ax

00000cc0 <strlen>:

uint
strlen(const char *s)
{
     cc0:	f3 0f 1e fb          	endbr32 
     cc4:	55                   	push   %ebp
     cc5:	89 e5                	mov    %esp,%ebp
     cc7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     cca:	80 3a 00             	cmpb   $0x0,(%edx)
     ccd:	74 21                	je     cf0 <strlen+0x30>
     ccf:	31 c0                	xor    %eax,%eax
     cd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cd8:	83 c0 01             	add    $0x1,%eax
     cdb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     cdf:	89 c1                	mov    %eax,%ecx
     ce1:	75 f5                	jne    cd8 <strlen+0x18>
    ;
  return n;
}
     ce3:	89 c8                	mov    %ecx,%eax
     ce5:	5d                   	pop    %ebp
     ce6:	c3                   	ret    
     ce7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cee:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
     cf0:	31 c9                	xor    %ecx,%ecx
}
     cf2:	5d                   	pop    %ebp
     cf3:	89 c8                	mov    %ecx,%eax
     cf5:	c3                   	ret    
     cf6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cfd:	8d 76 00             	lea    0x0(%esi),%esi

00000d00 <memset>:

void*
memset(void *dst, int c, uint n)
{
     d00:	f3 0f 1e fb          	endbr32 
     d04:	55                   	push   %ebp
     d05:	89 e5                	mov    %esp,%ebp
     d07:	57                   	push   %edi
     d08:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     d0b:	8b 4d 10             	mov    0x10(%ebp),%ecx
     d0e:	8b 45 0c             	mov    0xc(%ebp),%eax
     d11:	89 d7                	mov    %edx,%edi
     d13:	fc                   	cld    
     d14:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     d16:	89 d0                	mov    %edx,%eax
     d18:	5f                   	pop    %edi
     d19:	5d                   	pop    %ebp
     d1a:	c3                   	ret    
     d1b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d1f:	90                   	nop

00000d20 <strchr>:

char*
strchr(const char *s, char c)
{
     d20:	f3 0f 1e fb          	endbr32 
     d24:	55                   	push   %ebp
     d25:	89 e5                	mov    %esp,%ebp
     d27:	8b 45 08             	mov    0x8(%ebp),%eax
     d2a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     d2e:	0f b6 10             	movzbl (%eax),%edx
     d31:	84 d2                	test   %dl,%dl
     d33:	75 16                	jne    d4b <strchr+0x2b>
     d35:	eb 21                	jmp    d58 <strchr+0x38>
     d37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d3e:	66 90                	xchg   %ax,%ax
     d40:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     d44:	83 c0 01             	add    $0x1,%eax
     d47:	84 d2                	test   %dl,%dl
     d49:	74 0d                	je     d58 <strchr+0x38>
    if(*s == c)
     d4b:	38 d1                	cmp    %dl,%cl
     d4d:	75 f1                	jne    d40 <strchr+0x20>
      return (char*)s;
  return 0;
}
     d4f:	5d                   	pop    %ebp
     d50:	c3                   	ret    
     d51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     d58:	31 c0                	xor    %eax,%eax
}
     d5a:	5d                   	pop    %ebp
     d5b:	c3                   	ret    
     d5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000d60 <gets>:

char*
gets(char *buf, int max)
{
     d60:	f3 0f 1e fb          	endbr32 
     d64:	55                   	push   %ebp
     d65:	89 e5                	mov    %esp,%ebp
     d67:	57                   	push   %edi
     d68:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d69:	31 f6                	xor    %esi,%esi
{
     d6b:	53                   	push   %ebx
     d6c:	89 f3                	mov    %esi,%ebx
     d6e:	83 ec 1c             	sub    $0x1c,%esp
     d71:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
     d74:	eb 33                	jmp    da9 <gets+0x49>
     d76:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d7d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
     d80:	83 ec 04             	sub    $0x4,%esp
     d83:	8d 45 e7             	lea    -0x19(%ebp),%eax
     d86:	6a 01                	push   $0x1
     d88:	50                   	push   %eax
     d89:	6a 00                	push   $0x0
     d8b:	e8 2b 01 00 00       	call   ebb <read>
    if(cc < 1)
     d90:	83 c4 10             	add    $0x10,%esp
     d93:	85 c0                	test   %eax,%eax
     d95:	7e 1c                	jle    db3 <gets+0x53>
      break;
    buf[i++] = c;
     d97:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     d9b:	83 c7 01             	add    $0x1,%edi
     d9e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
     da1:	3c 0a                	cmp    $0xa,%al
     da3:	74 23                	je     dc8 <gets+0x68>
     da5:	3c 0d                	cmp    $0xd,%al
     da7:	74 1f                	je     dc8 <gets+0x68>
  for(i=0; i+1 < max; ){
     da9:	83 c3 01             	add    $0x1,%ebx
     dac:	89 fe                	mov    %edi,%esi
     dae:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     db1:	7c cd                	jl     d80 <gets+0x20>
     db3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
     db5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
     db8:	c6 03 00             	movb   $0x0,(%ebx)
}
     dbb:	8d 65 f4             	lea    -0xc(%ebp),%esp
     dbe:	5b                   	pop    %ebx
     dbf:	5e                   	pop    %esi
     dc0:	5f                   	pop    %edi
     dc1:	5d                   	pop    %ebp
     dc2:	c3                   	ret    
     dc3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     dc7:	90                   	nop
     dc8:	8b 75 08             	mov    0x8(%ebp),%esi
     dcb:	8b 45 08             	mov    0x8(%ebp),%eax
     dce:	01 de                	add    %ebx,%esi
     dd0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
     dd2:	c6 03 00             	movb   $0x0,(%ebx)
}
     dd5:	8d 65 f4             	lea    -0xc(%ebp),%esp
     dd8:	5b                   	pop    %ebx
     dd9:	5e                   	pop    %esi
     dda:	5f                   	pop    %edi
     ddb:	5d                   	pop    %ebp
     ddc:	c3                   	ret    
     ddd:	8d 76 00             	lea    0x0(%esi),%esi

00000de0 <stat>:

int
stat(const char *n, struct stat *st)
{
     de0:	f3 0f 1e fb          	endbr32 
     de4:	55                   	push   %ebp
     de5:	89 e5                	mov    %esp,%ebp
     de7:	56                   	push   %esi
     de8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     de9:	83 ec 08             	sub    $0x8,%esp
     dec:	6a 00                	push   $0x0
     dee:	ff 75 08             	pushl  0x8(%ebp)
     df1:	e8 ed 00 00 00       	call   ee3 <open>
  if(fd < 0)
     df6:	83 c4 10             	add    $0x10,%esp
     df9:	85 c0                	test   %eax,%eax
     dfb:	78 2b                	js     e28 <stat+0x48>
    return -1;
  r = fstat(fd, st);
     dfd:	83 ec 08             	sub    $0x8,%esp
     e00:	ff 75 0c             	pushl  0xc(%ebp)
     e03:	89 c3                	mov    %eax,%ebx
     e05:	50                   	push   %eax
     e06:	e8 f0 00 00 00       	call   efb <fstat>
  close(fd);
     e0b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     e0e:	89 c6                	mov    %eax,%esi
  close(fd);
     e10:	e8 b6 00 00 00       	call   ecb <close>
  return r;
     e15:	83 c4 10             	add    $0x10,%esp
}
     e18:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e1b:	89 f0                	mov    %esi,%eax
     e1d:	5b                   	pop    %ebx
     e1e:	5e                   	pop    %esi
     e1f:	5d                   	pop    %ebp
     e20:	c3                   	ret    
     e21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
     e28:	be ff ff ff ff       	mov    $0xffffffff,%esi
     e2d:	eb e9                	jmp    e18 <stat+0x38>
     e2f:	90                   	nop

00000e30 <atoi>:

int
atoi(const char *s)
{
     e30:	f3 0f 1e fb          	endbr32 
     e34:	55                   	push   %ebp
     e35:	89 e5                	mov    %esp,%ebp
     e37:	53                   	push   %ebx
     e38:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     e3b:	0f be 02             	movsbl (%edx),%eax
     e3e:	8d 48 d0             	lea    -0x30(%eax),%ecx
     e41:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
     e44:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
     e49:	77 1a                	ja     e65 <atoi+0x35>
     e4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e4f:	90                   	nop
    n = n*10 + *s++ - '0';
     e50:	83 c2 01             	add    $0x1,%edx
     e53:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
     e56:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
     e5a:	0f be 02             	movsbl (%edx),%eax
     e5d:	8d 58 d0             	lea    -0x30(%eax),%ebx
     e60:	80 fb 09             	cmp    $0x9,%bl
     e63:	76 eb                	jbe    e50 <atoi+0x20>
  return n;
}
     e65:	89 c8                	mov    %ecx,%eax
     e67:	5b                   	pop    %ebx
     e68:	5d                   	pop    %ebp
     e69:	c3                   	ret    
     e6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000e70 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     e70:	f3 0f 1e fb          	endbr32 
     e74:	55                   	push   %ebp
     e75:	89 e5                	mov    %esp,%ebp
     e77:	57                   	push   %edi
     e78:	8b 45 10             	mov    0x10(%ebp),%eax
     e7b:	8b 55 08             	mov    0x8(%ebp),%edx
     e7e:	56                   	push   %esi
     e7f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e82:	85 c0                	test   %eax,%eax
     e84:	7e 0f                	jle    e95 <memmove+0x25>
     e86:	01 d0                	add    %edx,%eax
  dst = vdst;
     e88:	89 d7                	mov    %edx,%edi
     e8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
     e90:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     e91:	39 f8                	cmp    %edi,%eax
     e93:	75 fb                	jne    e90 <memmove+0x20>
  return vdst;
}
     e95:	5e                   	pop    %esi
     e96:	89 d0                	mov    %edx,%eax
     e98:	5f                   	pop    %edi
     e99:	5d                   	pop    %ebp
     e9a:	c3                   	ret    

00000e9b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     e9b:	b8 01 00 00 00       	mov    $0x1,%eax
     ea0:	cd 40                	int    $0x40
     ea2:	c3                   	ret    

00000ea3 <exit>:
SYSCALL(exit)
     ea3:	b8 02 00 00 00       	mov    $0x2,%eax
     ea8:	cd 40                	int    $0x40
     eaa:	c3                   	ret    

00000eab <wait>:
SYSCALL(wait)
     eab:	b8 03 00 00 00       	mov    $0x3,%eax
     eb0:	cd 40                	int    $0x40
     eb2:	c3                   	ret    

00000eb3 <pipe>:
SYSCALL(pipe)
     eb3:	b8 04 00 00 00       	mov    $0x4,%eax
     eb8:	cd 40                	int    $0x40
     eba:	c3                   	ret    

00000ebb <read>:
SYSCALL(read)
     ebb:	b8 05 00 00 00       	mov    $0x5,%eax
     ec0:	cd 40                	int    $0x40
     ec2:	c3                   	ret    

00000ec3 <write>:
SYSCALL(write)
     ec3:	b8 10 00 00 00       	mov    $0x10,%eax
     ec8:	cd 40                	int    $0x40
     eca:	c3                   	ret    

00000ecb <close>:
SYSCALL(close)
     ecb:	b8 15 00 00 00       	mov    $0x15,%eax
     ed0:	cd 40                	int    $0x40
     ed2:	c3                   	ret    

00000ed3 <kill>:
SYSCALL(kill)
     ed3:	b8 06 00 00 00       	mov    $0x6,%eax
     ed8:	cd 40                	int    $0x40
     eda:	c3                   	ret    

00000edb <exec>:
SYSCALL(exec)
     edb:	b8 07 00 00 00       	mov    $0x7,%eax
     ee0:	cd 40                	int    $0x40
     ee2:	c3                   	ret    

00000ee3 <open>:
SYSCALL(open)
     ee3:	b8 0f 00 00 00       	mov    $0xf,%eax
     ee8:	cd 40                	int    $0x40
     eea:	c3                   	ret    

00000eeb <mknod>:
SYSCALL(mknod)
     eeb:	b8 11 00 00 00       	mov    $0x11,%eax
     ef0:	cd 40                	int    $0x40
     ef2:	c3                   	ret    

00000ef3 <unlink>:
SYSCALL(unlink)
     ef3:	b8 12 00 00 00       	mov    $0x12,%eax
     ef8:	cd 40                	int    $0x40
     efa:	c3                   	ret    

00000efb <fstat>:
SYSCALL(fstat)
     efb:	b8 08 00 00 00       	mov    $0x8,%eax
     f00:	cd 40                	int    $0x40
     f02:	c3                   	ret    

00000f03 <link>:
SYSCALL(link)
     f03:	b8 13 00 00 00       	mov    $0x13,%eax
     f08:	cd 40                	int    $0x40
     f0a:	c3                   	ret    

00000f0b <mkdir>:
SYSCALL(mkdir)
     f0b:	b8 14 00 00 00       	mov    $0x14,%eax
     f10:	cd 40                	int    $0x40
     f12:	c3                   	ret    

00000f13 <chdir>:
SYSCALL(chdir)
     f13:	b8 09 00 00 00       	mov    $0x9,%eax
     f18:	cd 40                	int    $0x40
     f1a:	c3                   	ret    

00000f1b <dup>:
SYSCALL(dup)
     f1b:	b8 0a 00 00 00       	mov    $0xa,%eax
     f20:	cd 40                	int    $0x40
     f22:	c3                   	ret    

00000f23 <getpid>:
SYSCALL(getpid)
     f23:	b8 0b 00 00 00       	mov    $0xb,%eax
     f28:	cd 40                	int    $0x40
     f2a:	c3                   	ret    

00000f2b <sbrk>:
SYSCALL(sbrk)
     f2b:	b8 0c 00 00 00       	mov    $0xc,%eax
     f30:	cd 40                	int    $0x40
     f32:	c3                   	ret    

00000f33 <sleep>:
SYSCALL(sleep)
     f33:	b8 0d 00 00 00       	mov    $0xd,%eax
     f38:	cd 40                	int    $0x40
     f3a:	c3                   	ret    

00000f3b <uptime>:
SYSCALL(uptime)
     f3b:	b8 0e 00 00 00       	mov    $0xe,%eax
     f40:	cd 40                	int    $0x40
     f42:	c3                   	ret    

00000f43 <halt>:
SYSCALL(halt)
     f43:	b8 16 00 00 00       	mov    $0x16,%eax
     f48:	cd 40                	int    $0x40
     f4a:	c3                   	ret    

00000f4b <ps>:
SYSCALL(ps)
     f4b:	b8 17 00 00 00       	mov    $0x17,%eax
     f50:	cd 40                	int    $0x40
     f52:	c3                   	ret    
     f53:	66 90                	xchg   %ax,%ax
     f55:	66 90                	xchg   %ax,%ax
     f57:	66 90                	xchg   %ax,%ax
     f59:	66 90                	xchg   %ax,%ax
     f5b:	66 90                	xchg   %ax,%ax
     f5d:	66 90                	xchg   %ax,%ax
     f5f:	90                   	nop

00000f60 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     f60:	55                   	push   %ebp
     f61:	89 e5                	mov    %esp,%ebp
     f63:	57                   	push   %edi
     f64:	56                   	push   %esi
     f65:	53                   	push   %ebx
     f66:	83 ec 3c             	sub    $0x3c,%esp
     f69:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     f6c:	89 d1                	mov    %edx,%ecx
{
     f6e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
     f71:	85 d2                	test   %edx,%edx
     f73:	0f 89 7f 00 00 00    	jns    ff8 <printint+0x98>
     f79:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     f7d:	74 79                	je     ff8 <printint+0x98>
    neg = 1;
     f7f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
     f86:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
     f88:	31 db                	xor    %ebx,%ebx
     f8a:	8d 75 d7             	lea    -0x29(%ebp),%esi
     f8d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
     f90:	89 c8                	mov    %ecx,%eax
     f92:	31 d2                	xor    %edx,%edx
     f94:	89 cf                	mov    %ecx,%edi
     f96:	f7 75 c4             	divl   -0x3c(%ebp)
     f99:	0f b6 92 a4 14 00 00 	movzbl 0x14a4(%edx),%edx
     fa0:	89 45 c0             	mov    %eax,-0x40(%ebp)
     fa3:	89 d8                	mov    %ebx,%eax
     fa5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
     fa8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
     fab:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
     fae:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
     fb1:	76 dd                	jbe    f90 <printint+0x30>
  if(neg)
     fb3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
     fb6:	85 c9                	test   %ecx,%ecx
     fb8:	74 0c                	je     fc6 <printint+0x66>
    buf[i++] = '-';
     fba:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
     fbf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
     fc1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
     fc6:	8b 7d b8             	mov    -0x48(%ebp),%edi
     fc9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
     fcd:	eb 07                	jmp    fd6 <printint+0x76>
     fcf:	90                   	nop
     fd0:	0f b6 13             	movzbl (%ebx),%edx
     fd3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
     fd6:	83 ec 04             	sub    $0x4,%esp
     fd9:	88 55 d7             	mov    %dl,-0x29(%ebp)
     fdc:	6a 01                	push   $0x1
     fde:	56                   	push   %esi
     fdf:	57                   	push   %edi
     fe0:	e8 de fe ff ff       	call   ec3 <write>
  while(--i >= 0)
     fe5:	83 c4 10             	add    $0x10,%esp
     fe8:	39 de                	cmp    %ebx,%esi
     fea:	75 e4                	jne    fd0 <printint+0x70>
    putc(fd, buf[i]);
}
     fec:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fef:	5b                   	pop    %ebx
     ff0:	5e                   	pop    %esi
     ff1:	5f                   	pop    %edi
     ff2:	5d                   	pop    %ebp
     ff3:	c3                   	ret    
     ff4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     ff8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
     fff:	eb 87                	jmp    f88 <printint+0x28>
    1001:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1008:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    100f:	90                   	nop

00001010 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1010:	f3 0f 1e fb          	endbr32 
    1014:	55                   	push   %ebp
    1015:	89 e5                	mov    %esp,%ebp
    1017:	57                   	push   %edi
    1018:	56                   	push   %esi
    1019:	53                   	push   %ebx
    101a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    101d:	8b 75 0c             	mov    0xc(%ebp),%esi
    1020:	0f b6 1e             	movzbl (%esi),%ebx
    1023:	84 db                	test   %bl,%bl
    1025:	0f 84 b4 00 00 00    	je     10df <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    102b:	8d 45 10             	lea    0x10(%ebp),%eax
    102e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1031:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    1034:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    1036:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1039:	eb 33                	jmp    106e <printf+0x5e>
    103b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    103f:	90                   	nop
    1040:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1043:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1048:	83 f8 25             	cmp    $0x25,%eax
    104b:	74 17                	je     1064 <printf+0x54>
  write(fd, &c, 1);
    104d:	83 ec 04             	sub    $0x4,%esp
    1050:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1053:	6a 01                	push   $0x1
    1055:	57                   	push   %edi
    1056:	ff 75 08             	pushl  0x8(%ebp)
    1059:	e8 65 fe ff ff       	call   ec3 <write>
    105e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    1061:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1064:	0f b6 1e             	movzbl (%esi),%ebx
    1067:	83 c6 01             	add    $0x1,%esi
    106a:	84 db                	test   %bl,%bl
    106c:	74 71                	je     10df <printf+0xcf>
    c = fmt[i] & 0xff;
    106e:	0f be cb             	movsbl %bl,%ecx
    1071:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1074:	85 d2                	test   %edx,%edx
    1076:	74 c8                	je     1040 <printf+0x30>
      }
    } else if(state == '%'){
    1078:	83 fa 25             	cmp    $0x25,%edx
    107b:	75 e7                	jne    1064 <printf+0x54>
      if(c == 'd'){
    107d:	83 f8 64             	cmp    $0x64,%eax
    1080:	0f 84 9a 00 00 00    	je     1120 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1086:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    108c:	83 f9 70             	cmp    $0x70,%ecx
    108f:	74 5f                	je     10f0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1091:	83 f8 73             	cmp    $0x73,%eax
    1094:	0f 84 d6 00 00 00    	je     1170 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    109a:	83 f8 63             	cmp    $0x63,%eax
    109d:	0f 84 8d 00 00 00    	je     1130 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    10a3:	83 f8 25             	cmp    $0x25,%eax
    10a6:	0f 84 b4 00 00 00    	je     1160 <printf+0x150>
  write(fd, &c, 1);
    10ac:	83 ec 04             	sub    $0x4,%esp
    10af:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    10b3:	6a 01                	push   $0x1
    10b5:	57                   	push   %edi
    10b6:	ff 75 08             	pushl  0x8(%ebp)
    10b9:	e8 05 fe ff ff       	call   ec3 <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    10be:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    10c1:	83 c4 0c             	add    $0xc,%esp
    10c4:	6a 01                	push   $0x1
    10c6:	83 c6 01             	add    $0x1,%esi
    10c9:	57                   	push   %edi
    10ca:	ff 75 08             	pushl  0x8(%ebp)
    10cd:	e8 f1 fd ff ff       	call   ec3 <write>
  for(i = 0; fmt[i]; i++){
    10d2:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    10d6:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    10d9:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    10db:	84 db                	test   %bl,%bl
    10dd:	75 8f                	jne    106e <printf+0x5e>
    }
  }
}
    10df:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10e2:	5b                   	pop    %ebx
    10e3:	5e                   	pop    %esi
    10e4:	5f                   	pop    %edi
    10e5:	5d                   	pop    %ebp
    10e6:	c3                   	ret    
    10e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10ee:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    10f0:	83 ec 0c             	sub    $0xc,%esp
    10f3:	b9 10 00 00 00       	mov    $0x10,%ecx
    10f8:	6a 00                	push   $0x0
    10fa:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    10fd:	8b 45 08             	mov    0x8(%ebp),%eax
    1100:	8b 13                	mov    (%ebx),%edx
    1102:	e8 59 fe ff ff       	call   f60 <printint>
        ap++;
    1107:	89 d8                	mov    %ebx,%eax
    1109:	83 c4 10             	add    $0x10,%esp
      state = 0;
    110c:	31 d2                	xor    %edx,%edx
        ap++;
    110e:	83 c0 04             	add    $0x4,%eax
    1111:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1114:	e9 4b ff ff ff       	jmp    1064 <printf+0x54>
    1119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1120:	83 ec 0c             	sub    $0xc,%esp
    1123:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1128:	6a 01                	push   $0x1
    112a:	eb ce                	jmp    10fa <printf+0xea>
    112c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1130:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1133:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1136:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1138:	6a 01                	push   $0x1
        ap++;
    113a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    113d:	57                   	push   %edi
    113e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1141:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1144:	e8 7a fd ff ff       	call   ec3 <write>
        ap++;
    1149:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    114c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    114f:	31 d2                	xor    %edx,%edx
    1151:	e9 0e ff ff ff       	jmp    1064 <printf+0x54>
    1156:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    115d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1160:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1163:	83 ec 04             	sub    $0x4,%esp
    1166:	e9 59 ff ff ff       	jmp    10c4 <printf+0xb4>
    116b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    116f:	90                   	nop
        s = (char*)*ap;
    1170:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1173:	8b 18                	mov    (%eax),%ebx
        ap++;
    1175:	83 c0 04             	add    $0x4,%eax
    1178:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    117b:	85 db                	test   %ebx,%ebx
    117d:	74 17                	je     1196 <printf+0x186>
        while(*s != 0){
    117f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1182:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1184:	84 c0                	test   %al,%al
    1186:	0f 84 d8 fe ff ff    	je     1064 <printf+0x54>
    118c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    118f:	89 de                	mov    %ebx,%esi
    1191:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1194:	eb 1a                	jmp    11b0 <printf+0x1a0>
          s = "(null)";
    1196:	bb 9b 14 00 00       	mov    $0x149b,%ebx
        while(*s != 0){
    119b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    119e:	b8 28 00 00 00       	mov    $0x28,%eax
    11a3:	89 de                	mov    %ebx,%esi
    11a5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    11a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11af:	90                   	nop
  write(fd, &c, 1);
    11b0:	83 ec 04             	sub    $0x4,%esp
          s++;
    11b3:	83 c6 01             	add    $0x1,%esi
    11b6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    11b9:	6a 01                	push   $0x1
    11bb:	57                   	push   %edi
    11bc:	53                   	push   %ebx
    11bd:	e8 01 fd ff ff       	call   ec3 <write>
        while(*s != 0){
    11c2:	0f b6 06             	movzbl (%esi),%eax
    11c5:	83 c4 10             	add    $0x10,%esp
    11c8:	84 c0                	test   %al,%al
    11ca:	75 e4                	jne    11b0 <printf+0x1a0>
    11cc:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    11cf:	31 d2                	xor    %edx,%edx
    11d1:	e9 8e fe ff ff       	jmp    1064 <printf+0x54>
    11d6:	66 90                	xchg   %ax,%ax
    11d8:	66 90                	xchg   %ax,%ax
    11da:	66 90                	xchg   %ax,%ax
    11dc:	66 90                	xchg   %ax,%ax
    11de:	66 90                	xchg   %ax,%ax

000011e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    11e0:	f3 0f 1e fb          	endbr32 
    11e4:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11e5:	a1 04 1b 00 00       	mov    0x1b04,%eax
{
    11ea:	89 e5                	mov    %esp,%ebp
    11ec:	57                   	push   %edi
    11ed:	56                   	push   %esi
    11ee:	53                   	push   %ebx
    11ef:	8b 5d 08             	mov    0x8(%ebp),%ebx
    11f2:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    11f4:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11f7:	39 c8                	cmp    %ecx,%eax
    11f9:	73 15                	jae    1210 <free+0x30>
    11fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11ff:	90                   	nop
    1200:	39 d1                	cmp    %edx,%ecx
    1202:	72 14                	jb     1218 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1204:	39 d0                	cmp    %edx,%eax
    1206:	73 10                	jae    1218 <free+0x38>
{
    1208:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    120a:	8b 10                	mov    (%eax),%edx
    120c:	39 c8                	cmp    %ecx,%eax
    120e:	72 f0                	jb     1200 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1210:	39 d0                	cmp    %edx,%eax
    1212:	72 f4                	jb     1208 <free+0x28>
    1214:	39 d1                	cmp    %edx,%ecx
    1216:	73 f0                	jae    1208 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1218:	8b 73 fc             	mov    -0x4(%ebx),%esi
    121b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    121e:	39 fa                	cmp    %edi,%edx
    1220:	74 1e                	je     1240 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1222:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1225:	8b 50 04             	mov    0x4(%eax),%edx
    1228:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    122b:	39 f1                	cmp    %esi,%ecx
    122d:	74 28                	je     1257 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    122f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1231:	5b                   	pop    %ebx
  freep = p;
    1232:	a3 04 1b 00 00       	mov    %eax,0x1b04
}
    1237:	5e                   	pop    %esi
    1238:	5f                   	pop    %edi
    1239:	5d                   	pop    %ebp
    123a:	c3                   	ret    
    123b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    123f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1240:	03 72 04             	add    0x4(%edx),%esi
    1243:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1246:	8b 10                	mov    (%eax),%edx
    1248:	8b 12                	mov    (%edx),%edx
    124a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    124d:	8b 50 04             	mov    0x4(%eax),%edx
    1250:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1253:	39 f1                	cmp    %esi,%ecx
    1255:	75 d8                	jne    122f <free+0x4f>
    p->s.size += bp->s.size;
    1257:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    125a:	a3 04 1b 00 00       	mov    %eax,0x1b04
    p->s.size += bp->s.size;
    125f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1262:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1265:	89 10                	mov    %edx,(%eax)
}
    1267:	5b                   	pop    %ebx
    1268:	5e                   	pop    %esi
    1269:	5f                   	pop    %edi
    126a:	5d                   	pop    %ebp
    126b:	c3                   	ret    
    126c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001270 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1270:	f3 0f 1e fb          	endbr32 
    1274:	55                   	push   %ebp
    1275:	89 e5                	mov    %esp,%ebp
    1277:	57                   	push   %edi
    1278:	56                   	push   %esi
    1279:	53                   	push   %ebx
    127a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    127d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1280:	8b 3d 04 1b 00 00    	mov    0x1b04,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1286:	8d 70 07             	lea    0x7(%eax),%esi
    1289:	c1 ee 03             	shr    $0x3,%esi
    128c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    128f:	85 ff                	test   %edi,%edi
    1291:	0f 84 a9 00 00 00    	je     1340 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1297:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    1299:	8b 48 04             	mov    0x4(%eax),%ecx
    129c:	39 f1                	cmp    %esi,%ecx
    129e:	73 6d                	jae    130d <malloc+0x9d>
    12a0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    12a6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    12ab:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    12ae:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    12b5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    12b8:	eb 17                	jmp    12d1 <malloc+0x61>
    12ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    12c0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    12c2:	8b 4a 04             	mov    0x4(%edx),%ecx
    12c5:	39 f1                	cmp    %esi,%ecx
    12c7:	73 4f                	jae    1318 <malloc+0xa8>
    12c9:	8b 3d 04 1b 00 00    	mov    0x1b04,%edi
    12cf:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    12d1:	39 c7                	cmp    %eax,%edi
    12d3:	75 eb                	jne    12c0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    12d5:	83 ec 0c             	sub    $0xc,%esp
    12d8:	ff 75 e4             	pushl  -0x1c(%ebp)
    12db:	e8 4b fc ff ff       	call   f2b <sbrk>
  if(p == (char*)-1)
    12e0:	83 c4 10             	add    $0x10,%esp
    12e3:	83 f8 ff             	cmp    $0xffffffff,%eax
    12e6:	74 1b                	je     1303 <malloc+0x93>
  hp->s.size = nu;
    12e8:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    12eb:	83 ec 0c             	sub    $0xc,%esp
    12ee:	83 c0 08             	add    $0x8,%eax
    12f1:	50                   	push   %eax
    12f2:	e8 e9 fe ff ff       	call   11e0 <free>
  return freep;
    12f7:	a1 04 1b 00 00       	mov    0x1b04,%eax
      if((p = morecore(nunits)) == 0)
    12fc:	83 c4 10             	add    $0x10,%esp
    12ff:	85 c0                	test   %eax,%eax
    1301:	75 bd                	jne    12c0 <malloc+0x50>
        return 0;
  }
}
    1303:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1306:	31 c0                	xor    %eax,%eax
}
    1308:	5b                   	pop    %ebx
    1309:	5e                   	pop    %esi
    130a:	5f                   	pop    %edi
    130b:	5d                   	pop    %ebp
    130c:	c3                   	ret    
    if(p->s.size >= nunits){
    130d:	89 c2                	mov    %eax,%edx
    130f:	89 f8                	mov    %edi,%eax
    1311:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1318:	39 ce                	cmp    %ecx,%esi
    131a:	74 54                	je     1370 <malloc+0x100>
        p->s.size -= nunits;
    131c:	29 f1                	sub    %esi,%ecx
    131e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1321:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1324:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1327:	a3 04 1b 00 00       	mov    %eax,0x1b04
}
    132c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    132f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1332:	5b                   	pop    %ebx
    1333:	5e                   	pop    %esi
    1334:	5f                   	pop    %edi
    1335:	5d                   	pop    %ebp
    1336:	c3                   	ret    
    1337:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    133e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1340:	c7 05 04 1b 00 00 08 	movl   $0x1b08,0x1b04
    1347:	1b 00 00 
    base.s.size = 0;
    134a:	bf 08 1b 00 00       	mov    $0x1b08,%edi
    base.s.ptr = freep = prevp = &base;
    134f:	c7 05 08 1b 00 00 08 	movl   $0x1b08,0x1b08
    1356:	1b 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1359:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    135b:	c7 05 0c 1b 00 00 00 	movl   $0x0,0x1b0c
    1362:	00 00 00 
    if(p->s.size >= nunits){
    1365:	e9 36 ff ff ff       	jmp    12a0 <malloc+0x30>
    136a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1370:	8b 0a                	mov    (%edx),%ecx
    1372:	89 08                	mov    %ecx,(%eax)
    1374:	eb b1                	jmp    1327 <malloc+0xb7>
