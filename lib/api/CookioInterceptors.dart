import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

class CookioInterceptors extends Interceptor{
  var cookieJar = CookieJar();
  // const cookies =
  //     'ngxUid=8204d43684a0b184bbfb79002eb72a80; SESSION=e2c94bbd-6265-4949-a735-11c8408c82cb; Hm_lvt_5e32ff1d6b271e28e56d24dd3ca7e49f=1613918979; Hm_lpvt_5e32ff1d6b271e28e56d24dd3ca7e49f=1613918979; SessionKey=U0VTUzowMDFkNDhlZTAw; sess_data=riByeUgCnCfz6xy0NA84SCCh5_T2jei7dC5u2JUG8WE=; timeSign=V73npOvs6zc5sD6tqMORczQsn0WsSkmwG5ed64DzEl4=';
  // const uri = new Uri.http("https://ptalking.yunshuxie.com", "/v1/ptalking/linkDetail", { "q" : "dart" });
  // cookieJar.saveFromResponse(uri, cookies);
  // return CookieManager(cookieJar);
}