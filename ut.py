import sys
import datetime
from dateutil import parser
import time

if len(sys.argv) > 1:
    args = ' '.join(sys.argv[1:])
    if args.isdigit():
        # timestamp mode
        try:
            timestamp = int(sys.argv[1])
            print(datetime.datetime.utcfromtimestamp(
                timestamp).strftime('%d %B %Y %H:%M:%S'))
        except ValueError:
            print("couldn't parse timestamp")
            pass
    else:
        # datetime mode
        try:
            dt = parser.parse(args, fuzzy_with_tokens=True)
            dt = dt[0]
            timestamp = int(dt.strftime('%s'))
            timestamp = timestamp - time.timezone
            print(timestamp)
        except ValueError:
            if args == 'now':
                # timestamp now
                print(datetime.datetime.now().strftime('%s'))
            else:
                print("couldn't parse datetime")
                pass
else:
    # timestamp now
    print(datetime.datetime.now().strftime('%s'))
