<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;

use App\Http\Controllers\Controller;



use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
        // $this->middleware('verified');
        // $this->middleware('guest:admin')->except('logout');

    }
// use Auth; 

public function logout( Request $request )
    {
            
    
            auth()->guard()->logout();
          
        
        
            

            // $request->session()->invalidate();
    
            $request->session()->regenerateToken();
           
    
            // if ($response = $this->loggedOut($request)) {
            //     return $response;
            // }
            // return redirect('/');
            // return  redirect()->route('welcome');
            return $request->wantsJson()
                ? new JsonResponse([], 204)
                : redirect()->route('welcome');
        
    
    }
    

}
