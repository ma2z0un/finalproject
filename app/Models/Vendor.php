<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Vendor extends Model
{
    use HasFactory,Notifiable;

    protected $table='vendors';
    protected $fillable = [
        'name', 'mobile','password', 'address', 'email', 'category_id', 'active','logo', 'created_at', 'updated_at'
    ];
    protected $hidden=['category_id','password'];
    // protected $hidden=['category_id','password'];
    public function scopeActive($query){
        return $query->where('active',1);
    }

    public function getLogoAttribute($val){
        return $val!==null ? asset('assets/'.$val) : '';
    }

    public function scopeSelectection($query){
        return $query->select('id','category_id','name','active','logo','mobile','address','email');
    }
    public function category(){
        return $this->belongsTo('App\Models\MainCategory','category_id','id');
    }
    
    public function getActive(){
        return  $this->active==1 ? 'مفعل' :'غير مفعل';
      }

      public function setPasswordAttribute($value){
        if(!empty($value)){
            $this->attributes['password']=bcrypt($value);
        }
      }
}
