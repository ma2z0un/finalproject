<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CheckConnection
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        try {
           
            $connect = DB::connection()->getPdo();
            if ($connect) {
                DB::connection()->getDatabaseName();
               $count= Db::connection()->select('select count(*) from users');
              
            }

            //    dd('ss');
            $params = $request->route()->uri();
            if ($params === "install") {
                return redirect('/');
            } else {
            }
        } catch (\Exception $e) {
            //    dd('fails');
            $params = $request->route()->uri();
            if ($params === "install") {
                // return response('ss');
                // dd('ss');
            } else {

                // $this->redirectTo($request);
                return redirect('/install');
            }
            // return false;
            // die("Could not connect to the database.  Please check your configuration. error:" . $e );
        }
        return $next($request);
    }
}
