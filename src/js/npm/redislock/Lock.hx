package js.npm.redislock;
#if haxe4
import js.lib.Error;
#else
import js.Error;
#end

extern class Lock {
  /**
    Attempts to acquire a lock, given a key, and an optional callback function. If the initial lock fails, additional
    attempts will be made for the configured number of retries, and padded by the delay. The callback is invoked with an
    error on failure, and returns a promise if no callback is supplied. If invoked in the context of a promise, it may
    throw a LockAcquisitionError.
   **/
  @:overload(function (key:String, cback:Null<Error>->Void):Void {})
  function acquire(key:String):Void;

  /**
    Attempts to release the lock, and accepts an optional callback function. The callback is invoked with an error on
    failure, and returns a promise if no callback is supplied. If invoked in the context of a promise, it may throw a
    LockReleaseError.
   **/
  @:overload(function (cback:Null<Error>->Void):Void {})
  function release():Void;

  /**
    Attempts to extend the timeout of a lock, and accepts an optional callback function. The callback is invoked with an
    error on failure, and returns a promise if no callback is supplied. If invoked in the context of a promise, it may
    throw a LockExtendError.
   **/
  @:overload(function (time:Float, cback:Null<Error>->Void):Void {})
  function extend(time:Float):Void;
}
