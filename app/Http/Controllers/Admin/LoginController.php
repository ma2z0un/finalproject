<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use App\Http\Requests\LoginRequest;
use App\Http\Controllers\Controller;

use App\Providers\RouteServiceProvider;


class LoginController extends Controller
{
 
    public function __construct()
    {
       
        $this->middleware('guest:admin')->except('logout');

    }
    public function getLogin(){
        
        return view('admin.auth.login');
    }

    public function login(LoginRequest $request){
        $validateData=$request->validated();
        // make validation
        $remember=$request->has('remember_me') ? true : false;
        // dd($remember);
        if(auth()->guard('admin')->attempt(['email'=>$request->input('email'),'password'=>$request->input('password')],$remember)){
            return redirect()->route('admin.dashboard');
        }
        return redirect()->back()->with(['error'=>'Email Or Password Invalid ']);

    }
 
    public function logout( Request $request )
    {
        
    
            auth()->guard('admin')->logout();
            // return redirect()->route('admin.login');
            // $request->session()->invalidate();
    
            $request->session()->regenerateToken();
           
    
           
            // return redirect('/');
            // return  redirect()->route('admin.login');
    
            return $request->wantsJson()
                ? new JsonResponse([], 204)
                : redirect()->route('admin.login');
    
        
    
    }

    
}
