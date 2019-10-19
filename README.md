# code-mania-110: "เป็นมากกว่า Memcached, ktserver"

My code mania 110 demo. <br>
I had a talk at the event named "Code Mania 110: Moving Forward, Open-Source world".
My session is "เป็นมากกว่า Memcached, ktserver".

I would introduce how 'ktserver':
-  could save your life on the memcache problem, data lost.
-  help you improve data scalability performance.

The session was recorded and shared on Youtube as shown below.

<br>

## Video on YouTube

![เป็นมากกว่า Memcached, Ktserver - Code Mania 110](screenshot.png)



URL: https://www.youtube.com/watch?v=tBdeUOeREMA


# Example

## Step 1
Create docker network run `create_network.sh` in each linux box
```
sh create_network.sh
```

## Step 2
Run `master-1` at `server-1` and `master-2` at `server-2`
```
# server-1
cd master-1
sh run-master-1.sh

# server-2
cd master-2
sh run-master-2.sh
```

## Step 3
Run php app at `server-1,2,3,4,...`
```
cd php
# save session to file
sh run-ph.sh

# save session to memcached cluster
sh run-php-share-session.sh
```

## Step 4
Run `slave-1` at `server-3` and `slave-2` at `server-4`
```
# server-3
cd slave-1
sh run-slave-1.sh

# server-4
cd slave-2
sh run-slave-2.sh
```

## Step 5
Run nginx reverse proxy server
```
cd nginx
sh run-proxy.sh
```

# Test and see how it work

## PHP session file
Using `curl` to login and save cookie to file
```
curl -i localhost:8080/login.php?username=demo -c cookies.txt
while true; do clear; curl -i localhost:8080 -b cookies.txt; echo; echo "Ctrl+C to exit"; sleep 2; done
```

## PHP share session
```
# run php with share session at `server-1,2,3,4,...`
# remove and run docker all server
docker rm -f php_app
cd php
sh run-php-share-session.sh
```

Test with `curl` again and see what happen.

Enjoy ktserver!
