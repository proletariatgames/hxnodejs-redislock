package js.npm.redislock;
#if haxe4
import js.lib.Error;
#else
import js.Error;
#end

@:jsRequire('redislock', 'LockReleaseError') extern class LockReleaseError extends Error {}
