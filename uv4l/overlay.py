import json
import datetime

foo = [{"text_line":datetime.datetime.now().strftime("%x %X")}]

f = open("/tmp/uv4l_overlay.json", "w+")
f.write(json.dumps(foo))
f.close()
