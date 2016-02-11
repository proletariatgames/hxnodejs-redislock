# Haxe/hxnodejs externs for the [redislock](https://www.npmjs.com/package/redislock) npm library

Tested using `redislock` version **1.2.0**

Example:
```haxe
import js.npm.Redislock;

var client = js.npm.Redis.createClient();
var lock = RedisLock.acquire(client, {
  timeout: 20000,
  retries: 3,
  delay: 100
});

lock.acquire('app:feature:lock", function(err) {
  // if (err != null) failed to acquire lock
  
  lock.release(function(err) {
    // if (err != null) failed to release lock
  });
}
```
