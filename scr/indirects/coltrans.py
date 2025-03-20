while True:
    print('HEX colour: ', end='')
    inp = input()
    if inp == '':
        exit()
    if inp[0] == 'q':
        exit()
    as_int = int(inp, 16)
    r_int = int(inp[0:2], 16)
    g_int = int(inp[2:4], 16)
    b_int = int(inp[4:6], 16)
    print('u32: ', end = '')
    print(as_int)
    print('u32 rgb: ', end = '')
    print(str(r_int) + ', ' + str(g_int) + ', ' + str(b_int))
    print('f32 rgb: ', end = '')
    print(str(float(r_int) / 255.0)
            + ', ' + str(float(g_int) / 255.0)
            + ', ' + str(float(b_int) / 255.0))
