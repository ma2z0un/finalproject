<?php

namespace App\Http\Middleware;


use Closure;
use Illuminate\Http\Request;
// use Illuminate\Support\Facades\DB;
use App\Traits\CheckConnection;
use Illuminate\Support\Facades\DB;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Artisan;


class ChecknewConnection
{
    use CheckConnection;
    // protected $reditectto;
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
       

      
        // $connection = $this->getPDOConnection(env('DB_HOST'), env('DB_PORT'), env('DB_USERNAME'), env('DB_PASSWORD'));

        $connection=$this->checkConnection();
        // dd($connection);
        $route=$request->route()->uri;
       if($connection){
        // dd($connections);
        if ($request->input('token') !== 'my-secret-token') {
         
           // return new Response(view($route));
           $array=['install','installredirect'];
           if(in_array($route,$array)){
            // dd('ss');
               return redirect(RouteServiceProvider::HOME);
           }
         
       }
    }
       else{
        $array=['install','installredirect'];
        if(!in_array($route,$array) ){
        
            return redirect('installredirect');
        }
        // if($route!='install' ){
        
        //     return redirect('installredirect');
        // }
        else{
            // dd('ss');
            // return redirect('installredirect');
        }
       
         
        }
      
        return $next($request);
       
        
       
    }
   
    

    
    
}
