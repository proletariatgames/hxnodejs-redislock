package js.npm;
import js.npm.redis.RedisClient;
import js.npm.redislock.Lock;

@:jsRequire('redislock') extern class Redislock {

  /**
    Creates and returns a new Lock instance, configured for use with the supplied redis client, as well as options, if
    provided. The options object may contain following three keys, as outlined at the start of the documentation:
    timeout, retries and delay.
   **/
  @:overload(function (client:RedisClient):Lock {})
  public static function createLock(client:RedisClient, opt:RedislockOptions):Lock;

  /**
    Sets the default options to be used by any new lock created by redislock. Only available options are modified, and
    all other keys are ignored.
   **/
  public static function setDefaults(opt:RedislockOptions):Void;

  /**
    Returns an array of currently active/acquired locks.
   **/
  public static function getAcquiredLocks():Array<Lock>;
}

typedef RedislockOptions = {
  /**
    The maximum time before the lock expires - in ms
   **/
  @:optional var timeout:Float;

  /**
    Maximum tries to acquire the lock before failing
   **/
  @:optional var retries:Int;

  /**
    Time in ms to wait between each attempt
   **/
  @:optional var delay:Float;
}
