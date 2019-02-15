import subprocess
result = subprocess.run(['checkupdates'], stderr=subprocess.DEVNULL, stdout=subprocess.PIPE)
if(result.stdout is not None):
    strres = result.stdout.decode('utf-8')#.encode("ascii", "replace")
    if(len(strres) > 0):
        f = open('.sfiles/pacupd.txt', 'w+')
        f.seek(0)
        f.write(str(strres.count('\n')))
        f.truncate()
        f.close()
    catres = subprocess.run(['cat', '.sfiles/pacupd.txt'], stderr=subprocess.DEVNULL, stdout=subprocess.PIPE)
    if(catres.stdout is not None):
        print(catres.stdout.decode('utf-8'))

